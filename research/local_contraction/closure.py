#!/usr/bin/env python3
"""Exact, certificate-producing three-color local-contraction test.

Input: m >= 2 rational 3-by-3 matrices B_j, with normals B_j^T g.
Question: does sum_i g_i product_j h_j(i) vanish for every complex g and
every h_j satisfying g^T B_j h_j = 0?

A positive result carries three linear-implication chains, each with at most
three strict span extensions. A negative result carries exact rational g,h
with all local bilinear forms zero and the diagonal contraction nonzero.
Neither result decides the global perfect-matching equations. This research
implementation and its mathematical completeness argument are not Lean proofs.
"""
from dataclasses import dataclass
from fractions import Fraction as Q
from itertools import product
import argparse
import json


ZERO = (Q(0), Q(0), Q(0))
AXES = tuple(tuple(Q(i == j) for i in range(3)) for j in range(3))


def rational(value):
    if not isinstance(value, (int, str, Q)):
        raise TypeError("only exact integers, rational strings and Fractions are accepted")
    return Q(value)


def matrices_exact(matrices):
    matrices = tuple(tuple(tuple(rational(x) for x in row) for row in matrix)
                     for matrix in matrices)
    if len(matrices) < 2 or any(len(b) != 3 or any(len(row) != 3 for row in b)
                               for b in matrices):
        raise ValueError("require m >= 2 matrices, each exactly 3 by 3")
    return matrices


def dot(a, b):
    return sum((x * y for x, y in zip(a, b)), Q(0))


def support(v):
    return frozenset(i for i, x in enumerate(v) if x)


def column(matrix, color):
    return tuple(row[color] for row in matrix)


def normals_at(matrices, g):
    return tuple(tuple(dot(g, column(b, c)) for c in range(3)) for b in matrices)


def span_basis(rows):
    """Canonical rational RREF basis of a row span in Q^3."""
    rows = [list(map(Q, row)) for row in rows if any(row)]
    pivot = 0
    for c in range(3):
        found = next((r for r in range(pivot, len(rows)) if rows[r][c]), None)
        if found is None:
            continue
        rows[pivot], rows[found] = rows[found], rows[pivot]
        scale = rows[pivot][c]
        rows[pivot] = [x / scale for x in rows[pivot]]
        for r in range(len(rows)):
            if r != pivot:
                scale = rows[r][c]
                rows[r] = [x - scale * y for x, y in zip(rows[r], rows[pivot])]
        pivot += 1
        if pivot == len(rows):
            break
    return tuple(tuple(row) for row in rows[:pivot])


def in_span(basis, vector):
    vector = list(map(Q, vector))
    for row in basis:
        pivot = next(i for i, x in enumerate(row) if x)
        scale = vector[pivot]
        vector = [x - scale * y for x, y in zip(vector, row)]
    return not any(vector)


def annihilator_basis(basis):
    basis = span_basis(basis)
    pivots = [next(i for i, x in enumerate(row) if x) for row in basis]
    result = []
    for free in range(3):
        if free in pivots:
            continue
        vector = [Q(i == free) for i in range(3)]
        for pivot, row in zip(pivots, basis):
            vector[pivot] = -row[free]
        result.append(tuple(vector))
    return tuple(result)


def scalar_product(values):
    result = Q(1)
    for value in values:
        result *= value
    return result


def diagonal(g, hs):
    return sum((g[i] * scalar_product(h[i] for h in hs) for i in range(3)), Q(0))


def fixed_death(g, normals):
    """Fixed-g classification, including the exceptional two-active-color case."""
    if len(normals) < 2:
        raise ValueError("the fixed-g classification requires at least two slots")
    active = support(g)
    killed = {next(iter(s)) for n in normals if len(s := support(n)) == 1}
    if active <= killed:
        return True
    if len(active) == 2 and all(support(n) == active for n in normals):
        i, k = sorted(active)
        return (g[i] * scalar_product(n[k] for n in normals)
                + (-1) ** len(normals) * g[k] * scalar_product(n[i] for n in normals)) == 0
    return False


def kernel_coordinate_vector(normal, color):
    return next(v for v in annihilator_basis((normal,)) if v[color])


def kernel_full_support_vector(normal):
    if not any(normal):
        return (Q(1), Q(1), Q(1))
    u, v = annihilator_basis((normal,))
    for t in range(4):
        candidate = tuple(x + t * y for x, y in zip(u, v))
        if all(candidate):
            return candidate
    raise AssertionError("a non-axis normal must admit a full-support kernel vector")


def fixed_witness(g, normals):
    """Construct h in the specified kernels with nonzero diagonal contraction."""
    g = tuple(map(rational, g))
    normals = tuple(tuple(map(rational, n)) for n in normals)
    if fixed_death(g, normals):
        raise ValueError("no witness exists according to the fixed-g classification")
    active = support(g)
    pure = [(j, next(iter(s))) for j, n in enumerate(normals) if len(s := support(n)) == 1]
    killed = {color for _, color in pure}
    if pure:
        i = min(active - killed)
        special = pure[0][0]
        hs = [AXES[i] if j == special else kernel_coordinate_vector(n, i)
              for j, n in enumerate(normals)]
    elif len(active) == 1:
        i = next(iter(active))
        hs = [kernel_coordinate_vector(n, i) for n in normals]
    elif len(active) == 2:
        i, k = sorted(active)
        special = next((j for j, n in enumerate(normals) if support(n) != active), None)
        if special is not None:
            inactive = next(iter(set(range(3)) - active))
            n = normals[special]
            h = list(AXES[i])
            if any(n):
                assert n[inactive], "nonzero, non-axis normal outside the active pair"
                h[inactive] = -n[i] / n[inactive]
            hs = [tuple(h) if j == special else kernel_coordinate_vector(n, i)
                  for j, n in enumerate(normals)]
        else:
            hs = []
            for n in normals:
                h = list(AXES[i])
                h[k] = -n[i] / n[k]
                hs.append(tuple(h))
    else:
        assert len(active) == 3
        tail = [kernel_full_support_vector(n) for n in normals[2:]]
        adjusted = tuple(g[i] * scalar_product(h[i] for h in tail) for i in range(3))
        pair = next((u, v) for u, v in product(annihilator_basis((normals[0],)),
                                             annihilator_basis((normals[1],)))
                    if sum(adjusted[i] * u[i] * v[i] for i in range(3)))
        hs = [*pair, *tail]
    hs = tuple(hs)
    assert len(hs) == len(normals)
    assert all(dot(n, h) == 0 for n, h in zip(normals, hs))
    assert diagonal(g, hs) != 0
    return hs


@dataclass(frozen=True)
class Closure:
    color: int
    basis: tuple
    edges: tuple


def color_closure(matrices, color):
    """Close zero implications: other two columns in L => this column in L."""
    basis, trace = (), []
    changed = True
    while changed:
        changed = False
        for j, matrix in enumerate(matrices):
            cols = tuple(column(matrix, c) for c in range(3))
            if not in_span(basis, cols[color]) and all(in_span(basis, cols[c])
                                                       for c in range(3) if c != color):
                basis = span_basis((*basis, cols[color]))
                trace.append(j)
                changed = True
    assert len(trace) <= 3
    return Closure(color, basis, tuple(trace))


def generic_vector(basis, forms):
    """An exact rational point avoiding every form nonzero on the subspace."""
    forms = [f for f in forms if any(dot(f, v) for v in basis)]
    degree = len(basis) - 1
    for t in range(degree * len(forms) + 1):
        candidate = tuple(sum(t ** k * v[i] for k, v in enumerate(basis)) for i in range(3))
        if all(dot(f, candidate) for f in forms):
            return candidate
    raise AssertionError("the finite-union root bound guarantees an available point")


@dataclass(frozen=True)
class Decision:
    universal: bool
    closures: tuple
    g: tuple = ()
    hs: tuple = ()
    failed_color: int = -1


def check_positive_certificate(matrices, chains):
    """Replay only three span-implication chains; do not run the discovery loop."""
    matrices = matrices_exact(matrices)
    if len(chains) != 3:
        raise ValueError("require one implication chain for each color")
    for color, edges in enumerate(chains):
        if len(edges) > 3:
            raise ValueError("a chain may contain at most three strict extensions")
        basis = ()
        for j in edges:
            if not isinstance(j, int) or not 0 <= j < len(matrices):
                raise ValueError("invalid matrix index")
            cols = tuple(column(matrices[j], c) for c in range(3))
            if not all(in_span(basis, cols[c]) for c in range(3) if c != color):
                raise ValueError("unjustified zero-implication premise")
            if in_span(basis, cols[color]):
                raise ValueError("redundant span extension")
            basis = span_basis((*basis, cols[color]))
        if not in_span(basis, AXES[color]):
            raise ValueError("the chain does not force its own coordinate axis")
    return True


def check_negative_certificate(matrices, g, hs):
    """Verify the explicit counter-contraction without any classification theorem."""
    matrices = matrices_exact(matrices)
    g = tuple(map(rational, g))
    hs = tuple(tuple(map(rational, h)) for h in hs)
    if len(g) != 3 or len(hs) != len(matrices) or any(len(h) != 3 for h in hs):
        raise ValueError("counter-contraction dimensions do not match")
    if any(dot(n, h) for n, h in zip(normals_at(matrices, g), hs)):
        raise ValueError("a required local bilinear form is not zero")
    if diagonal(g, hs) == 0:
        raise ValueError("the diagonal contraction must be nonzero")
    return True


def decide(matrices):
    matrices = matrices_exact(matrices)
    closures = tuple(color_closure(matrices, c) for c in range(3))
    failures = [c for c in closures if not in_span(c.basis, AXES[c.color])]
    if not failures:
        check_positive_certificate(matrices, [c.edges for c in closures])
        return Decision(True, closures)
    # An empty closure gives an immediately full-active counter-contraction.
    # Otherwise every color has a globally single-column seed. Such a seed
    # for an inactive color excludes the exceptional two-color pencil case.
    failed = min(failures, key=lambda c: (bool(c.basis), c.color))
    forms = [*AXES, *(column(b, c) for b in matrices for c in range(3))]
    g = generic_vector(annihilator_basis(failed.basis), forms)
    normals = normals_at(matrices, g)
    assert g[failed.color] != 0
    assert all(support(n) != {failed.color} for n in normals)
    hs = fixed_witness(g, normals)
    check_negative_certificate(matrices, g, hs)
    return Decision(False, closures, g, hs, failed.color)


def json_result(decision):
    result = {"local_universal_death": decision.universal,
              "global_matching_equations_decided": False,
              "lean_formalized": False,
              "closure_chains": [list(c.edges) for c in decision.closures],
              "closure_ranks": [len(c.basis) for c in decision.closures]}
    if not decision.universal:
        result.update(g=list(map(str, decision.g)),
                      h=[list(map(str, h)) for h in decision.hs],
                      diagonal_value=str(diagonal(decision.g, decision.hs)),
                      failed_color=decision.failed_color)
    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("matrices_json", type=argparse.FileType("r"))
    args = parser.parse_args()
    print(json.dumps(json_result(decide(json.load(args.matrices_json))), indent=2))

"""Slow independent universal-death oracle for small exact regression cases.

Enumerate all nonzero flats of the component hyperplane arrangement. On each
flat's open stratum, use polynomial kernel bases and expand every coefficient
of the restricted diagonal tensor. This is exponential in the slot count.
It shares rational linear algebra with closure.py, but does not use its span
closure algorithm, fixed-g classification, or witness construction.
"""
from itertools import combinations, product
from fractions import Fraction as Q
import closure as C


def add(a, b):
    result = dict(a)
    for exponent, coefficient in b.items():
        result[exponent] = result.get(exponent, Q(0)) + coefficient
        if not result[exponent]:
            del result[exponent]
    return result


def scale(a, c):
    return {e: c * v for e, v in a.items()} if c else {}


def multiply(a, b):
    result = {}
    for x, a_x in a.items():
        for y, b_y in b.items():
            e = tuple(i + j for i, j in zip(x, y))
            result[e] = result.get(e, Q(0)) + a_x * b_y
    return {e: v for e, v in result.items() if v}


def linear(coefficients):
    d = len(coefficients)
    return {tuple(int(i == j) for i in range(d)): c
            for j, c in enumerate(coefficients) if c}


def arrangement_flats(matrices):
    forms = [*C.AXES, *(C.column(b, c) for b in matrices for c in range(3))]
    forms = sorted({tuple(x / next(v for v in f if v) for x in f)
                    for f in forms if any(f)})
    flats = {(), *((f,) for f in forms)}
    flats.update(C.span_basis((a, b)) for a, b in combinations(forms, 2))
    return sorted(flats, key=lambda basis: (len(basis), basis))


def polynomial_kernel(normal, dimension):
    one = {(0,) * dimension: Q(1)}
    pivot = next((i for i, entry in enumerate(normal) if entry), None)
    if pivot is None:
        return tuple(tuple(one if i == j else {} for i in range(3)) for j in range(3))
    result = []
    for free in range(3):
        if free == pivot:
            continue
        vector = [{} for _ in range(3)]
        vector[free] = normal[pivot]
        vector[pivot] = scale(normal[free], -1)
        result.append(tuple(vector))
    return tuple(result)


def diagonal_polynomial(root, hs):
    result = {}
    for color in range(3):
        term = root[color]
        for h in hs:
            if not term:
                break
            term = multiply(term, h[color])
        result = add(result, term)
    return result


def universal_death(matrices):
    matrices = C.matrices_exact(matrices)
    for constraints in arrangement_flats(matrices):
        basis = C.annihilator_basis(constraints)
        d = len(basis)
        root = tuple(linear(tuple(v[i] for v in basis)) for i in range(3))
        kernels = []
        for b in matrices:
            normal = tuple(linear(tuple(C.dot(C.column(b, i), v) for v in basis))
                           for i in range(3))
            kernels.append(polynomial_kernel(normal, d))
        for hs in product(*kernels):
            if diagonal_polynomial(root, hs):
                return False
    return True

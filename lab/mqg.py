"""Exact-arithmetic toolkit for monochromatic quantum graphs (Krenn conjecture).

Conventions mirror the Lean formalization (FormalConjectures/Paper/MonochromaticQuantumGraph.lean):
  - vertices: 0..N-1
  - edge key (u, v, i, j) with u < v; weight w[u,v,i,j]; color i at u, color j at v.
    The Lean recursion always creates mkEdge(head, later, i, j) with head earlier in the
    canonical order, so only keys with u < v are ever queried.
  - pmSum(ι) = sum over perfect matchings M of prod_{(u,v) in M} w[u,v,ι_u,ι_v]
  - EqSystemN: pmSum(ι) == (1 if ι constant else 0)
"""
from itertools import combinations
from fractions import Fraction

def perfect_matchings(vertices):
    """All perfect matchings of the vertex set as frozensets of unordered pairs."""
    verts = list(vertices)
    if not verts:
        return [frozenset()]
    if len(verts) % 2 == 1:
        return []
    first, rest = verts[0], verts[1:]
    out = []
    for i in range(len(rest)):
        partner = rest[i]
        remaining = rest[:i] + rest[i+1:]
        for m in perfect_matchings(remaining):
            out.append(frozenset({frozenset((first, partner))}) | m)
    return out

PM_CACHE = {}
def pms(N):
    if N not in PM_CACHE:
        PM_CACHE[N] = perfect_matchings(range(N))
    return PM_CACHE[N]

def ekey(u, v, i, j):
    """Canonical edge key with u < v (matches Lean mkEdge usage in pmSumListAux)."""
    if u < v:
        return (u, v, i, j)
    else:
        return (v, u, j, i)

def pm_sum(W, iota):
    """Exact pmSum for weight dict W and coloring tuple iota (len N)."""
    N = len(iota)
    total = Fraction(0)
    for m in pms(N):
        prod = Fraction(1)
        for e in m:
            u, v = sorted(e)
            prod *= W.get(ekey(u, v, iota[u], iota[v]), Fraction(0))
            if prod == 0:
                break
        total += prod
    return total

def check_eqsystem(W, N, D):
    """Return list of failing iota (empty iff W satisfies EqSystemN N D)."""
    from itertools import product
    bad = []
    for iota in product(range(D), repeat=N):
        target = Fraction(1) if len(set(iota)) == 1 else Fraction(0)
        if pm_sum(W, iota) != target:
            bad.append(iota)
    return bad

# ---------------- contraction identity machinery ----------------

def star_contraction(W, v0, g, hs, N, D):
    """contr({v0,u}) = sum_{i,j} g_i * h_u[j] * w[v0,u,i,j]. Returns dict u -> value."""
    out = {}
    for u in range(N):
        if u == v0:
            continue
        s = Fraction(0)
        for i in range(D):
            gi = g[i]
            if gi == 0:
                continue
            for j in range(D):
                s += gi * hs[u][j] * W.get(ekey(v0, u, i, j), Fraction(0))
        out[u] = s
    return out

def full_contraction(W, vectors, N, D):
    """Sum over matchings of prod of contracted edges, with per-vertex vector vectors[u]."""
    total = Fraction(0)
    for m in pms(N):
        prod = Fraction(1)
        for e in m:
            u, v = sorted(e)
            s = Fraction(0)
            vu, vv = vectors[u], vectors[v]
            for i in range(D):
                if vu[i] == 0:
                    continue
                for j in range(D):
                    s += vu[i] * vv[j] * W.get(ekey(u, v, i, j), Fraction(0))
            prod *= s
        total += prod
    return total

def ghz_permanent(vectors, N, D):
    """sum_c prod_u vectors[u][c]  — contraction of LHS/RHS against test vectors."""
    total = Fraction(0)
    for c in range(D):
        prod = Fraction(1)
        for u in range(N):
            prod *= vectors[u][c]
        total += prod
    return total

def contraction_identity_residual(W, vectors, N, D):
    """| sum_iota prod v_i(ι_i) * pmSum(ι) - full_contraction | should be 0 identically;
       and that quantity equals ghz_permanent when EqSystem holds."""
    from itertools import product
    lhs = Fraction(0)
    for iota in product(range(D), repeat=N):
        coef = Fraction(1)
        for u in range(N):
            coef *= vectors[u][iota[u]]
            if coef == 0:
                break
        if coef != 0:
            lhs += coef * pm_sum(W, iota)
    fc = full_contraction(W, vectors, N, D)
    perm = ghz_permanent(vectors, N, D)
    return lhs - fc, lhs, perm

"""Endgame pipeline: forcing-pattern -> masked exact system -> feasibility attacks.

A *pattern* assigns to each vertex v an ordered triple (u0,u1,u2) of DISTINCT neighbors:
edge {v,u_c(v)} carries only weights with far-endpoint color c (Theorem B necessity).

Mask semantics: entry (edge {p,q}; i at p, j at q) survives unless killed by a forcing
at either endpoint.
"""
import sys, itertools, signal
sys.path.insert(0, '/Users/kishan/mqg/lab')
from fractions import Fraction as F

N, D = 6, 3
VERTS = range(N)
PAIRS = list(itertools.combinations(VERTS, 2))

def neighbors(v):
    return [u for u in VERTS if u != v]

def valid_pattern(pat):
    # pat: dict v -> tuple(u0,u1,u2), distinct, in neighbors(v)
    for v, triple in pat.items():
        if len(set(triple)) != 3:
            return False
        for u in triple:
            if u == v or u not in neighbors(v):
                return False
    return True

def build_mask(pat):
    """allowed[(p,q)] (p<q) = set of (i,j) entries possibly nonzero."""
    allowed = {e: set(itertools.product(range(D), repeat=2)) for e in PAIRS}
    for v, triple in pat.items():
        for c, u in enumerate(triple):
            e = (min(v, u), max(v, u))
            if v < u:
                # v is first endpoint: far color = j -> kill j != c
                allowed[e] = {(i, j) for (i, j) in allowed[e] if j == c}
            else:
                allowed[e] = {(i, j) for (i, j) in allowed[e] if i == c}
    return allowed

def perfect_matchings():
    verts = list(VERTS)

    def rec(rem):
        if not rem:
            yield []
            return
        first, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            partner = rest[k]
            rem2 = rest[:k] + rest[k+1:]
            for m in rec(rem2):
                yield [(first, partner)] + m
    return list(rec(verts))

PMS = perfect_matchings()
assert len(PMS) == 15

def build_system_symbols(allowed):
    """Assign sympy symbols to surviving entries."""
    import sympy as sp
    syms = {}
    for e, s in allowed.items():
        for (i, j) in sorted(s):
            syms[(e, i, j)] = sp.Symbol(f"w{e[0]}{e[1]}_{i}{j}", real=False)
    return syms

def equations_for(syms, allowed):
    """Return list of (iota, poly) for all 3^6 colorings."""
    import sympy as sp
    eqs = []
    for iota in itertools.product(range(D), repeat=N):
        expr = sp.Integer(0)
        ok = True
        for m in PMS:
            prod = sp.Integer(1)
            for (a, b) in m:
                e = (a, b)  # a<b by construction
                key = (e, iota[a], iota[b])
                if key not in syms:
                    ok = False
                    break
                prod *= syms[key]
            if not ok:
                continue
            expr += prod
        target = sp.Integer(1) if len(set(iota)) == 1 else sp.Integer(0)
        if expr != target:
            eqs.append((iota, sp.Eq(expr, target)))
    return eqs

def serving_graphs(pat, allowed=None):
    """G_c = edges able to carry cc-weight of color c."""
    allowed = allowed or build_mask(pat)
    out = {}
    for c in range(D):
        out[c] = [e for e in PAIRS if any((i, j) in allowed[e] for i in (c,) for j in (c,)
                  ) or any(k == c and (k, l) in allowed[e] for k in range(D) for l in range(D))
                  and any((i, j) in allowed[e] and i == c and j == c for (i, j) in [(c, c)])]
        out[c] = [e for e in PAIRS if (c, c) in allowed[e]]
    return out

def has_perfect_matching(edges):
    """Perfect matching on 6 vertices within given edge list."""
    adj = {v: set() for v in VERTS}
    for (a, b) in edges:
        adj[a].add(b)
        adj[b].add(a)

    def rec(avail):
        if not avail:
            return True
        v = min(avail)
        for u in avail:
            if u != v and u in adj[v]:
                if rec(avail - {v, u}):
                    return True
        return False
    return rec(set(VERTS))

def pattern_passes_pm(pat):
    sg = serving_graphs(pat)
    return all(has_perfect_matching(sg[c]) for c in range(D))

if __name__ == '__main__':
    import random
    rnd = random.Random(7)
    # Sample random patterns, apply PM-prune, report stats; then demo masked system size.
    tot = passed = 0
    sizes = {}
    for t in range(3000):
        pat = {}
        for v in VERTS:
            ns = neighbors(v)[:]
            rnd.shuffle(ns)
            pat[v] = tuple(ns[:3])
        assert valid_pattern(pat)
        tot += 1
        if pattern_passes_pm(pat):
            passed += 1
            m = build_mask(pat)
            nv = sum(len(s) for s in m.values())
            sizes[nv] = sizes.get(nv, 0) + 1
    print(f"random patterns: {tot}, passing serving-PM prune: {passed}")
    print("variable-count histogram among passers:", dict(sorted(sizes.items())))

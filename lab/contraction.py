"""Contraction-test engine.

At a vertex v0 with star matrices B_u (u != v0), B_u[i][j] = w[v0,u,i,j]:
  find g != 0 and h_u in ker(B_u^T g) with P(g,h) = sum_c g_c prod_u h_u(c) != 0.
Alive at some vertex => W cannot satisfy EqSystemN (contradiction via test vectors).
Dead at a vertex => the star data B_* "dodges"; classify these configurations.
"""
import sys
sys.path.insert(0, '/Users/kishan/mqg/lab')
from fractions import Fraction as F
from itertools import product as iproduct
from mqg import ekey

def mat_vec(B, g):
    """B^T g  (B[i][j] = w(color i at v0, color j at u)); works for any D."""
    return [sum(B[i][j] * g[i] for i in range(len(B))) for j in range(len(B[0]))]

def kernel_basis(m):
    """Rational basis of {h : <m,h>=0}. m may have any length D>=1.
    Returns None if m == 0 (full space)."""
    if all(x == 0 for x in m):
        return None
    idx = next(i for i, x in enumerate(m) if x != 0)
    basis = []
    for k in range(len(m)):
        if k == idx:
            continue
        v = [F(0)] * len(m)
        v[idx] = -m[k] / m[idx]
        v[k] = F(1)
        basis.append(v)
    return basis

def permanent_with(g, hvecs):
    D = len(g)
    tot = F(0)
    for c in range(D):
        p = g[c]
        for h in hvecs:
            p *= h[c]
        tot += p
    return tot

def alive_for_g(Bs, g, N):
    """Given neighbor matrices Bs (dict u->3x3) and g, decide whether some legal h-tuple has
    nonzero permanent. Exact: multi-affine in each h_u, so evaluate all basis combos.
    Returns (True, witness_h) or (False, None)."""
    Dg = len(g)
    full = {D: [[F(int(k==c)) for c in range(Dg)] for k in range(D)] for D in (2,3,4)}
    planes = {}
    for u, B in Bs.items():
        m = mat_vec(B, g)
        kb = kernel_basis(m)
        if kb is None:
            kb = full[len(B)]
        planes[u] = kb
    us = sorted(planes)
    for combo in iproduct(*[range(len(planes[u])) for u in us]):
        hvecs = {u: planes[u][k] for u, k in zip(us, combo)}
        ordered = [hvecs[u] for u in sorted(hvecs)]
        if permanent_with(g, ordered) != 0:
            return True, {u: hvecs[u] for u in us}
    return False, None

def star_matrices(W, v0, N, D):
    """B_u[i][j] = weight of edge {v0,u} colored (i at v0, j at u)."""
    out = {}
    for u in range(N):
        if u == v0:
            continue
        B = [[W.get(ekey(v0, u, i, j), F(0)) for j in range(D)] for i in range(D)]
        out[u] = B
    return out

def try_kill_vertex(W, v0, N, D, g_list):
    """Try candidate g vectors; return first kill found."""
    Bs = star_matrices(W, v0, N, D)
    for g in g_list:
        ok, wit = alive_for_g(Bs, g, N)
        if ok:
            return g, wit
    return None

def unit_and_random_g(D, trials=40, seed=0):
    import random
    rnd = random.Random(seed)
    gs = []
    for c in range(D):
        g = [F(0)] * D
        g[c] = F(1)
        gs.append(tuple(g))
    gs.append(tuple(F(1) for _ in range(D)))
    gs.append(tuple(F(k + 1) for k in range(D)))
    gs.append(tuple(F(1 if k % 2 == 0 else -2) for k in range(D)))
    for _ in range(trials):
        gs.append(tuple(F(rnd.randint(-6, 6)) for _ in range(D)))
    return [g for g in gs if any(x != 0 for x in g)]

def vertex_status(W, v0, N, D, trials=40, seed=0):
    """Returns 'ALIVE' (with certificate) or 'DEAD(all tried g)'."""
    r = try_kill_vertex(W, v0, N, D, unit_and_random_g(D, trials, seed))
    if r is not None:
        return ('ALIVE', r)
    return ('DEAD', None)

if __name__ == '__main__':
    from mqg import check_eqsystem, pm_sum
    # Build the (4,3) and (6,2) solutions; confirm they are DEAD at every vertex (dodge),
    # and random (6,3) weights are ALIVE almost everywhere.
    W43 = {}
    for (e1, e2), c in zip([((0,1),(2,3)), ((0,2),(1,3)), ((0,3),(1,2))], [0,1,2]):
        for e in (e1, e2):
            a, b = sorted(e)
            W43[ekey(a, b, c, c)] = F(1)
    print("== (4,3) solution ==")
    for v0 in range(4):
        print(v0, vertex_status(W43, v0, 4, 3)[0])

    W62 = {}
    for c, matching in {0: [(0,1),(2,3),(4,5)], 1: [(1,2),(3,4),(5,0)]}.items():
        for a,b in matching:
            W62[ekey(a,b,c,c)] = F(1)
    print("== (6,2) solution ==")
    for v0 in range(6):
        print(v0, vertex_status(W62, v0, 6, 2)[0])

    import random
    rnd = random.Random(7)
    print("== random sparse-ish (6,3) weights ==")
    for t in range(8):
        W = {}
        for u,v in __import__('itertools').combinations(range(6),2):
            for i in range(3):
                for j in range(3):
                    if rnd.random() < 0.35:
                        W[ekey(u,v,i,j)] = F(rnd.randint(-3,3), rnd.randint(1,3))
        stat = [vertex_status(W, v0, 6, 3, trials=10)[0] for v0 in range(6)]
        print(t, stat)

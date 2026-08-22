"""CRITICAL TEST — Case-(1a) reduced system feasibility.

If all bicolor weights vanish, EqSystemN(6,3) reduces to the PURE-CC system:
  (M_c)   : hafnian of color-c cc-weights = 1            (3 equations)
  (V_cd)  : for every pair T and c != d:
            X_d(T) * haf_{V-T}(X_c) = 0                  (15 pairs * 6 ordered)
  (222)   : for every perfect matching {P,Q,R} and distinct colors a,b,c:
            X_a(P)*X_b(Q)*X_c(R) = 0                     (15 matchings * 6 perms)

If THIS has a solution -> COUNTEREXAMPLE to Krenn's conjecture (reward!).
If provably infeasible -> Case-(1a) of the endgame closes for all patterns at once.
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np

VERTS = range(6)
PAIRS = list(itertools.combinations(VERTS, 2))
PI = {e: k for k, e in enumerate(PAIRS)}
NV = 45  # 15 pairs * 3 colors

def pms():
    verts = list(VERTS)
    def rec(rem):
        if not rem:
            yield []
            return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            partner = rest[k]
            rem2 = rest[:k] + rest[k+1:]
            for m in rec(rem2):
                yield [(f, partner)] + m
    return list(rec(verts))

PMS15 = pms()
FOURSETS = list(itertools.combinations(VERTS, 4))

def idx(pair, c):
    return PI[tuple(sorted(pair))] * 3 + c

# --- cleaner implementation ---
def system_residual_grad(x):
    R = []
    G = np.zeros(NV, dtype=complex)

    def term(coef, keys, target):
        """add residual coef*prod(X[keys]) - coef*target and its loss-gradient"""
        prods = [x[k] for k in keys]
        val = coef
        for p in prods:
            val *= p
        r = val - coef * target
        R.append(r)
        for pos, k in enumerate(keys):
            g = coef
            for q, p in enumerate(prods):
                if q != pos:
                    g *= p
            G[k] += 2 * np.conj(r) * g

    # (M_c): sum of 15 matching products - 1 = 0
    for c in range(3):
        for m in PMS15:
            keys = [idx(e, c) for e in m]
            term(1.0, keys, 1.0)
        R.append(-1.0 + 0.0j)
    # (V_cd): X_d(T) * haf_{V-T}(X_c) = 0 ; haf_{V-T} = sum over 3 matchings of the 4-set
    for T in PAIRS:
        S = [v for v in VERTS if v not in T]
        skeys_haf = []
        for m in [mm for mm in PMS15 if set(mm[0]) <= set(S) or True]:
            pass
        s0, s1, s2, s3 = S
        matchings_S = [[(s0, s1), (s2, s3)], [(s0, s2), (s1, s3)], [(s0, s3), (s1, s2)]]
        for c in range(3):
            for d in range(3):
                if c == d:
                    continue
                # X_d(T) * sum_m prod(X_c) : expand into 3 cubic terms
                for m in matchings_S:
                    keys = [idx(T, d)] + [idx(e, c) for e in m]
                    term(1.0, keys, 0.0)
    # (222): X_a(P)X_b(Q)X_c(R) = 0 for distinct colors, P,Q,R the edges of a matching
    for m in PMS15:
        for perm in itertools.permutations(range(3)):
            keys = [idx(e, perm[i]) for i, e in enumerate(m)]
            term(1.0, keys, 0.0)
    return np.array(R), G

def loss_grad(x):
    R, G = system_residual_grad(x)
    L = float(np.sum(np.abs(R) ** 2))
    return L, G.astype(complex)

rng = np.random.default_rng(3)
best = 1e30
for trial in range(80):
    x = (rng.normal(size=NV) + 1j * rng.normal(size=NV)) * 0.8
    lr = 5e-2
    cur, _ = loss_grad(x)
    for step in range(500):
        L, g = loss_grad(x)
        n = np.linalg.norm(g)
        if n < 1e-15:
            break
        xn = x - lr * g / n
        Ln, _ = loss_grad(xn)
        if Ln < L:
            x, lr, cur = xn, min(lr * 1.07, 0.7), Ln
        else:
            lr *= 0.55
            if lr < 1e-14:
                break
        if cur < 1e-22:
            break
    best = min(best, cur)
    if trial % 10 == 9:
        print(f"trial {trial+1}: best={best:.3e}", flush=True)
    if best < 1e-18:
        print("CANDIDATE PURE-CC SOLUTION FOUND — VERIFY IMMEDIATELY")
        np.save('/Users/kishan/mqg/lab/cc_candidate.npy', x)
        break
print("FINAL best residual:", best)

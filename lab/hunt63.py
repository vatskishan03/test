"""Numerical witness hunt for EqSystemN(6,3) over C via least-squares on residuals.

If optimization ever reaches ~0 residual, we'd have a candidate counterexample
(disproving Krenn's conjecture) -> then rationalize + verify exactly.
Also hunts structured ansaetze. Reports best residuals found.
"""
import numpy as np
import itertools, sys

N, D = 6, 3
PAIRS = list(itertools.combinations(range(N), 2))
NV = len(PAIRS) * D * D  # 135 complex variables

def key_index():
    idx = {}
    for k, (u, v) in enumerate(PAIRS):
        for i in range(D):
            for j in range(D):
                idx[(u, v, i, j)] = (k * D + i) * D + j
    return idx
IDX = key_index()

def wvec_get(x, u, v, i, j):
    if u > v:
        u, v, i, j = v, u, j, i
    return x[IDX[(u, v, i, j)]]

# Precompute matching list with edge indices per matching
def perfect_matchings(vertices):
    verts = list(vertices)
    if not verts:
        yield []
        return
    if len(verts) % 2 == 1:
        return
    first, rest = verts[0], verts[1:]
    for i in range(len(rest)):
        partner = rest[i]
        remaining = rest[:i] + rest[i+1:]
        for m in perfect_matchings(remaining):
            yield [(first, partner)] + m

MATCHINGS = [m for m in perfect_matchings(range(N))]
assert len(MATCHINGS) == 15

CONST_IOTAS = [tuple([c]*N) for c in range(D)]

def pm_sum(x, iota):
    total = 0.0 + 0.0j
    for m in MATCHINGS:
        prod = 1.0 + 0.0j
        for (u, v) in m:
            prod *= wvec_get(x, u, v, iota[u], iota[v])
        total += prod
    return total

def residual(x):
    r = []
    from itertools import product as iproduct
    for iota in iproduct(range(D), repeat=N):
        target = 1.0 if len(set(iota)) == 1 else 0.0
        val = pm_sum(x, iota)
        r.append(val - target)
    return np.array(r)

def loss(x):
    return np.sum(np.abs(residual(x))**2)

def grad_loss(x):
    # numeric gradient via complex-step-free finite diff is expensive;
    # instead exploit multilinearity: d loss/d x_k = 2 Re sum_r conj(r_r) * dpm/dx
    # do it semi-analytically: for each variable, derivative of each pmSum term.
    g = np.zeros_like(x)
    from itertools import product as iproduct
    res = residual(x)
    ri = 0
    for iota in iproduct(range(D), repeat=N):
        r = res[ri]; ri += 1
        for mi, m in enumerate(MATCHINGS):
            prod = 1.0+0j; derivs = []
            for (u, v) in m:
                kk = IDX[(u,v,iota[u],iota[v])] if u < v else IDX[(v,u,iota[v],iota[u])]
                prod *= x[kk]
            # second pass for derivatives
            for (u, v) in m:
                kk = IDX[(u,v,iota[u],iota[v])] if u < v else IDX[(v,u,iota[v],iota[u])]
                if prod != 0:
                    d = prod / x[kk] if x[kk] != 0 else _prod_without(m, kk, iota, x)
                    g[kk] += 2*np.conj(r)*np.conj(d)
    return g

def _prod_without(m, kk, iota, x):
    p = 1.0+0j
    for (u, v) in m:
        k2 = IDX[(u,v,iota[u],iota[v])] if u < v else IDX[(v,u,iota[v],iota[u])]
        if k2 != kk:
            p *= x[k2]
    return p

rng = np.random.default_rng(0)

def random_x(scale=1.0, sparse=0.5):
    x = (rng.normal(size=NV) + 1j*rng.normal(size=NV)) * scale
    mask = rng.random(NV) < sparse
    x[mask] = 0
    return x

best = 1e9
bestx = None
for trial in range(60):
    x = random_x()
    lr = 0.05
    cur = loss(x)
    for step in range(400):
        g = grad_loss(x)
        nrm = np.linalg.norm(g)
        if nrm < 1e-14: break
        x_new = x - lr * g / nrm
        l_new = loss(x_new)
        if l_new < cur:
            x, cur = x_new, l_new
            lr *= 1.05
        else:
            lr *= 0.5
            if lr < 1e-12: break
        if cur < 1e-22:
            break
    if cur < best:
        best = cur; bestx = x.copy()
    print(f"trial {trial}: loss={cur:.3e}  (best {best:.3e})", flush=True)
    if best < 1e-18:
        print("CANDIDATE WITNESS FOUND"); break

print("BEST:", best)

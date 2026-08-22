"""Masked numerical hunt: least-squares inside each surviving forcing-pattern mask.

For each pattern passing the serving-PM prune, run Adam-style gradient descent on the
729-equation residual with disallowed entries pinned to zero. If ANY pattern admits a
witness, residuals should collapse toward 0 for it.
"""
import sys, itertools, random
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
from endgame import (VERTS, PAIRS, N, D, neighbors, valid_pattern, build_mask,
                     perfect_matchings, pattern_passes_pm)

PMS = perfect_matchings()

# index maps over ALL entries
IDX = {}
for k, e in enumerate(PAIRS):
    for i in range(D):
        for j in range(D):
            IDX[(e, i, j)] = (k * D + i) * D + j
NV_ALL = len(PAIRS) * D * D

def mask_vector(allowed):
    m = np.zeros(NV_ALL)
    for e, s in allowed.items():
        for (i, j) in s:
            m[IDX[(e, i, j)]] = 1.0
    return m

def pm_sum_masked(x, iota, mask):
    total = 0.0 + 0.0j
    for mm in PMS:
        prod = 1.0 + 0.0j
        for (a, b) in mm:
            k = IDX[((a, b), iota[a], iota[b])]
            if mask[k] == 0:
                prod = 0.0
                break
            prod *= x[k]
        total += prod
    return total

def loss_and_grad(x, mask):
    from itertools import product as iproduct
    res = []
    g = np.zeros_like(x)
    iotas = list(iproduct(range(D), repeat=N))
    vals = [pm_sum_masked(x, io, mask) for io in iotas]
    for io, val in zip(iotas, vals):
        target = 1.0 if len(set(io)) == 1 else 0.0
        r = val - target
        res.append(r)
    # gradient
    for ii, io in enumerate(iotas):
        r = res[ii]
        if r == 0:
            continue
        for mm in PMS:
            ks = [IDX[((a, b), io[a], io[b])] for (a, b) in mm]
            if any(mask[k] == 0 for k in ks):
                continue
            prods = [x[k] for k in ks]
            full = np.prod(prods)
            if full == 0:
                nz = [p != 0 for p in prods]
                if sum(nz) < len(prods) - 1:
                    continue
            for pos, k in enumerate(ks):
                d = 1.0 + 0.0j
                for q, p in enumerate(prods):
                    if q == pos:
                        if p == 0:
                            d = None
                            break
                    else:
                        d *= p
                if d is None:
                    # need product without this factor
                    d2 = 1.0 + 0.0j
                    for q, p in enumerate(prods):
                        if q != pos:
                            d2 *= p
                    d = d2
                g[k] += 2 * np.conj(r * d)
    return float(np.sum(np.abs(np.array(res)) ** 2)), g

def masked_hunt(mask, x0, steps=600, seed=0):
    rng = np.random.default_rng(seed)
    x = x0.copy()
    lr = 3e-2
    best = 1e30
    for it in range(steps):
        L, g = loss_and_grad(x, mask)
        best = min(best, L)
        n = np.linalg.norm(g)
        if n < 1e-16:
            break
        xn = x - lr * g / n
        Ln, _ = loss_and_grad(xn, mask)
        if Ln < L:
            x, lr = xn, min(lr * 1.08, 0.5)
        else:
            lr *= 0.55
            if lr < 1e-13:
                break
        if best < 1e-20:
            break
    return best

if __name__ == '__main__':
    rnd = random.Random(11)
    tested = 0
    survivors = []
    BEST = {}
    for t in range(400):
        pat = {v: tuple(rnd.sample(neighbors(v), 3)) for v in VERTS}
        if not pattern_passes_pm(pat):
            continue
        allowed = build_mask(pat)
        mask = mask_vector(allowed)
        nv = int(mask.sum())
        tested += 1
        bestall = 1e30
        for s in range(3):
            x0 = (np.random.default_rng(100 + s).normal(size=NV_ALL) +
                  1j * np.random.default_rng(500 + s).normal(size=NV_ALL)) * 0.7
            x0 = x0 * mask
            b = masked_hunt(mask, x0, steps=350, seed=s)
            bestall = min(bestall, b)
        BEST[nv] = min(BEST.get(nv, 1e30), bestall)
        if bestall < 1e-6:
            survivors.append((pat, bestall))
            print("WITNESS-LIKE PATTERN:", pat, bestall, flush=True)
        if tested % 25 == 0:
            print(f"tested {tested} patterns; best-by-nvso-far: "
                  f"{ {k: f'{v:.2e}' for k,v in sorted(BEST.items())} }", flush=True)
    print("DONE. patterns tested:", tested)
    print("min residual by variable count:", {k: f"{v:.3e}" for k, v in sorted(BEST.items())})

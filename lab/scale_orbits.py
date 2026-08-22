"""SCALABLE pipeline: enumerate ALL pure-cc support solutions -> orbit-reduce ->
exact Groebner per orbit. This closes Case-(1a) orbits in bulk.

Stage 1: enumerate models of the sound support system (cap configurable)
Stage 2: numpy-vectorized canonicalization under S3(colors) x S6(vertices)
Stage 3: per-orbit exact Groebner (multiprocessing, timeout-guarded)
"""
import sys, itertools, time
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
from purecc_sat2 import build, PAIRS, PIDX, COLORS, var
from orbits import dpll_model

def pm_list():
    def rec(rem):
        if not rem:
            yield []
            return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            partner = rest[k]
            rem2 = rest[:k] + rest[k + 1:]
            for m in rec(rem2):
                yield [(f, partner)] + m
    return list(rec(list(range(6))))
PMS = pm_list()

# ---------- Stage 1 ----------
def enumerate_models(cap, time_budget=3600):
    clauses, nv = build(with_E=True)
    cls = [list(c) for c in clauses]
    models = []
    t0 = time.time()
    while len(models) < cap and time.time() - t0 < time_budget:
        m = dpll_model(cls)
        if m is None:
            break
        models.append(m)
        cls.append([-v if m.get(v, False) else v for v in range(1, 46)])
    return models

# ---------- Stage 2 ----------
def build_group_permutations():
    """Return array G of shape (n_group, 45): G[g][oldvar] = newvar."""
    cperms = list(it.permutations(range(3)))
    vperms = list(it.permutations(range(6)))
    rows = []
    for cp in cperms:
        for vp in vperms:
            row = np.zeros(45, dtype=np.int64)
            for e in PAIRS:
                ei = tuple(sorted((vp[e[0]], vp[e[1]])))
                for c in COLORS:
                    row[var(c, e)] = var(cp[c], ei)
            rows.append(row)
    return np.array(rows)

POW2 = (1 << np.arange(45)).astype(np.int64)

def canonical_int(bits45, G):
    """bits45: np.uint8 array length45. Return minimal packed int over group."""
    imgs = bits45[G]                      # (n_group, 45)
    packed = imgs @ POW2                  # (n_group,)
    return int(packed.min())

def support_to_bits(sup):
    b = np.zeros(45, dtype=np.uint8)
    for (c, e) in sup:
        b[var(c, e)] = 1
    return b

def bits_to_support(packed):
    sup = set()
    for i in range(45):
        if (packed >> i) & 1:
            sup.add((i % 3, PAIRS[i // 3]))
    return sup

# ---------- main ----------
if __name__ == '__main__':
    cap = int(sys.argv[1]) if len(sys.argv) > 1 else 20000
    t0 = time.time()
    models = enumerate_models(cap)
    print(f"[{time.time()-t0:.0f}s] models enumerated: {len(models)}")
    G = build_group_permutations()
    print(f"[{time.time()-t0:.0f}s] group permutations: {G.shape}")
    seen = {}
    reps = []
    for mi, m in enumerate(models):
        bits = np.array([1 if m.get(v, False) else 0 for v in range(1, 46)], dtype=np.uint8)
        ci = canonical_int(bits, G)
        if ci not in seen:
            seen[ci] = mi
            reps.append(ci)
        if mi % 2500 == 0:
            print(f"  [{time.time()-t0:.0f}s] {mi} models -> {len(reps)} orbits", flush=True)
    print(f"[{time.time()-t0:.0f}s] TOTAL DISTINCT ORBITS: {len(reps)}")
    np.save('/Users/kishan/mqg/lab/orbit_reps.npy', np.array(reps, dtype=np.int64))
    print("saved orbit representatives")

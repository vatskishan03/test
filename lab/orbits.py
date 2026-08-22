"""Witness extraction & orbit classification for the sound pure-cc support system.

Enumerates solutions of the A+C+E clause set (DPLL + blocking clauses), canonicalizes
each under S3(colors) x S6(vertices), and reports distinct orbits.
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
from purecc_sat2 import build, PAIRS, PIDX, COLORS, var

def dpll_model(clauses):
    def assign(clauses, val):
        out = []
        for cl in clauses:
            sat = False; new = []
            for l in cl:
                v = abs(l); vv = val.get(v)
                if vv is not None:
                    if (l > 0 and vv) or (l < 0 and not vv):
                        sat = True; break
                else:
                    new.append(l)
            if sat: continue
            if not new: return None
            out.append(new)
        return out
    def solve(clauses, val):
        changed = True
        while changed:
            changed = False
            units = [cl[0] for cl in clauses if len(cl) == 1]
            for u in units:
                v, vv = (u, True) if u > 0 else (-u, False)
                if v in val:
                    if val[v] != vv: return None
                else:
                    val[v] = vv; changed = True
                res = assign(clauses, val)
                if res is None: return None
                clauses = res
        if not clauses: return val
        from collections import Counter
        cnt = Counter(abs(l) for cl in clauses for l in cl)
        v = max(cnt, key=cnt.get)
        for vv in (True, False):
            t = dict(val); t[v] = vv
            res = assign(clauses, t)
            if res is None: continue
            r = solve(res, t)
            if r is not None: return r
        return None
    return solve(list(clauses), {})

def enumerate_models(clauses, cap=20000):
    models = []
    cls = [list(c) for c in clauses]
    while len(models) < cap:
        m = dpll_model(cls)
        if m is None: break
        models.append(m)
        block = [-v if m.get(v, False) else v for v in range(1, 46)]  # block only REAL vars
        cls.append(block)
    return models

# group action
def edge_image(e, perm):
    return tuple(sorted((perm[e[0]], perm[e[1]])))

def canon(model_bits, cperms, vperms_groups):
    """model_bits: dict var->bool for real vars. Return minimal tuple encoding."""
    best = None
    for cp in cperms:
        for vp in vperms_groups:
            enc = []
            for e in PAIRS:
                ei = edge_image(e, vp)
                for c in COLORS:
                    enc.append(1 if model_bits[var(cp[c], ei)] else 0)
            t = tuple(enc)
            if best is None or t < best:
                best = t
    return best

def main():
    clauses, nv = build(with_E=True)
    models = enumerate_models(clauses, cap=3000)
    print(f"models enumerated (capped): {len(models)}")
    # precompute vertex perms as tuples; use cyclic subgroup + reflections? Use full S6 but that's
    # 720 * 6 = 4320 combos per model -> heavy. Start with a fast filter: collect raw models,
    # canonicalize lazily with smaller generating set first.
    import itertools as it
    # full S6
    S6 = list(it.permutations(range(6)))
    C3 = list(it.permutations(range(3)))
    orbits = {}
    rep_of = {}
    for mi, m in enumerate(models):
        bits = {v: m.get(v, False) for v in range(1, 46)}
        key = canon(bits, C3, S6)
        if key not in orbits:
            orbits[key] = mi
        if mi % 500 == 0:
            print(f"  processed {mi}...", flush=True)
    print(f"DISTINCT ORBITS: {len(orbits)}")
    # print one representative per orbit
    for oi, (key, mi) in enumerate(list(orbits.items())[:12]):
        m = models[mi]
        print(f"--- orbit {oi} (model #{mi}) ---")
        for c in COLORS:
            es = [e for e in PAIRS if m[var(c, e)]]
            print(f"  G_{c}: {es}")

if __name__ == '__main__':
    main()

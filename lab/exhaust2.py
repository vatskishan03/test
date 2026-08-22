"""DEFINITIVE enumeration using pysat/CaDiCaL: all models of the sound pure-cc
support system -> distinct supports -> per-support exact Groebner verdict.
"""
import sys, json, time, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
from purecc_sat2 import build, PAIRS, COLORS, var

def enumerate_all_models():
    from pysat.solvers import Cadical153
    clauses, nv = build(with_E=True)
    with Cadical153(bootstrap_with=clauses) as s:
        count = 0
        models = []
        for m in s.enum_models():
            count += 1
            models.append(m)
    return models

def support_of(model):
    valset = set(l for l in model if l > 0)
    return frozenset((c, e) for c in COLORS for e in PAIRS if var(c, e) in valset)

if __name__ == '__main__':
    t0 = time.time()
    models = enumerate_all_models()
    print(f"total satisfying assignments: {len(models)}  ({time.time()-t0:.1f}s)")
    sups = {}
    for m in models:
        s = support_of(m)
        sups[s] = sups.get(s, 0) + 1
    print(f"DISTINCT SUPPORTS: {len(sups)}  ({time.time()-t0:.1f}s)")
    out = [sorted([[c, list(e)] for (c, e) in sup]) for sup in sups]
    json.dump(out, open('/Users/kishan/mqg/lab/all_supports.json', 'w'))
    print("saved all_supports.json")

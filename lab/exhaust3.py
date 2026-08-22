"""Support-signature enumeration with pysat: block each new model's 45-bit support
pattern (not full assignment), keeping solver state warm. Progress flushed.
"""
import sys, json, time
sys.path.insert(0, '/Users/kishan/mqg/lab')
from purecc_sat2 import build, PAIRS, COLORS, var
from pysat.solvers import Cadical153

def main(cap=10**9):
    clauses, nv = build(with_E=True)
    sups = {}
    t0 = time.time()
    with Cadical153(bootstrap_with=clauses) as s:
        it = 0
        while s.solve():
            it += 1
            model = s.get_model()
            pos = set(l for l in model if l > 0)
            sup = frozenset((c, e) for c in COLORS for e in PAIRS if var(c, e) in pos)
            if sup not in sups:
                sups[sup] = 0
            sups[sup] += 1
            # block this exact support signature over real variables
            block = [-var(c, e) if var(c, e) in pos else var(c, e)
                     for c in COLORS for e in PAIRS]
            s.add_clause(block)
            if len(sups) % 25 == 0:
                print(f"[{time.time()-t0:.0f}s] it={it} distinct supports={len(sups)}", flush=True)
            if len(sups) >= cap:
                print("cap reached", flush=True)
                break
        else:
            print(f"ENUMERATION EXHAUSTED: {len(sups)} distinct supports "
                  f"({it} models) in {time.time()-t0:.0f}s", flush=True)
    out = [sorted([[c, list(e)] for (c, e) in sup]) for sup in sups]
    json.dump(out, open('/Users/kishan/mqg/lab/all_supports.json', 'w'))
    sizes = {}
    for sup in sups:
        k = tuple(sorted(len([1 for (c, e) in sup if c == kk]) for kk in range(3)))
        sizes[k] = sizes.get(k, 0) + 1
    print("size histogram:", dict(sorted(sizes.items())), flush=True)
    print("saved all_supports.json")

if __name__ == '__main__':
    main(int(sys.argv[1]) if len(sys.argv) > 1 else 10**9)

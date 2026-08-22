"""Mass GB-classification over discovered (6,2) supports (multiprocessing)."""
import sys, json, time, multiprocessing
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
import itertools

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
COLORS = (0, 1)

def var(c, e):
    return 2 * PAIRS.index(e) + c + 1   # matches d2_classify numbering (1..30)

def build_group():
    rows = []
    for cp in itertools.permutations(range(2)):
        for vp in itertools.permutations(range(6)):
            row = np.zeros(31, dtype=np.int64)
            for e in PAIRS:
                ei = tuple(sorted((vp[e[0]], vp[e[1]])))
                for c in COLORS:
                    row[var(c, e)] = var(cp[c], ei)
            rows.append(row)
    return np.array(rows)

POW2 = (1 << np.arange(31)).astype(np.int64)

def gb_worker(job):
    wi, sup_list = job
    try:
        from d2_values import gb_verdict
        sup = {(c, tuple(e)) for (c, e) in sup_list}
        v = gb_verdict(sup)
        return wi, v
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:60]}'

def main():
    data = json.load(open('/Users/kishan/mqg/lab/d2_supports.json'))
    print(f"supports loaded: {len(data)}", flush=True)
    G = build_group()
    bits_all = np.zeros((len(data), 31), dtype=np.uint8)
    for i, sl in enumerate(data):
        for (c, e) in sl:
            bits_all[i][var(c, tuple(e))] = 1
    orbits = {}
    t0 = time.time()
    for i in range(len(data)):
        b = bits_all[i]
        ci = int((b[G] @ POW2).min())
        if ci not in orbits:
            orbits[ci] = i
        if (i+1) % 20000 == 0:
            print(f"  {i+1} -> orbits {len(orbits)} [{time.time()-t0:.0f}s]", flush=True)
    print(f"DISTINCT ORBITS: {len(orbits)}", flush=True)
    jobs = []
    for oi, (ci, src) in enumerate(sorted(orbits.items())):
        packed = ci
        sup = set()
        for b in range(1, 31):
            if (packed >> b) & 1:
                sup.add(((b - 1) % 2, PAIRS[(b - 1) // 2]))
        jobs.append((oi, sorted([[c, list(e)] for (c, e) in sup])))
    ctx = multiprocessing.get_context('fork')
    alive = []
    dead = 0
    with ctx.Pool(processes=8, maxtasksperchild=64) as pool:
        results = []
        chunk = max(1, len(jobs)//64)
        for res in pool.imap_unordered(gb_worker, jobs, chunksize=chunk):
            results.append(res)
            wi, st = res
            if st.startswith('DEAD'): dead += 1
            else: alive.append((wi, st))
            if len(results) % 500 == 0:
                print(f"  GB {len(results)}/{len(jobs)}: dead={dead} alive={len(alive)}", flush=True)
    print(f"\nCLASSIFICATION VERDICT: {dead}/{len(jobs)} DEAD, "
          f"{len(alive)} PROPER/ALIVE", flush=True)
    for wi, st in alive[:40]:
        print("  SURVIVOR orbit", wi, st, flush=True)
        # save survivor support for inspection
        json.dump(jobs[wi][1], open(f'/Users/kishan/mqg/lab/d2_survivor_{wi}.json', 'w'))
    json.dump({str(wi): st for wi, st in alive},
              open('/Users/kishan/mqg/lab/d2_alive.json', 'w'))
    print("saved d2_alive.json")

if __name__ == '__main__':
    main()

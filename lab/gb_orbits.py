"""GB-certification across ALL discovered cc-support orbits.

For each orbit representative (packed 45-bit int), rebuild its support, construct the
pure-cc polynomial system, and compute an exact Groebner basis over Q.
GB=[1] => orbit DEAD (no complex values). Any PROPER basis => lead worth study.
"""
import sys, json, time, multiprocessing
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
import sympy as sp
from purecc_sat2 import PAIRS, COLORS

def unpack(packed):
    sup = set()
    for i in range(1, 46):
        if (packed >> i) & 1:
            c = (i - 1) % 3
            e = PAIRS[(i - 1) // 3]
            sup.add((c, e))
    return sup

def gb_worker(job):
    wi, sup_list = job
    try:
        sup = {(c, tuple(e)) for (c, e) in sup_list}
        from values import build_support_equations, vars_of
        eqs = build_support_equations(sup)
        keys = vars_of(eqs)
        sym = {k: sp.Symbol(f'v{i}') for i, k in enumerate(keys)}
        polys = []
        for eq in eqs:
            expr = -sp.Integer(eq['target'])
            for t in eq['terms']:
                p = sp.Integer(1)
                for k in t:
                    p *= sym[k]
                expr += p
            g = sp.Poly(expr, *sym.values())
            if g.as_expr() != 0:
                polys.append(g)
        G = sp.groebner(polys, *sym.values(), order='lex')
        degs = [sp.Poly(p, *sym.values()).total_degree() for p in G.polys]
        if 0 in degs:
            return wi, 'DEAD'
        return wi, f'ALIVE dim? basis={len(G.polys)}'
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:60]}'

def main():
    ints = np.load('/Users/kishan/mqg/lab/orbit_canon_ints.npy')
    print(f"orbits loaded: {len(ints)}", flush=True)
    jobs = []
    for wi, packed in enumerate(ints.tolist()):
        sup = unpack(packed)
        jobs.append((wi, sorted([[c, list(e)] for (c, e) in sup])))
    ctx = multiprocessing.get_context('fork')
    t0 = time.time()
    alive = []
    done = 0
    with ctx.Pool(processes=8, maxtasksperchild=64) as pool:
        async_res = pool.map_async(gb_worker, jobs, chunksize=8)
        # poll progress
        while not async_res.ready():
            time.sleep(20)
            remaining = async_res._number_left
            print(f"[{time.time()-t0:.0f}s] remaining: {remaining}", flush=True)
        results = async_res.get()
    for wi, st in results:
        done += 1
        if not st.startswith('DEAD'):
            alive.append((wi, st))
    print(f"DONE in {time.time()-t0:.0f}s: {done-len(alive)}/{len(results)} DEAD, "
          f"{len(alive)} ALIVE/ERROR", flush=True)
    for wi, st in alive[:30]:
        print("  NON-DEAD:", wi, st, flush=True)
    json.dump({str(wi): st for wi, st in alive},
              open('/Users/kishan/mqg/lab/gb_alive.json', 'w'))
    print("saved gb_alive.json", flush=True)

if __name__ == '__main__':
    main()

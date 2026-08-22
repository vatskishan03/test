"""UNIFIED pipeline: exhaustive support enumeration + live orbit GB-certification.
Terminates when CaDiCaL proves UNSAT (space exhausted). Checkpoints everything.
"""
import sys, json, time, multiprocessing
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
from pysat.solvers import Cadical153
from purecc_sat2 import PAIRS, COLORS, var
import itertools

def build_group():
    rows = []
    for cp in itertools.permutations(range(3)):
        for vp in itertools.permutations(range(6)):
            row = np.zeros(46, dtype=np.int64)
            for e in PAIRS:
                ei = tuple(sorted((vp[e[0]], vp[e[1]])))
                for c in COLORS:
                    row[var(c,e)] = var(cp[c], ei)
            rows.append(row)
    return np.array(rows)

POW2 = (1 << np.arange(46)).astype(np.int64)

def gb_worker(job):
    import sympy as sp
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
        return wi, ('DEAD' if 0 in degs else f'ALIVE basis={len(G.polys)}')
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:60]}'

def main():
    from purecc_sat2 import build
    clauses, nv = build(with_E=True)
    G = build_group()
    ctx = multiprocessing.get_context('fork')
    pool = ctx.Pool(processes=7, maxtasksperchild=128)

    orbits_seen = {}         # canonical int -> status
    pending = []             # jobs not yet dispatched
    inflight = {}
    models = 0
    t0 = time.time()
    alive_results = []
    exhausted = False

    def dispatch():
        while pending and len(inflight) < 200:
            job = pending.pop(0)
            wi, payload = job
            inflight[wi] = pool.apply_async(gb_worker, (job,))

    def harvest():
        nonlocal alive_results
        done_wis = []
        for wi, ar in list(inflight.items()):
            if ar.ready():
                try:
                    wi2, st = ar.get()
                    orbits_seen[wi2packed[wi2]] = st
                    if not st.startswith('DEAD'):
                        alive_results.append((wi2, st))
                        print(f"!!! ALIVE ORBIT {wi2}: {st}", flush=True)
                except Exception as ex:
                    orbits_seen[wi2packed[wi]] = f'HARD-ERROR {ex}'
                del inflight[wi]
                done_wis.append(wi)

    # NOTE: mapping wi->packed kept separately
    wi2packed = {}

    from purecc_sat2 import build as _b
    solver_clauses = _b(with_E=True)[0]
    with Cadical153(bootstrap_with=solver_clauses) as s:
        ckpt_t = time.time()
        while True:
            sat = s.solve()
            if not sat:
                exhausted = True
                break
            model = s.get_model()
            models += 1
            pos = set(l for l in model if l > 0)
            bits = np.zeros(46, dtype=np.uint8)
            for c in COLORS:
                for e in PAIRS:
                    if var(c, e) in pos:
                        bits[var(c, e)] = 1
            ci = int((bits @ G.T) @ POW2) if False else int((bits[G] @ POW2).min())
            if ci not in orbits_seen:
                wi = len(orbits_seen)
                orbits_seen[ci] = 'PENDING'
                wi2packed[wi] = ci
                sup_list = sorted([[c, list(e)] for (c, e) in unpack(ci)])
                pending.append((wi, sup_list))
            block = [-var(c, e) if var(c, e) in pos else var(c, e)
                     for c in COLORS for e in PAIRS]
            s.add_clause(block)
            dispatch()
            harvest()
            if models % 50000 == 0:
                ndead = sum(1 for v in orbits_seen.values() if v == 'DEAD')
                print(f"[{time.time()-t0:.0f}s] models={models} orbits={len(orbits_seen)} "
                      f"pending={len(pending)} inflight={len(inflight)} dead={ndead}", flush=True)
                json.dump({str(k): v for k, v in orbits_seen.items()},
                          open('/Users/kishan/mqg/lab/ckpt_orbits.json', 'w'))
            if time.time() - ckpt_t > 1800:
                ckpt_t = time.time()
                json.dump({str(k): v for k, v in orbits_seen.items()},
                          open('/Users/kishan/mqg/lab/ckpt_orbits.json', 'w'))
            if len(alive_results) >= 5:
                print("STOPPING: multiple alive orbits found - investigate!", flush=True)
                break
    while pending or inflight:
        dispatch(); harvest(); time.sleep(0.2)
    pool.close(); pool.join()
    ndead = sum(1 for v in orbits_seen.values() if v == 'DEAD')
    print(f"FINAL: exhausted={exhausted} models={models} orbits={len(orbits_seen)} "
          f"dead={ndead} alive={len(alive_results)}", flush=True)

def unpack(packed):
    sup = set()
    for i in range(1, 46):
        if (packed >> i) & 1:
            sup.add(((i - 1) % 3, PAIRS[(i - 1) // 3]))
    return sup

if __name__ == '__main__':
    main()

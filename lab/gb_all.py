"""Run exact Groebner infeasibility test across ALL discovered cc-supports."""
import sys, json, multiprocessing, time
sys.path.insert(0, '/Users/kishan/mqg/lab')
import sympy as sp
from values import build_support_equations, vars_of

def gb_worker(job):
    wi, sup_list = job
    sup = {(c, tuple(e)) for (c, e) in sup_list}
    try:
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
        basis = [sp.Poly(p, *sym.values()).total_degree() for p in G.polys]
        if 0 in basis:
            return wi, 'INFEASIBLE(GB=1)'
        return wi, f'PROPER basis={len(basis)}'
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:80]}'

def main():
    data = json.load(open('/Users/kishan/mqg/lab/rand_supports.json'))
    jobs = [(i, sup) for i, sup in enumerate(data)]
    print(f"supports to test: {len(jobs)}", flush=True)
    ctx = multiprocessing.get_context('fork')
    results = {}
    t0 = time.time()
    with ctx.Pool(processes=6, maxtasksperchild=4) as pool:
        async_res = [pool.apply_async(gb_worker, (j,)) for j in jobs]
        done = 0
        for r in async_res:
            try:
                wi, status = r.get(timeout=2400)
                results[wi] = status
            except Exception:
                results[jobs[wi][0] if False else len(results)] = 'TIMEOUT/ERR'
                # find which one timed out is tricky; mark by index scan below
            done += 1
            if done % 10 == 0:
                dead = sum(1 for v in results.values() if 'INFEASIBLE' in str(v))
                print(f"[{time.time()-t0:.0f}s] {done}/{len(jobs)} done, {dead} INFEASIBLE", flush=True)
    dead = sum(1 for v in results.values() if 'INFEASIBLE' in str(v))
    other = {}
    for wi, st in results.items():
        if 'INFEASIBLE' not in str(st):
            other[wi] = st
    print(f"FINAL: {dead}/{len(results)} INFEASIBLE; non-dead: {len(other)}")
    for wi, st in list(other.items())[:20]:
        print("  NON-DEAD", wi, st)
    json.dump({str(k): v for k, v in results.items()},
              open('/Users/kishan/mqg/lab/gb_results.json', 'w'))

if __name__ == '__main__':
    main()

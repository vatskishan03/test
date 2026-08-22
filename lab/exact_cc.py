"""EXACT stage: Groebner-basis infeasibility test per surviving cc-support.

For each witness support: build the pure-cc polynomial system over Q in the
supported variables only, compute a Groebner basis (lex) with timeout.
GB == [1]  =>  no complex solution  =>  orbit DEAD (rigorous).
Otherwise: report dimension / attempt further processing.
"""
import sys, itertools, signal, multiprocessing
sys.path.insert(0, '/Users/kishan/mqg/lab')
import sympy as sp
from values import get_witnesses, build_support_equations, vars_of

def run_groebner(args):
    wi, sup_repr = args
    sup = {(c, tuple(e)) for (c, e) in sup_repr}
    eqs = build_support_equations(sup)
    keys = vars_of(eqs)
    sym = {k: sp.Symbol(f'v{i}') for i, k in enumerate(keys)}
    polys = []
    for eq in eqs:
        expr = -sp.Integer(eq['target'])
        for t in eq['terms']:
            p = sp.Integer(1)
            for k in t: p *= sym[k]
            expr += p
        g = sp.Poly(expr, *sym.values())
        if g.as_expr() != 0:
            polys.append(g)
    if not polys:
        return wi, 'TRIVIAL'
    # lex order GB
    G = sp.groebner(polys, *sym.values(), order='lex')
    basis = [sp.Poly(p, *sym.values()) for p in G.polys]
    if any(p.total_degree() == 0 and p.as_expr() != 0 for p in basis):
        return wi, 'INFEASIBLE(GB=1)'
    return wi, f'PROPER dim? basis size {len(basis)}'

def worker(wi_sup):
    return run_groebner(wi_sup)

def main():
    witnesses = get_witnesses(10)
    jobs = [(wi, [(c, list(e)) for (c, e) in sup]) for wi, sup in enumerate(witnesses)]
    ctx = multiprocessing.get_context('fork')
    results = {}
    with ctx.Pool(processes=min(len(jobs), 8)) as pool:
        async_res = [pool.apply_async(worker, (j,)) for j in jobs]
        for r in async_res:
            try:
                wi, status = r.get(timeout=1800)
                results[wi] = status
                print(f"witness {wi}: {status}", flush=True)
            except multiprocessing.TimeoutError:
                print("timeout", flush=True)
                continue
    print("DONE")

if __name__ == '__main__':
    main()

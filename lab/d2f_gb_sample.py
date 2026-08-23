"""Fixed GB sampler for FULL-(6,2) supports (JSON plumbing corrected)."""
import sys, json, random, time, multiprocessing
sys.path.insert(0, '/Users/kishan/mqg/lab')

def gb_worker(job):
    wi, sup_list = job
    try:
        sup = set()
        for k in sup_list:
            i, j, pq = k[0], k[1], k[2]
            sup.add(((i, j), (pq[0], pq[1])))
        from d2_full_hunt import build_eqs, PAIRS
        # int-var -> structured key table
        INT2KEY = {}
        for a in range(2):
            for b in range(2):
                for ei, e in enumerate(PAIRS):
                    INT2KEY[(a * 2 + b) * 15 + ei] = ((a, b), e)
        eqs_full = build_eqs()
        keep = []
        for eq in eqs_full:
            terms = []
            for t in eq['t']:
                if all(INT2KEY[k] in sup for k in t):
                    terms.append(t)
            if eq['target'] == 0:
                if terms:
                    keep.append({'t': terms, 'target': 0})
            else:
                if not terms:
                    return wi, 'DEAD(mono-empty)'
                keep.append({'t': terms, 'target': 1})
        import sympy as sp
        keys = sorted({k for eq in keep for t in eq['t'] for k in t}, key=repr)
        sym = {k: sp.Symbol(f'v{i}') for i, k in enumerate(keys)}
        polys = []
        for eq in keep:
            expr = -sp.Integer(eq['target'])
            for t in eq['t']:
                p = sp.Integer(1)
                for k in t:
                    p *= sym[k]
                expr += p
            g = sp.Poly(expr, *sym.values())
            if g.as_expr() != 0:
                polys.append(g)
        if not polys:
            return wi, 'TRIVIAL'
        G = sp.groebner(polys, *sym.values(), order='lex')
        degs = [sp.Poly(p, *sym.values()).total_degree() for p in G.polys]
        return wi, ('DEAD' if 0 in degs else f'PROPER basis={len(G.polys)}')
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:50]}'

def main():
    data = json.load(open('/Users/kishan/mqg/lab/d2f_supports.json'))
    print("supports:", len(data), flush=True)
    print("first entries:", data[0][:3], flush=True)
    rnd = random.Random(5)
    sample_idx = rnd.sample(range(len(data)), min(400, len(data)))
    jobs = [(i, data[i]) for i in sample_idx]
    hexagon = [[0, 0, [0, 1]], [1, 1, [1, 2]], [0, 0, [2, 3]],
               [1, 1, [3, 4]], [0, 0, [4, 5]], [1, 1, [5, 0]]]
    jobs.append(('HEX', hexagon))

    ctx = multiprocessing.get_context('fork')
    t0 = time.time()
    alive = []
    dead = 0
    errs = 0
    with ctx.Pool(processes=8, maxtasksperchild=16) as pool:
        for wi, st in pool.imap_unordered(gb_worker, jobs, chunksize=2):
            if st.startswith('ERROR'):
                errs += 1
                if errs <= 3:
                    print("ERR sample:", st, flush=True)
            elif st.startswith('DEAD'):
                dead += 1
            else:
                alive.append((wi, st))
                print("SURVIVOR:", wi, st[:40], flush=True)
    print(f"\nGB sample done ({time.time()-t0:.0f}s): dead={dead} "
          f"alive={len(alive)} errors={errs}", flush=True)
    json.dump({str(wi): st for wi, st in alive},
              open('/Users/kishan/mqg/lab/d2f_gb_alive.json', 'w'))

if __name__ == '__main__':
    main()

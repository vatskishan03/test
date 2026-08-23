"""Production: msolve-feasibility across sampled FULL-(6,2) supports."""
import sys, json, random, time, multiprocessing, subprocess
import sympy as sp
sys.path.insert(0, '/Users/kishan/mqg/lab')
from d2_full_hunt import build_eqs
PAIRS = [(i,j) for i in range(6) for j in range(i+1,6)]

def norm(e): return tuple(sorted(e))

def build_int2key():
    d = {}
    for a in range(2):
        for b in range(2):
            for ei, e in enumerate(PAIRS):
                d[(a*2+b)*15+ei] = ((a,b), e)
    return d
INT2KEY = build_int2key()

def worker(job):
    wi, sup_list = job
    try:
        sup = set()
        for k in sup_list:
            sup.add(((k[0], k[1]), norm(k[2])))
        eqs_full = build_eqs()
        keep = []
        for eq in eqs_full:
            terms = []
            for t in eq['t']:
                ks = [INT2KEY[k] for k in t]
                if all(k in sup for k in ks):
                    terms.append(t)
            if eq['target'] == 0:
                if terms:
                    keep.append({'t': terms, 'target': 0})
            else:
                if not terms:
                    return wi, 'DEAD(mono-empty)'
                keep.append({'t': terms, 'target': 1})
        keys = sorted({k for eq in keep for t in eq['t'] for k in t}, key=repr)
        idx = {k: i+1 for i, k in enumerate(keys)}
        lines = [",".join(f"x{i}" for i in range(1, len(keys)+1)), "0"]
        polys = []
        for eq in keep:
            expr_terms = []
            for t in eq['t']:
                mons = []
                for k, cf in sorted(t.items()):
                    cfs = sp.Integer(cf)
                    s = f"{cfs}*x{idx[k]}" if cfs != 1 else f"x{idx[k]}"
                    mons.append(s)
                expr_terms.append("*".join(mons))
            poly = "+".join(expr_terms)
            if eq['target']:
                poly += f"-{eq['target']}"
            polys.append(poly)
        lines.append(",\n".join(polys))
        open(f'/tmp/ms_in_{wi}.txt', 'w').write("\n".join(lines) + "\n")
        r = subprocess.run(['msolve', '-f', f'/tmp/ms_in_{wi}.txt'],
                           capture_output=True, timeout=120, text=True)
        if r.returncode != 0:
            return wi, f'MSOLVE-ERR {r.stderr[:40]}'
        out = r.stdout.strip()
        # msolve prints dimension/solution info; empty list => infeasible
        if out.startswith('[-1]') or out == '' or out.split('\n')[0].strip() in ('', '-1'):
            return wi, 'DEAD(msolve-empty)'
        return wi, 'ALIVE:' + out[:60].replace('\n', '|')
    except subprocess.TimeoutExpired:
        return wi, 'TIMEOUT'
    except Exception as ex:
        return wi, f'ERROR {type(ex).__name__}: {str(ex)[:50]}'

def main():
    data = json.load(open('/Users/kishan/mqg/lab/d2f_supports.json'))
    print("supports:", len(data), flush=True)
    rnd = random.Random(int(sys.argv[1]) if len(sys.argv) > 1 else 11)
    n = min(len(data), int(sys.argv[2]) if len(sys.argv) > 2 else 2000)
    idxs = rnd.sample(range(len(data)), n)
    jobs = [(i, data[i]) for i in idxs]
    ctx = multiprocessing.get_context('fork')
    t0 = time.time()
    alive = []; dead = 0; errs = 0
    with ctx.Pool(processes=8, maxtasksperchild=32) as pool:
        for wi, st in pool.imap_unordered(worker, jobs, chunksize=2):
            if st.startswith('DEAD'): dead += 1
            elif st.startswith('ALIVE'):
                alive.append((wi, st))
                print("ALIVE!!!", wi, st[:70], flush=True)
            else:
                errs += 1
                if errs <= 5: print("ERR:", wi, st[:60], flush=True)
            if (dead + len(alive) + errs) % 100 == 0:
                print(f"[{time.time()-t0:.0f}s] done={dead+len(alive)+errs} "
                      f"dead={dead} alive={len(alive)} err={errs}", flush=True)
    print(f"\nFINAL ({time.time()-t0:.0f}s): tested={dead+len(alive)+errs} "
          f"dead={dead} ALIVE={len(alive)} errors={errs}", flush=True)
    json.dump({str(wi): st for wi, st in alive},
              open('/Users/kishan/mqg/lab/d2f_msolve_alive.json', 'w'))
    print("saved d2f_msolve_alive.json")

if __name__ == '__main__':
    main()

"""EXTENSION HUNT v1: seed from alive (6,2)-solutions, optimize FULL (6,3) system.

If any seed converges to residual ~0 => exact verification => COUNTEREXAMPLE.
"""
import sys, json, time
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
import itertools

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
EIDX = {e: k for k, e in enumerate(PAIRS)}

def pm_list():
    def rec(rem):
        if not rem: yield []; return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            p = rest[k]; r2 = rest[:k] + rest[k+1:]
            for m in rec(r2): yield [(f, p)] + m
    return list(rec(VERTS))
PMS = pm_list()

def sidx(ci, cj, p, q):
    """slot: colour ci at vertex p, colour cj at vertex q -> var index 0..134"""
    return (ci * 3 + cj) * 15 + EIDX[(min(p, q), max(p, q))]

NV = 135

def build_eqs():
    eqs = []
    for iota in itertools.product(range(3), repeat=6):
        target = 1 if len(set(iota)) == 1 else 0
        terms = []
        for m in PMS:
            ks = [sidx(iota[a], iota[b], a, b) for (a,b) in m]
            terms.append(dict(zip(ks, [1]*len(ks))))
        eqs.append({'t': terms, 'target': target})
    return eqs
EQS = build_eqs()

def loss_grad(x, eqs):
    R = np.zeros(len(eqs), dtype=complex)
    g = np.zeros(NV, dtype=complex)
    for i, eq in enumerate(eqs):
        tot = -eq['target']
        r_terms = []
        for t in eq['t']:
            p = 1.0+0j
            for k in t: p *= x[k]
            tot += p
            r_terms.append((t, p))
        R[i] = tot
        r = tot
        if r == 0: continue
        for t, p in r_terms:
            ks = list(t)
            prods = [x[k] for k in ks]
            for pos, k in enumerate(ks):
                d = 1.0+0j
                for q, pp in enumerate(prods):
                    if q != pos: d *= pp
                g[k] += 2*np.conj(r)*d
    return float(np.sum(np.abs(R)**2)), g

def load_alive():
    data = json.load(open('/Users/kishan/mqg/lab/d2f_msolve_alive.json'))
    outs = []
    for wi, st in data.items():
        # st contains msolve output; we don't have the actual support saved here,
        # so use random seeds instead — placeholder for structured seeding later.
        pass
    return len(data)

if __name__ == '__main__':
    n_alive = load_alive()
    print(f"banked alive supports: {n_alive} (using randomized seeds v1)", flush=True)
    eqs = EQS
    rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv)>1 else 0)
    trials = int(sys.argv[2]) if len(sys.argv)>2 else 100
    bestall = 1e30
    for tr in range(trials):
        x = (rng.normal(size=NV)+1j*rng.normal(size=NV))*0.5
        lr = 2e-2
        best = 1e30
        for step in range(600):
            L,g = loss_grad(x,eqs)
            best = min(best,L)
            n = np.linalg.norm(g)
            if n < 1e-16: break
            xn = x - lr*g/n
            Ln,_ = loss_grad(xn,eqs)
            if Ln < L: x,lr = xn,min(lr*1.08,0.5)
            else:
                lr *= 0.55
                if lr<1e-13: break
            if best < 1e-20: break
        bestall = min(bestall, best)
        if (tr+1)%10==0:
            print(f"trial {tr+1}: global-best {bestall:.3e}", flush=True)
        if bestall < 1e-18:
            print("CANDIDATE FOUND!!!", flush=True)
            np.save('/Users/kishan/mqg/lab/d3_candidate.npy', x)
            break
    print("GLOBAL BEST:", bestall)

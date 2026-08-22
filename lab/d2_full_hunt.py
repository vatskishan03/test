"""COMPLETE (6,2) system: 60 vars (4 slot-types x 15 edges), 64 profile equations.
Numerical hunt first (cheap), then exact verification of any candidate.
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]

def pm_list():
    def rec(rem):
        if not rem: yield []; return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            p = rest[k]; r2 = rest[:k] + rest[k+1:]
            for m in rec(r2): yield [(f, p)] + m
    return list(rec(VERTS))
PMS = pm_list()

def vidx(iota_pair):
    """slot key (a,b) colours at (small,big) endpoint -> var index 0..59"""
    (a, b) = iota_pair
    return ((a * 2 + b)) # 0..3 ; times 15 edges later

KEYS = [(a, b) for a in range(2) for b in range(2)]
def kidx(e, a, b):
    ei = PAIRS.index(tuple(sorted((e[0], e[1]))))
    return (a * 2 + b) * 15 + ei

NV = 60

def build_eqs():
    eqs = []
    for iota in itertools.product(range(2), repeat=6):
        target = 1 if len(set(iota)) == 1 else 0
        terms = []
        for m in PMS:
            ks = [kidx((min(a,b), max(a,b)), iota[a], iota[b]) for (a, b) in m]
            terms.append(dict(zip(ks, [1]*len(ks))))
        eqs.append({'t': terms, 'target': target})
    return eqs

def residual(x, eqs):
    R = np.zeros(len(eqs), dtype=complex)
    for i, eq in enumerate(eqs):
        tot = -eq['target']
        for t in eq['t']:
            p = 1.0+0j
            for k in t: p *= x[k]
            tot += p
        R[i] = tot
    return R

def loss_grad(x, eqs):
    R = residual(x, eqs)
    L = float(np.sum(np.abs(R)**2))
    g = np.zeros(NV, dtype=complex)
    for i, eq in enumerate(eqs):
        r = R[i]
        if r == 0: continue
        for t in eq['t']:
            ks = list(t)
            prods = [x[k] for k in ks]
            for pos, k in enumerate(ks):
                d = 1.0+0j
                for q, p in enumerate(prods):
                    if q != pos: d *= p
                g[k] += 2*np.conj(r)*d
    return L, g

def hunt(seed, steps=1500):
    rng = np.random.default_rng(seed)
    x = (rng.normal(size=NV)+1j*rng.normal(size=NV))*0.7
    lr = 2e-2
    best = 1e30
    eqs = EQS
    for it in range(steps):
        L,g = loss_grad(x,eqs)
        best = min(best,L)
        n = np.linalg.norm(g)
        if n < 1e-16: break
        xn = x - lr*g/n
        Ln,_ = loss_grad(xn,eqs)
        if Ln < L: x,lr = xn,min(lr*1.08,0.5)
        else:
            lr *= 0.55
            if lr < 1e-13: break
        if best < 1e-20: break
    return best, x

EQS = build_eqs()
print(f"equations: {len(EQS)} vars: {NV}", flush=True)

if __name__ == '__main__':
    bestall = 1e30
    bx = None
    for s in range(int(sys.argv[1]) if len(sys.argv)>1 else 40):
        b, x = hunt(s)
        if b < bestall: bestall, bx = b, x.copy()
        print(f"seed {s}: best {b:.3e} (global {bestall:.3e})", flush=True)
        if bestall < 1e-18:
            np.save('/Users/kishan/mqg/lab/d2_candidate.npy', x)
            print("CANDIDATE (6,2) SOLUTION SAVED", flush=True)
            break

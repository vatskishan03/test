"""Value-level feasibility per surviving cc-support (numerical stage).

For each SAT-witness support triple, run gradient descent on the full pure-cc
residual restricted to that support. Collapse toward 0 => candidate solution
(verify exactly). Universal stalls => evidence + target list for exact algebra.
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
from orbits import dpll_model
from purecc_sat2 import build, PAIRS, PIDX, COLORS, var

def pm_list():
    def rec(rem):
        if not rem:
            yield []
            return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            partner = rest[k]
            rem2 = rest[:k] + rest[k+1:]
            for m in rec(rem2):
                yield [(f, partner)] + m
    return list(rec(list(range(6))))
PMS = pm_list()

def internal_matchings(S4):
    s0,s1,s2,s3 = S4
    return [[tuple(sorted((s0,s1))), tuple(sorted((s2,s3)))],
            [tuple(sorted((s0,s2))), tuple(sorted((s1,s3)))],
            [tuple(sorted((s0,s3))), tuple(sorted((s1,s2)))]]

THIRDS = {(0,1):2,(0,2):1,(1,2):0}

def build_support_equations(support):
    """support: set of (c,e). Returns list of equations as (coef_dict, kind):
       kind 'sum': sum(coef*var) - target = 0  (linear! none here)
       kind 'prod': product of vars = 0        (222)
       kind 'haf':  sum of two-var products = 0 (V conditions)
    Represented uniformly as multilinear terms: list of (list_of_varkeys, ) meaning sum of products == target.
    """
    eqs = []   # each: dict {target: c} , target scalar
    # (M_c): sum over matchings of triple products == 1
    for c in COLORS:
        acc = {}
        for m in PMS:
            ks = [(c, tuple(sorted(e))) for e in m]
            if not all(k in support for k in ks):
                continue
            key = frozenset(ks)
            acc[key] = acc.get(key, 0) + 1
        eqs.append({'terms': [{k:1 for k in k_} for k_ in acc.keys()],
                    'target': 1})
    # (V_cd): X_d(T) != 0 => haf^c(T) = 0 : encoded as PRODUCT X_d(T)*haf^c(T) == 0
    # keep product form: term1 = var X_d(T); term2..4 = pairing products
    v_eqs = []
    for T in PAIRS:
        S = [w for w in range(6) if w not in T]
        ims = internal_matchings(S)
        for d in COLORS:
            if (d, T) not in support:
                continue
            for c in COLORS:
                if c == d: continue
                terms = [{(d,T):1}]
                for pm in ims:
                    ks = [(c, e) for e in pm]
                    if all(k in support for k in ks):
                        terms.append({k:1 for k in ks})
                v_eqs.append({'terms': terms, 'target': 0})
    eqs += v_eqs
    # (222): distinct colors on matching: product == 0
    for m in PMS:
        es = [tuple(sorted(e)) for e in m]
        for perm in itertools.permutations(COLORS):
            ks = [(perm[i], es[i]) for i in range(3)]
            if all(k in support for k in ks):
                eqs.append({'terms':[{k:1 for k in ks}], 'target':0})
    return eqs

def vars_of(eqs):
    s = set()
    for eq in eqs:
        for t in eq['terms']:
            s |= set(t)
    return sorted(s)

def eval_system(x, eqmap):
    """x: dict key->complex. returns residual vector"""
    R = []
    for eq in eqmap:
        tot = -eq['target']
        for t in eq['terms']:
            p = 1.0+0j
            for k in t: p *= x[k]
            tot += p
        R.append(tot)
    return np.array(R)

def loss_grad(x, eqs, keys):
    xi = {k: x[i] for i,k in enumerate(keys)}
    R = eval_system(xi, eqs)
    L = float(np.sum(np.abs(R)**2))
    g = np.zeros(len(keys), dtype=complex)
    for ri, eq in enumerate(eqs):
        r = R[ri]
        if r == 0: continue
        for t in eq['terms']:
            ks = list(t)
            prods = [xi[k] for k in ks]
            full = 1.0+0j
            for p in prods: full *= p
            for pos,k in enumerate(ks):
                d = 1.0+0j
                for q,p in enumerate(prods):
                    if q!=pos: d*=p
                gi = keys.index(k)
                g[gi] += 2*np.conj(r)*d
    return L, g

def hunt(eqs, keys, seed, steps=800):
    rng = np.random.default_rng(seed)
    x = (rng.normal(size=len(keys))+1j*rng.normal(size=len(keys)))*0.6
    lr = 3e-2
    best = 1e30
    for it in range(steps):
        L,g = loss_grad(x,eqs,keys)
        best = min(best,L)
        n = np.linalg.norm(g)
        if n < 1e-16: break
        xn = x - lr*g/n
        Ln,_ = loss_grad(xn,eqs,keys)
        if Ln < L: x,lr = xn,min(lr*1.08,0.6)
        else:
            lr *= 0.55
            if lr<1e-13: break
        if best < 1e-22: break
    return best

def get_witnesses(n=12):
    from orbits import dpll_model
    from purecc_sat2 import build
    clauses, nv = build(with_E=True)
    cls = [list(c) for c in clauses]
    out = []
    for i in range(n):
        m = dpll_model(cls)
        if m is None: break
        sup = {(c,e) for c in COLORS for e in PAIRS if m.get(var(c,e),False)}
        out.append(sup)
        cls.append([-v if m.get(v,False) else v for v in range(1,46)])
    return out

if __name__=='__main__':
    witnesses = get_witnesses(10)
    print(f"supports: {len(witnesses)}")
    for wi, sup in enumerate(witnesses):
        eqs = build_support_equations(sup)
        keys = vars_of(eqs)
        neq = len(eqs)
        bestall = 1e30
        for s in range(3):
            b = hunt(eqs, keys, seed=wi*7+s)
            bestall = min(bestall,b)
        sizes = {c: len([1 for (cc,e) in sup if cc==c]) for c in range(3)}
        print(f"witness {wi}: |vars|={len(keys)} |eqs|={neq} supports={sizes} "
              f"best_residual={bestall:.3e}", flush=True)

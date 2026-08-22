"""Round 2: SOUND support encoding of the pure-cc system.

Families (all sound single-product consequences):
 A) per color: EXISTS supported perfect matching            [mono=1 needs one term]
 C) per matching M={P,Q,R}, distinct colors a,b,c: NOT(x[aP]x[bQ]x[cR])
 E) NEW: bicolor-division conditions. If pair T carries BOTH colors c,d
    (aux var b_{T,cd} = x[c,T] & x[d,T]) and f is the third color, then for every
    internal pairing {P,Q} of S(T):  NOT(b & x[d,P] & x[f,Q])  [+ 3 more orientations]
    (derived by dividing the (222) product on matching {T,P,Q} by X_c(T) resp X_d(T))

UNSAT here => pure-cc infeasible => Case-(1a) closed soundly.
"""
import sys, itertools
sys.setrecursionlimit(100000)

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
PIDX = {e: k for k, e in enumerate(PAIRS)}
COLORS = (0, 1, 2)

def var(c, e):
    # 1-based CNF variable: 1..45
    return 3 * PIDX[e] + c + 1

def pm_list():
    def rec(rem):
        if not rem:
            yield []
            return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            partner = rest[k]
            rem2 = rest[:k] + rest[k + 1:]
            for m in rec(rem2):
                yield [(f, partner)] + m
    return list(rec(VERTS))

PMS = pm_list()
THIRDS = {(0, 1): 2, (0, 2): 1, (1, 2): 0}

def internal_matchings(S4):
    s0, s1, s2, s3 = S4
    return [[tuple(sorted((s0, s1))), tuple(sorted((s2, s3)))],
            [tuple(sorted((s0, s2))), tuple(sorted((s1, s3)))],
            [tuple(sorted((s0, s3))), tuple(sorted((s1, s2)))]]

def build(with_E=True):
    clauses = []
    nv = 45
    def newvar():
        nonlocal nv
        nv += 1
        return nv

    # A) exists supported PM per color
    for c in COLORS:
        ors = []
        for m in PMS:
            a = newvar()
            es = [tuple(sorted(e)) for e in m]
            for e in es:
                clauses.append([-a, var(c, e)])
            clauses.append([a] + [-var(c, e) for e in es])
            ors.append(a)
        clauses.append(ors)

    # C) 222
    for m in PMS:
        es = [tuple(sorted(e)) for e in m]
        for perm in itertools.permutations(COLORS):
            clauses.append([-var(perm[i], es[i]) for i in range(3)])

    if with_E:
        for T in PAIRS:
            S = [w for w in VERTS if w not in T]
            ims = internal_matchings(S)
            for (c, d) in ((0, 1), (0, 2), (1, 2)):
                f = THIRDS[(c, d)]
                b = newvar()
                clauses.append([-b, var(c, T)])
                clauses.append([-b, var(d, T)])
                clauses.append([b, -var(c, T), -var(d, T)])
                for pm in ims:
                    (p1, q1) = pm
                    clauses.append([-b, -var(d, p1), -var(f, q1)])
                    clauses.append([-b, -var(d, q1), -var(f, p1)])
                    clauses.append([-b, -var(c, p1), -var(f, q1)])
                    clauses.append([-b, -var(c, q1), -var(f, p1)])
    return clauses, nv

def dpll_sat(clauses, nv):
    def assign(clauses, val):
        out = []
        for cl in clauses:
            sat = False; new = []
            for l in cl:
                v = abs(l); vv = val.get(v)
                if vv is not None:
                    if (l > 0 and vv) or (l < 0 and not vv):
                        sat = True; break
                else:
                    new.append(l)
            if sat: continue
            if not new: return None
            out.append(new)
        return out

    def solve(clauses, val):
        changed = True
        while changed:
            changed = False
            units = [cl[0] for cl in clauses if len(cl) == 1]
            for u in units:
                v, vv = (u, True) if u > 0 else (-u, False)
                if v in val:
                    if val[v] != vv: return None
                else:
                    val[v] = vv; changed = True
                res = assign(clauses, val)
                if res is None: return None
                clauses = res
        if not clauses: return val
        from collections import Counter
        cnt = Counter(abs(l) for cl in clauses for l in cl)
        v = max(cnt, key=cnt.get)
        for vv in (True, False):
            t = dict(val); t[v] = vv
            res = assign(clauses, t)
            if res is None: continue
            r = solve(res, t)
            if r is not None: return r
        return None

    return solve(list(clauses), {})

if __name__ == '__main__':
    import time
    for with_E in (False, True):
        cls, nv = build(with_E)
        t0 = time.time()
        sat = dpll_sat(cls, nv)
        print(f"with_E={with_E}: vars={nv} clauses={len(cls)} -> "
              f"{'SAT' if sat else 'UNSAT'} ({time.time()-t0:.1f}s)", flush=True)
        if not sat and with_E:
            print(">>> PURE-CC INFEASIBLE AT SUPPORT LEVEL (ALL CLAUSES SOUND) <<<")
            print(">>> CASE (1a) CLOSED <<<")

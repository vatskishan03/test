"""SAT encoding of the support-level necessary conditions of the pure-cc system.

Variables: x[(c,e)] in {0,1} meaning "weight of color c on pair e is nonzero".
Clauses (all sound consequences of EqSystemN(6,3) under bicolor==0):

 A) For each color c there EXISTS a perfect matching entirely inside G_c.
    (mono sum = 1 != 0 forces at least one fully-supported matching term)
 B) For each pair T, colors c!=d, and each internal matching {e1,e2} of S(T)=V-T:
    NOT(x[d,T] AND x[c,e1] AND x[c,e2]).
    (from X_d(T)*haf_{S(T)}(X_c)=0)
 C) For each perfect matching M={P,Q,R} and distinct colors a,b,c:
    NOT(x[a,P] AND x[b,Q] AND x[c,R]).

UNSAT here proves pure-cc infeasibility => Case-(1a) patterns die in bulk.
"""
import sys, itertools
sys.setrecursionlimit(10000)

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
PIDX = {e: k for k, e in enumerate(PAIRS)}
COLORS = (0, 1, 2)

def var(c, e):
    return 3 * PIDX[e] + c          # 0..44

def pm_list():
    verts = list(range(6))
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
    return list(rec(verts))

PMS = pm_list()
assert len(PMS) == 15

def internal_matchings(S4):
    s0, s1, s2, s3 = S4
    return [[(s0, s1), (s2, s3)], [(s0, s2), (s1, s3)], [(s0, s3), (s1, s2)]]

def build_clauses():
    clauses = []
    # --- A) exists supported perfect matching per color (Tseitin) ---
    aux_of = {}
    nv = 45
    def newvar():
        nonlocal nv
        nv += 1
        return nv
    for c in COLORS:
        ors = []
        for mi, m in enumerate(PMS):
            a = newvar()
            aux_of[(c, mi)] = a
            es = [tuple(sorted(e)) for e in m]
            for e in es:
                clauses.append([-a, var(c, e)])              # a -> x
            clauses.append([a] + [-var(c, e) for e in es])   # a <- AND x
            ors.append(a)
        clauses.append(ors[:])                                # OR of aux
    # --- B) V_cd conditions ---
    for Ti, T in enumerate(PAIRS):
        u, v = T
        S = [w for w in VERTS if w not in T]
        for c in COLORS:
            for d in COLORS:
                if c == d:
                    continue
                for mm in internal_matchings(S):
                    e1 = tuple(sorted(mm[0])); e2 = tuple(sorted(mm[1]))
                    clauses.append([-var(d, T), -var(c, e1), -var(c, e2)])
    # --- C) 222 conditions ---
    for m in PMS:
        es = [tuple(sorted(e)) for e in m]
        for perm in itertools.permutations(COLORS):
            clauses.append([-var(perm[i], es[i]) for i in range(3)])
    return clauses, nv

def dpll(clauses, nv):
    """Simple DPLL with unit propagation; returns True if satisfiable."""
    def assign_literal(clauses, lit_val):
        """lit_val: dict var->bool. Simplify."""
        out = []
        for cl in clauses:
            sat = False
            new = []
            for l in cl:
                v = abs(l)
                val = lit_val.get(v)
                if val is not None:
                    if (l > 0 and val) or (l < 0 and not val):
                        sat = True
                        break
                    else:
                        continue  # false literal, drop
                else:
                    new.append(l)
            if sat:
                continue
            if not new:
                return None      # conflict
            out.append(new)
        return out

    def unit_prop(clauses, lit_val):
        changed = True
        while changed:
            changed = False
            units = [cl[0] for cl in clauses if len(cl) == 1]
            for u in units:
                v, val = (u, True) if u > 0 else (-u, False)
                if v in lit_val:
                    if lit_val[v] != val:
                        return None, None   # conflict
                else:
                    lit_val[v] = val
                    changed = True
                res = assign_literal(clauses, lit_val)
                if res is None:
                    return None, None
                clauses = res
        return clauses, lit_val

    def solve(clauses, lit_val):
        clauses, lit_val = unit_prop(list(clauses), dict(lit_val))
        if clauses is None:
            return False
        if not clauses:
            return True
        # choose most frequent variable
        from collections import Counter
        cnt = Counter(abs(l) for cl in clauses for l in cl)
        v = max(cnt, key=cnt.get)
        for val in (True, False):
            trial = dict(lit_val); trial[v] = val
            res = assign_literal(clauses, trial)
            if res is None:
                continue
            if solve(res, trial):
                return True
        return False

    return solve(clauses, {})

if __name__ == '__main__':
    clauses, nv = build_clauses()
    print(f"vars: {nv} (45 real + tseitin), clauses: {len(clauses)}")
    import time
    t0 = time.time()
    sat = dpll(clauses, nv)
    print(f"SAT result: {'SATISFIABLE' if sat else 'UNSATISFIABLE'}  ({time.time()-t0:.1f}s)")
    if not sat:
        print(">>> PURE-CC SYSTEM INFEASIBLE AT SUPPORT LEVEL — CASE (1a) CLOSED <<<")

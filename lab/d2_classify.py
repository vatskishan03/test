"""(6,2) SOLUTION CLASSIFIER — the lever for Battle 3.

Any EqSystemN(6,3) solution restricts to an EqSystemN(6,2) solution on each colour
pair. Classify ALL (6,2) solutions:
  Stage 1: pysat enumeration of supports satisfying SOUND clauses:
     A' : each colour class contains a perfect matching          [mono=1 needs a term]
     L' : Theorem-B(D=2): every vertex has a column-0 locker AND a column-1
          locker among its incident edges (distinct edges)
     E2 : bicolor-division conditions (both colours on an edge => cross rules)
  Stage 2: exact Groebner per orbit on the (6,2) value system
     (mono = 1 per colour; V-family products = 0).
Survivors == the complete classification (up to S2 x S6 symmetry + gauges).
"""
import sys, itertools, time, json
sys.path.insert(0, '/Users/kishan/mqg/lab')
import numpy as np
from pysat.solvers import Cadical153

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
COLORS = (0, 1)

def var(c, e):
    """1..30"""
    return 2 * PAIRS.index(e) + c + 1

NV = 30

def build_clauses():
    global NV
    clauses = []
    def newvar():
        global NV
        NV += 1
        return NV
    # A': PM per colour
    def pms():
        def rec(rem):
            if not rem: yield []; return
            f, rest = rem[0], rem[1:]
            for k in range(len(rest)):
                p = rest[k]; r2 = rest[:k] + rest[k+1:]
                for m in rec(r2): yield [(f, p)] + m
        return list(rec(VERTS))
    PMS = list(pms())
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
    # L': per vertex, per colour: exists incident edge whose OTHER-colour column
    #     is empty AND own column nonempty.
    #     column c of edge e nonempty <=> x[0,e] or x[1,e] (for c) supported...
    #     define: locker(c,e) := (no colour-c'!=c weight supported on e) AND
    #             (at least one weight in column c supported)
    #     For D=2: column c of edge {p,q} holds w(p,q; .,c): entries (0,c),(1,c).
    #     "column c empty" <=> NOT x[0,e] AND NOT x[1,e].
    #     "own column nonempty" <=> x[0,e] OR x[1,e]   -- but if other colour empty,
    #     this reduces to x[c,e]. So locker(c,e) <=> NOT x[o(e)] AND x[c,e],
    #     o = other colour. Encode aux l[c,e] per (c,e); then per vertex disjunction.
    for c in COLORS:
        o = 1 - c
        lock_or = []
        for e in PAIRS:
            l = newvar()
            clauses.append([-l, -var(o, e)])
            clauses.append([-l, var(c, e)])
            clauses.append([l, var(o, e), -var(c, e)])
            lock_or.append(l)
        for v in VERTS:
            inc = [lock_or[PAIRS.index(e)] for e in PAIRS if v in e]
            clauses.append(inc[:])
    # E2: both colours on an edge => for every internal pairing {P,Q} of S(T):
    #     NOT(x[c,P] & x[d,Q]) and NOT(x[d,P] & x[c,Q]) for distinct c,d
    #     (division by either edge weight; third colour doesn't exist in D=2)
    for T in PAIRS:
        S = [w for w in VERTS if w not in T]
        s0, s1, s2, s3 = S
        ims = [[tuple(sorted((s0, s1))), tuple(sorted((s2, s3)))],
               [tuple(sorted((s0, s2))), tuple(sorted((s1, s3)))],
               [tuple(sorted((s0, s3))), tuple(sorted((s1, s2)))]]
        b = newvar()
        clauses.append([-b, var(0, T)])
        clauses.append([-b, var(1, T)])
        clauses.append([b, -var(0, T), -var(1, T)])
        for pm in ims:
            p1, q1 = pm
            clauses.append([-b, -var(0, p1), -var(1, q1)])
            clauses.append([-b, -var(1, p1), -var(0, q1)])
    return clauses

def support_of(model):
    pos = set(l for l in model if l > 0)
    return frozenset((c, e) for c in COLORS for e in PAIRS if var(c, e) in pos)

def main(cap=2_000_000):
    clauses = build_clauses()
    print(f"clauses: {len(clauses)}", flush=True)
    sups = {}
    t0 = time.time()
    exhausted = False
    with Cadical153(bootstrap_with=clauses) as s:
        while s.solve():
            model = s.get_model()
            sup = support_of(model)
            sups[sup] = sups.get(sup, 0) + 1
            pos = set(l for l in model if l > 0)
            block = [-var(c, e) if var(c, e) in pos else var(c, e)
                     for c in COLORS for e in PAIRS]
            s.add_clause(block)
            if len(sups) % 25000 == 0:
                print(f"[{time.time()-t0:.0f}s] distinct={len(sups)}", flush=True)
                out = [sorted([[c, list(e)] for (c,e) in sup]) for sup in sups]
                json.dump(out, open('/Users/kishan/mqg/lab/d2_supports.json','w'))
            if len(sups) >= cap:
                break
        else:
            exhausted = True
    print(f"DONE exhausted={exhausted}: distinct (6,2) supports = {len(sups)} "
          f"({time.time()-t0:.0f}s)", flush=True)
    out = [sorted([[c, list(e)] for (c, e) in sup]) for sup in sups]
    json.dump(out, open('/Users/kishan/mqg/lab/d2_supports.json', 'w'))
    print("saved d2_supports.json")

if __name__ == '__main__':
    main()

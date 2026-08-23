"""COMPLETE (6,2) support-SAT: 60 real variables (4 slot-types x 15 edges).
Sound clause families:
  A'  : each colour class contains a supported perfect matching (cc-slots)
  L'  : Theorem B(D=2): every vertex v has, for each colour c, an incident edge
        whose supported slots all carry far-colour c (a far-locker), nonempty
  E2' : both colours cc-supported on an edge => cross-pairing products forbidden
        (division identity within D=2)
Enumerate ALL models -> distinct supports -> GB per orbit vs FULL 64-eq system.
"""
import sys, itertools, time, json
sys.path.insert(0, '/Users/kishan/mqg/lab')

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
COLORS = (0, 1)

def var(i, j, p, q):
    """slot: colour i at min(p,q)=p_, colour j at q_. Index 1..60."""
    p_, q_ = min(p, q), max(p, q)
    ei = PAIRS.index((p_, q_))
    return (i * 2 + j) * 15 + ei + 1

NV = 60

def build_clauses():
    clauses = []
    nv = NV
    def newvar():
        nonlocal nv
        nv += 1
        return nv
    def pms():
        def rec(rem):
            if not rem: yield []; return
            f, rest = rem[0], rem[1:]
            for k in range(len(rest)):
                p = rest[k]; r2 = rest[:k] + rest[k+1:]
                for m in rec(r2): yield [(f, p)] + m
        return list(rec(VERTS))
    PMS = list(pms())
    # A': per colour, EXISTS perfect matching entirely in (c,c)-slots
    for c in COLORS:
        ors = []
        for m in PMS:
            a = newvar()
            ks = [var(c, c, p, q) for (p, q) in m]
            for k in ks:
                clauses.append([-a, k])
            clauses.append([a] + [-k for k in ks])
            ors.append(a)
        clauses.append(ors)
    # L': far-lockers
    for v in VERTS:
        others = [u for u in VERTS if u != v]
        for c in COLORS:
            o = 1 - c
            ors = []
            for u in others:
                l = newvar()
                # l => NOT supported (c,o) and NOT (o,o)   [far colour must be c]
                clauses.append([-l, -var(c, o, v, u)])
                clauses.append([-l, -var(o, o, v, u)])
                # l => supported (0,c) OR (1,c)
                clauses.append([-l, var(0, c, v, u), var(1, c, v, u)])
                # reverse implications for exactness not needed for soundness
                ors.append(l)
            clauses.append(ors)
    # E2': both cc colours on edge {p,q} => for internal pairings {P,Q} of S(p,q):
    #      NOT( x^{0}_{P} & x^{1}_{Q} ) and NOT( x^{1}_{P} & x^{0}_{Q} )
    #      (slots here are (c,c)-type on those edges)
    for (p, q) in PAIRS:
        S = [w for w in VERTS if w not in (p, q)]
        s0, s1, s2, s3 = S
        ims = [[(s0, s1), (s2, s3)], [(s0, s2), (s1, s3)], [(s0, s3), (s1, s2)]]
        b = newvar()
        clauses.append([-b, var(0, 0, p, q)])
        clauses.append([-b, var(1, 1, p, q)])
        clauses.append([b, -var(0, 0, p, q), -var(1, 1, p, q)])
        for pm in ims:
            (a1, b1), (a2, b2) = pm
            for X, Y in (((0, 0), (1, 1)),):
                clauses.append([-b,
                                -var(X[0], X[1], min(a1,b1), max(a1,b1)),
                                -var(Y[0], Y[1], min(a2,b2), max(a2,b2))])
                clauses.append([-b,
                                -var(Y[0], Y[1], min(a1,b1), max(a1,b1)),
                                -var(X[0], X[1], min(a2,b2), max(a2,b2))])
    return clauses

def main(cap=3_000_000):
    from pysat.solvers import Cadical153
    clauses = build_clauses()
    print(f"clauses: {len(clauses)}", flush=True)
    sups = {}
    t0 = time.time()
    exhausted = False
    with Cadical153(bootstrap_with=clauses) as s:
        it = 0
        while s.solve():
            it += 1
            model = s.get_model()
            pos = set(l for l in model if l > 0)
            sup = frozenset((i, j, p, q) for i in range(2) for j in range(2)
                            for (p, q) in PAIRS if var(i, j, p, q) in pos)
            if sup not in sups:
                sups[sup] = 0
            sups[sup] += 1
            block = [-k if k in pos else k for k in range(1, NV + 1)]
            s.add_clause(block)
            if len(sups) % 20000 == 0:
                print(f"[{time.time()-t0:.0f}s] models={it} distinct supports={len(sups)}",
                      flush=True)
                out = [sorted([[k[0], k[1], [k[2], k[3]]] for k in sup])
                       for sup in sups]
                json.dump(out, open('/Users/kishan/mqg/lab/d2f_supports.json', 'w'))
            if len(sups) >= cap:
                break
        else:
            exhausted = True
    print(f"DONE exhausted={exhausted}: distinct supports = {len(sups)} "
          f"({time.time()-t0:.0f}s)", flush=True)
    out = []
    for sup in sups:
        out.append(sorted([[k[0], k[1], [k[2], k[3]]] for k in sup]))
    json.dump(out, open('/Users/kishan/mqg/lab/d2f_supports.json', 'w'))
    print("saved final d2f_supports.json")

if __name__ == '__main__':
    main()

"""(6,2) value-system builder + Groebner verdict per support.
Equations: mono_c = 1 (c in {0,1}); V-family products = 0.
"""
import sys
sys.path.insert(0, '/Users/kishan/mqg/lab')
import sympy as sp

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
COLORS = (0, 1)

def pm_list():
    def rec(rem):
        if not rem: yield []; return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            p = rest[k]; r2 = rest[:k] + rest[k+1:]
            for m in rec(r2): yield [(f, p)] + m
    return list(rec(VERTS))
PMS = pm_list()

def internal(S4):
    s0,s1,s2,s3 = S4
    return [[tuple(sorted((s0,s1))),tuple(sorted((s2,s3)))],
            [tuple(sorted((s0,s2))),tuple(sorted((s1,s3)))],
            [tuple(sorted((s0,s3))),tuple(sorted((s1,s2)))]]

def build_value_system(sup):
    """sup: set of (c,e). Returns (keys, eqs) with eqs = list of {'t':[ {var:coeff} ], 'target':int}"""
    slots = {(c, tuple(sorted(e))) for (c, e) in sup}
    def key(c, e): return (c, tuple(sorted(e)))
    eqs = []
    # mono per colour
    for c in COLORS:
        matchings = {}
        for m in PMS:
            ks = [key(c, e) for e in m]
            if not all(k in slots for k in ks): continue
            kk = tuple(ks)
            matchings[kk] = 1
        if not matchings:
            eqs.append({'t': [], 'target': 1})   # unsatisfiable directly
            continue
        terms = [{k: 1 for k in kk} for kk in matchings]   # one term per matching
        eqs.append({'t': terms, 'target': 1})
    # V-family: x_d(T) * (pairing product over S(T), colour c) == 0  (d != c)
    for T in PAIRS:
        S = [w for w in VERTS if w not in T]
        ims = internal(S)
        for d in COLORS:
            kT = key(d, T)
            if kT not in slots: continue
            for c in COLORS:
                if c == d: continue
                for pm in ims:
                    ks = [kT] + [key(c, e) for e in pm]
                    if all(k in slots for k in ks):
                        eqs.append({'t': [{k: 1 for k in ks}], 'target': 0})
    keys = sorted(slots, key=repr)
    return keys, eqs

def gb_verdict(sup):
    keys, eqs = build_value_system(sup)
    sym = {k: sp.Symbol(f'w{i}') for i, k in enumerate(keys)}
    polys = []
    for eq in eqs:
        expr = -sp.Integer(eq['target'])
        for t in eq['t']:
            p = sp.Integer(1)
            for k, cf in t.items():
                p *= cf * sym[k]
            expr += p
        g = sp.Poly(expr, *sym.values())
        if g.as_expr() != 0:
            polys.append(g)
    if not polys:
        return 'TRIVIAL'
    G = sp.groebner(polys, *sym.values(), order='lex')
    degs = [sp.Poly(p, *sym.values()).total_degree() for p in G.polys]
    if 0 in degs:
        return 'DEAD'
    return f'PROPER basis={len(G.polys)}'

if __name__ == '__main__':
    # sanity: hexagon support should be PROPER (a real solution!)
    hexagon = set()
    cyc = [(0,1),(1,2),(2,3),(3,4),(4,5),(5,0)]
    for i, e in enumerate(cyc):
        hexagon.add((i % 2, e))
    v = gb_verdict(hexagon)
    print("hexagon verdict:", v, "(expect PROPER)")

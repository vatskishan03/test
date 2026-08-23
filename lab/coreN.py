"""N-parameterized core for the extinction program.
Validate at N=6 against known results; then run N=8 censuses.
"""
import sys, itertools, random, time
from fractions import Fraction as F

class Core:
    def __init__(self, N, D=3):
        self.N = N
        self.D = D
        self.VERTS = list(range(N))
        self.PAIRS = [(i, j) for i in range(N) for j in range(i + 1, N)]
        self.PIDX = {e: k for k, e in enumerate(self.PAIRS)}

    def pms(self):
        def rec(rem):
            if not rem: yield []; return
            f, rest = rem[0], rest[1:]
            for k in range(len(rest)):
                p = rest[k]; r2 = rest[:k] + rest[k+1:]
                for m in rec(r2): yield [(f, p)] + m
        return list(rec(self.VERTS))

    def internal_matchings(self, S):
        S = list(S)
        def rec(rem):
            if not rem: yield []; return
            f, rest = rem[0], rem[1:]
            for k in range(len(rest)):
                p = rest[k]; r2 = rest[:k] + rest[k+1:]
                for m in rec(r2): yield [(f, p)] + m
        if not S:
            return [[]]
        return list(rec(S))

    # ---------- masks & patterns ----------
    def build_mask(self, pat):
        """pat: dict v -> triple of distinct forced neighbours."""
        ent = {(p, q): set(itertools.product(range(self.D), repeat=2))
               for (p, q) in self.PAIRS}
        for v, triple in pat.items():
            for c, u in enumerate(triple):
                key = (min(v, u), max(v, u))
                if v < u:
                    ent[key] = {(i, j) for (i, j) in ent[key] if j == c}
                else:
                    ent[key] = {(i, j) for (i, j) in ent[key] if i == c}
        return ent

    def serving_graphs(self, ent):
        out = {}
        for c in range(self.D):
            out[c] = [e for e in self.PAIRS if (c, c) in ent[e]]
        return out

    def has_pm(self, edges):
        adj = {v: set() for v in self.VERTS}
        for (a, b) in edges:
            adj[a].add(b); adj[b].add(a)
        def rec(av):
            if not av: return True
            v = min(av)
            for u in av:
                if u != v and u in adj[v]:
                    if rec(av - {v, u}): return True
            return False
        return rec(frozenset(self.VERTS))

    def passes(self, pat):
        ent = self.build_mask(pat)
        sg = self.serving_graphs(ent)
        return all(self.has_pm(sg[c]) for c in range(self.D))

    # ---------- world freedom ----------
    def world_freedom(self, ent, c, d):
        nodes = [(v, t) for v in self.VERTS for t in ('cd', 'dc')]
        nid = {n: k for k, n in enumerate(nodes)}
        parent = list(range(len(nodes)))
        def find(x):
            while parent[x] != x:
                parent[x] = parent[parent[x]]; x = parent[x]
            return x
        def union(a, b):
            ra, rb = find(a), find(b)
            if ra != rb: parent[ra] = rb
        E = 0
        for (p, q) in self.PAIRS:
            if (d, c) in ent[(p, q)]:
                union(nid[(p, 'cd')], nid[(q, 'dc')]); E += 1
            if (c, d) in ent[(p, q)]:
                union(nid[(q, 'cd')], nid[(p, 'dc')]); E += 1
        comp_v, comp_e = {}, {}
        for n in nodes:
            r = find(nid[n]); comp_v[r] = comp_v.get(r, 0) + 1
        for (p, q) in self.PAIRS:
            if (d, c) in ent[(p, q)]:
                r = find(nid[(p, 'cd')]); comp_e[r] = comp_e.get(r, 0) + 1
            if (c, d) in ent[(p, q)]:
                r = find(nid[(q, 'cd')]); comp_e[r] = comp_e.get(r, 0) + 1
        return sum(max(0, comp_e.get(r, 0) - comp_v[r]) for r in comp_v)

if __name__ == '__main__':
    import json
    # ---- VALIDATION at N=6 ----
    core6 = Core(6)
    rnd = random.Random(42)
    passed = 0
    typedist = {}
    for t in range(3000):
        pat = {}
        for v in range(6):
            ns = [u for u in range(6) if u != v]
            rnd.shuffle(ns); pat[v] = tuple(ns[:3])
        if core6.passes(pat):
            passed += 1
            ent = core6.build_mask(pat)
            fr = tuple(sorted(core6.world_freedom(ent, c, d)
                              for (c, d) in ((0,1),(0,2),(1,2))))
            typedist[fr] = typedist.get(fr, 0) + 1
    print(f"N=6 validation: {passed}/3000 pass (expect ~17%)")
    z = typedist.get((0,0,0), 0)
    print(f"N=6 freedom-(0,0,0) fraction: {100*z/max(passed,1):.1f}% (expect ~32%)")

    # ---- N=8 census estimate ----
    core8 = Core(8)
    passed = 0
    total = int(sys.argv[1]) if len(sys.argv) > 1 else 3000
    typedist8 = {}
    t0 = time.time()
    for t in range(total):
        pat = {}
        for v in range(8):
            ns = [u for u in range(8) if u != v]
            rnd.shuffle(ns); pat[v] = tuple(ns[:3])
        if core8.passes(pat):
            passed += 1
            ent = core8.build_mask(pat)
            fr = tuple(sorted(core8.world_freedom(ent, c, d)
                              for (c, d) in ((0,1),(0,2),(1,2))))
            typedist8[fr] = typedist8.get(fr, 0) + 1
    print(f"\nN=8 census: {passed}/{total} patterns pass serving-PM "
          f"({100*passed/total:.1f}%) [{time.time()-t0:.0f}s]")
    allzero = typedist8.get((0,0,0), 0)
    print(f"N=8 freedom-(0,0,0): {allzero} ({100*allzero/max(passed,1):.1f}%)")
    top = sorted(typedist8.items(), key=lambda kv:-kv[1])[:12]
    print("top freedom types:", top)
    json.dump({"passed": passed, "total": total,
               "typedist": {"|".join(map(str,k)): v for k,v in typedist8.items()}},
              open('/Users/kishan/mqg/lab/n8_census.json','w'))

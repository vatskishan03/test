"""CENSUS: classify all surviving forcing patterns by world-freedom type.

Pattern: vertex v -> ordered triple (u0,u1,u2), distinct neighbours.
Sound prune: every colour's serving graph contains a perfect matching.
Then compute world-freedoms F01,F02,F12 (near-mono constraint-graph excess).

Outputs type distribution + orbit counts under S6 x S3.
"""
import sys, itertools, json, time
sys.path.insert(0, '/Users/kishan/mqg/lab')
from fractions import Fraction as F

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]
COLORS = (0, 1, 2)

def pm_list():
    def rec(rem):
        if not rem: yield []; return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            p = rest[k]; r2 = rest[:k] + rest[k+1:]
            for m in rec(r2): yield [(f, p)] + m
    return list(rec(VERTS))
PMS = pm_list()

def serving_graphs(pat):
    allowed = set()
    # start with all entries allowed, then kill by forcings
    ent = {(p, q): set(itertools.product(range(3), repeat=2)) for (p, q) in PAIRS}
    for v, triple in pat.items():
        for c, u in enumerate(triple):
            key = (min(v, u), max(v, u))
            if v < u:
                ent[key] = {(i, j) for (i, j) in ent[key] if j == c}
            else:
                ent[key] = {(i, j) for (i, j) in ent[key] if i == c}
    out = {}
    for c in COLORS:
        out[c] = [e for e in PAIRS if (c, c) in ent[e]]
    return out, ent

def has_pm(edges):
    adj = {v: set() for v in VERTS}
    for (a, b) in edges:
        adj[a].add(b); adj[b].add(a)
    def rec(av):
        if not av: return True
        v = min(av)
        for u in av:
            if u != v and u in adj[v]:
                if rec(av - {v, u}): return True
        return False
    return rec(frozenset(VERTS))

def passes(pat):
    sg, _ = serving_graphs(pat)
    return all(has_pm(sg[c]) for c in COLORS)

def world_freedom(ent, c, d):
    """Nodes (v,c->d),(v,d->c); edges = allowed bicolor entries."""
    nodes = [(v, t) for v in VERTS for t in ('cd', 'dc')]
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
    for (p, q) in PAIRS:
        if (d, c) in ent[(p, q)]:
            union(nid[(p, 'cd')], nid[(q, 'dc')]); E += 1
        if (c, d) in ent[(p, q)]:
            union(nid[(q, 'cd')], nid[(p, 'dc')]); E += 1
    comp_v, comp_e = {}, {}
    for n in nodes:
        r = find(nid[n]); comp_v[r] = comp_v.get(r, 0) + 1
    for (p, q) in PAIRS:
        if (d, c) in ent[(p, q)]:
            comp_e[find(nid[(p, 'cd')])] = comp_e.get(find(nid[(p, 'cd')]), 0) + 1
        if (c, d) in ent[(p, q)]:
            comp_e[find(nid[(q, 'cd')])] = comp_e.get(find(nid[(q, 'cd')]), 0) + 1
    fre = sum(max(0, comp_e.get(r, 0) - comp_v[r]) for r in comp_v)
    return fre

def analyze_pattern(pat):
    sg, ent = serving_graphs(pat)
    f01 = world_freedom(ent, 0, 1)
    f02 = world_freedom(ent, 0, 2)
    f12 = world_freedom(ent, 1, 2)
    return (f01, f02, f12)

def canon_pattern(pat):
    """pat: dict v -> triple. Canonical min encoding under S6 verts x S3 colors."""
    best = None
    for vp in itertools.permutations(range(6)):
        for cp in itertools.permutations(range(3)):
            enc = []
            for v in range(6):
                tr = pat[vp[v]]
                for t in range(3):
                    enc.append((cp[t], vp[tr[t]]))
            t = tuple(enc)
            if best is None or t < best: best = t
    return best

if __name__ == '__main__':
    import random
    rnd = random.Random(int(sys.argv[1]) if len(sys.argv) > 1 else 42)
    N = int(sys.argv[2]) if len(sys.argv) > 2 else 20000
    t0 = time.time()
    typedist = {}
    orbits = {}
    samples = 0
    passed = 0
    for t in range(N):
        pat = {}
        for v in VERTS:
            ns = [u for u in VERTS if u != v]
            rnd.shuffle(ns)
            pat[v] = tuple(ns[:3])
        samples += 1
        if not passes(pat): continue
        passed += 1
        fr = analyze_pattern(pat)
        key = tuple(sorted(fr))
        typedist[key] = typedist.get(key, 0) + 1
        cp = canon_pattern(pat)
        orbits.setdefault((key, cp), len(orbits))
        if (t + 1) % 5000 == 0:
            print(f"[{time.time()-t0:.0f}s] sampled {samples}, passed {passed}, "
                  f"freedom-type classes {len(typedist)}, pattern-orbits {len(orbits)}", flush=True)
    print("\n=== FREEDOM TYPE DISTRIBUTION (surviving patterns) ===")
    tot = sum(typedist.values())
    allzero = typedist.get((0,0,0), 0)
    print(f"passed: {tot}/{samples}")
    print(f"(0,0,0): {allzero} ({100*allzero/tot:.1f}%)")
    for k in sorted(typedist, key=str):
        if k != (0,0,0):
            print(f"  {k}: {typedist[k]} ({100*typedist[k]/tot:.1f}%)")
    nz_orb = len([k for k in orbits if k[0] != (0,0,0)])
    z_orb = len([k for k in orbits if k[0] == (0,0,0)])
    print(f"\npattern-orbit classes seen: total={len(orbits)} allzero={z_orb} nonzero-freedom={nz_orb}")
    json.dump({"typedist": {"|".join(map(str,k)): v for k,v in typedist.items()},
               "orbits_total": len(orbits)},
              open('/Users/kishan/mqg/lab/pattern_census.json','w'))
    print("saved pattern_census.json")

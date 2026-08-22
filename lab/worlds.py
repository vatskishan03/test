"""Cycle-freedom analysis of the near-mono constraint graph, world by world.

World {c,d}: nodes (v, c->d) for each vertex v (12 nodes per world).
Variable y^{dc}_{vx} (entry (d,c) on edge {v,x}) connects node (v,c->d) -- (x,d->c).
A connected component with E <= V has full column rank for generic H-coefficients,
forcing ALL its bicolor weights to zero. Freedom survives only in components with
E > V ("excess" = E - V summed over such components).

This measures exactly how much solution freedom the linear (near-mono) layer leaves,
which the quadratic two-flip layer must then kill.
"""
import sys, itertools, random
sys.path.insert(0, '/Users/kishan/mqg/lab')
from endgame import (VERTS, PAIRS, neighbors, valid_pattern, build_mask,
                     pattern_passes_pm)

def world_graph(allowed, c, d):
    """Build graph: nodes 0..5 as (v, c->d); edges from allowed entries."""
    idx = {v: v for v in VERTS}
    adj = {v: [] for v in VERTS}
    nedges = 0
    edge_list = []
    for (p, q) in PAIRS:
        # entry (d,c): d at p, c at q  -> connects node(p,c->d) & node(q,d->c)
        if (d, c) in allowed[(p, q)]:
            adj[p].append(q)
            edge_list.append(((p, 'cd'), (q, 'dc')))
            nedges += 1
        # entry (c,d): c at p, d at q -> connects node(p,d->c) & node(q,c->d)
        if (c, d) in allowed[(p, q)]:
            adj[q].append(p)
            edge_list.append(((q, 'dc'), (p, 'cd')))
            nedges += 1
    # NOTE: nodes here identified by vertex only; but (v,c->d) and (v,d->c) are
    # DIFFERENT nodes (12 total). Rebuild properly:
    return adj, nedges, edge_list

def proper_world_graph(allowed, c, d):
    """Nodes: (v, tag) with tag in {'cd','dc'}; edges per bicolor entry."""
    nodes = [(v, t) for v in VERTS for t in ('cd', 'dc')]
    nid = {n: k for k, n in enumerate(nodes)}
    parent = list(range(len(nodes)))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(a, b):
        ra, rb = find(a), find(b)
        if ra != rb:
            parent[ra] = rb

    E = 0
    for (p, q) in PAIRS:
        if (d, c) in allowed[(p, q)]:
            union(nid[(p, 'cd')], nid[(q, 'dc')])
            E += 1
        if (c, d) in allowed[(p, q)]:
            union(nid[(q, 'cd')], nid[(p, 'dc')])
            E += 1
    comp_size = {}
    for n in nodes:
        r = find(nid[n])
        comp_size[r] = comp_size.get(r, 0) + 1
    # edges per component
    comp_edges = {r: 0 for r in comp_size}
    for (p, q) in PAIRS:
        if (d, c) in allowed[(p, q)]:
            r = find(nid[(p, 'cd')])
            comp_edges[r] += 1
        if (c, d) in allowed[(p, q)]:
            r = find(nid[(q, 'cd')])
            comp_edges[r] += 1
    freedom = sum(max(0, comp_edges[r] - comp_size[r]) for r in comp_size)
    comps = sorted((comp_size[r], comp_edges[r]) for r in comp_size if comp_size[r] + comp_edges[r] > 0)
    return freedom, comps

def analyze(pat):
    allowed = build_mask(pat)
    res = {}
    for (c, d) in ((0, 1), (0, 2), (1, 2)):
        f, comps = proper_world_graph(allowed, c, d)
        res[(c, d)] = (f, comps)
    return res

if __name__ == '__main__':
    rnd = random.Random(5)
    hist_freedom = {}
    examples = []
    tested = 0
    for t in range(2000):
        pat = {v: tuple(rnd.sample(neighbors(v), 3)) for v in VERTS}
        if not pattern_passes_pm(pat):
            continue
        tested += 1
        res = analyze(pat)
        tot_free = sum(f for f, _ in res.values())
        key = tuple(sorted(f for f, _ in res.values()))
        hist_freedom[key] = hist_freedom.get(key, 0) + 1
        if len(examples) < 8:
            examples.append((pat, res))
    print(f"patterns analyzed (post serving-PM prune): {tested}")
    print("per-world freedom histogram (sorted (F01,F02,F12)):")
    for k in sorted(hist_freedom, key=str)[:25]:
        print("  ", k, "->", hist_freedom[k])
    print("\nsample detail (first example):")
    pat, res = examples[0]
    print("pattern:", pat)
    for wd, (f, comps) in res.items():
        print(f"  world {wd}: freedom={f}  components(V,E)={comps}")

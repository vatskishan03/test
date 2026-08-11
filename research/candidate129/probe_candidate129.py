#!/usr/bin/env python3
"""Independent exact root-factor probe for the N=8,D=3 Candidate-129 support.

The script trusts only the support text. It reconstructs all 6,558 amplitudes,
the three translated-face closure generations, and the corrected-sign
Pluecker/parallelogram factor graph at the trivial signed-character lattice.

This is a discovery/audit program, not yet a complete impossibility verifier.
"""
from __future__ import annotations

from collections import Counter, defaultdict
from fractions import Fraction
from itertools import combinations
from pathlib import Path
import hashlib
import json
import sys
import time

N = 8
D = 3
EXPECTED_SUPPORT_SHA256 = "f2e0a7910c9761e23923f467b7bb00a1677b7381bb531e75e91e31abc0a92815"
EXPECTED_COUNTS = {
    "base": (248, {6: 248}),
    "g1": (726, {6: 726}),
    "r1": (974, {6: 974}),
    "g2": (1343, {4: 178, 6: 1165}),
    "r2": (1343, {4: 178, 6: 1165}),
    "g3": (16381, {4: 1561, 6: 14820}),
    "r3": (16381, {4: 1561, 6: 14820}),
}

EDGES = []
EIDX = [[-1] * N for _ in range(N)]
for u in range(N):
    for v in range(u + 1, N):
        EIDX[u][v] = EIDX[v][u] = len(EDGES)
        EDGES.append((u, v))


def gen_pm(vs, cur, out):
    if not vs:
        out.append(tuple(sorted(cur)))
        return
    a = vs[0]
    for i in range(1, len(vs)):
        b = vs[i]
        gen_pm(vs[1:i] + vs[i + 1 :], cur + [EIDX[a][b]], out)


PMS = []
gen_pm(list(range(N)), [], PMS)
PMS = sorted(set(PMS))
assert len(PMS) == 105


def sm_add(a, b):
    d = dict(a)
    for i, e in b:
        d[i] = d.get(i, 0) + e
    return tuple((i, e) for i, e in sorted(d.items()) if e)


def sm_sub(a, b):
    d = dict(a)
    for i, e in b:
        d[i] = d.get(i, 0) - e
    return tuple((i, e) for i, e in sorted(d.items()) if e)


def sm_dense(a, n):
    z = [0] * n
    for i, e in a:
        z[i] = e
    return tuple(z)


def monomial_gcd(mons):
    if not mons:
        return ()
    common = dict(mons[0])
    for m in mons[1:]:
        d = dict(m)
        for i in list(common):
            common[i] = min(common[i], d.get(i, 0))
            if common[i] == 0:
                common.pop(i)
    return tuple(sorted(common.items()))


def canon_relation(terms):
    acc = defaultdict(Fraction)
    for c, m in terms:
        c = Fraction(c)
        m = tuple((int(i), int(e)) for i, e in m if e)
        if c:
            acc[m] += c
    acc = {m: c for m, c in acc.items() if c}
    if not acc:
        return ()
    g = monomial_gcd(list(acc))
    mons2 = {sm_sub(m, g): c for m, c in acc.items()} if g else acc
    ordered = sorted(mons2.items(), key=lambda x: x[0])
    scale = ordered[0][1]
    return tuple((c / scale, m) for m, c in ordered)


def face_transform(face_a, face_b):
    ma = [m for _, m in face_a]
    mb = [m for _, m in face_b]
    ga = monomial_gcd(ma)
    gb = monomial_gcd(mb)
    aa = sorted(((c, sm_sub(m, ga)) for c, m in face_a), key=lambda x: x[1])
    bb = sorted(((c, sm_sub(m, gb)) for c, m in face_b), key=lambda x: x[1])
    return bb[0][0] / aa[0][0], sm_sub(gb, ga)


def overlap_closure(relations, source_sizes, max_output=6, min_face=2):
    index = defaultdict(list)
    for ri, rel in enumerate(relations):
        nr = len(rel)
        if nr not in source_sizes:
            continue
        for t in range(min_face, nr):
            for inds in combinations(range(nr), t):
                face = tuple(rel[i] for i in inds)
                sig = canon_relation(face)
                index[(t, sig)].append((ri, inds, face))
    out = {}
    for (t, _sig), occ in index.items():
        for a in range(len(occ)):
            ri, ia, fa = occ[a]
            for b in range(a + 1, len(occ)):
                rj, ib, fb = occ[b]
                if ri == rj:
                    continue
                if len(relations[ri]) + len(relations[rj]) - 2 * t > max_output:
                    continue
                scalar, shift = face_transform(fa, fb)
                poly = [(scalar * c, sm_add(m, shift)) for c, m in relations[ri]]
                poly += [(-c, m) for c, m in relations[rj]]
                cr = canon_relation(poly)
                if not cr or len(cr) > max_output:
                    continue
                out.setdefault(cr, (ri, tuple(ia), rj, tuple(ib), scalar, shift))
    return out


def parse_support(path):
    vals = []
    for line in Path(path).read_text().splitlines():
        s = line.strip()
        if s.isdigit():
            vals.append(int(s))
    if vals != sorted(set(vals)):
        raise AssertionError("support is not sorted and unique")
    return vals


def decode_coloring(code):
    q = []
    for _ in range(N):
        q.append(code % D)
        code //= D
    return tuple(q)


def amplitude_matching_sets(support):
    support_set = set(support)
    out = []
    for code in range(D**N):
        q = decode_coloring(code)
        active = []
        mons = []
        for mi, pm in enumerate(PMS):
            coords = []
            ok = True
            for ei in pm:
                u, v = EDGES[ei]
                x = ei * 9 + 3 * q[u] + q[v]
                if x not in support_set:
                    ok = False
                    break
                coords.append(x)
            if ok:
                active.append(mi)
                mons.append(tuple(sorted(coords)))
        out.append((q, tuple(active), tuple(mons)))
    return out


def normalize_char(d, bit):
    d = tuple(map(int, d))
    bit = int(bit) & 1
    for x in d:
        if x:
            if x < 0:
                d = tuple(-y for y in d)
            break
    return d, bit


def factorize_tetranomial_trivial(rel, n):
    if len(rel) != 4:
        return []
    terms = [(Fraction(c), sm_dense(m, n)) for c, m in rel]
    out = []
    for i in range(4):
        others = [x for x in range(4) if x != i]
        for jj in range(len(others)):
            for kk in range(jj + 1, len(others)):
                j, k = others[jj], others[kk]
                l = next(x for x in others if x not in (j, k))
                ci, ei = terms[i]
                cj, ej = terms[j]
                ck, ek = terms[k]
                cl, el = terms[l]
                if ci * cl != cj * ck:
                    continue
                dpar = tuple(ei[t] + el[t] - ej[t] - ek[t] for t in range(n))
                if any(dpar):
                    continue
                a = -Fraction(cj, ci)
                b = -Fraction(ck, ci)
                if a not in (1, -1) or b not in (1, -1):
                    continue
                f = tuple(ej[t] - ei[t] for t in range(n))
                g = tuple(ek[t] - ei[t] for t in range(n))
                chf = normalize_char(f, 0 if a == 1 else 1)
                chg = normalize_char(g, 0 if b == 1 else 1)
                if chf == chg:
                    continue
                out.append(tuple(sorted((chf, chg))))
    return sorted(set(out))


def false_twin_classes(vertices, edges):
    adj = {v: set() for v in vertices}
    for a, b in edges:
        adj[a].add(b)
        adj[b].add(a)
    groups = defaultdict(list)
    for v in vertices:
        groups[frozenset(adj[v])].append(v)
    classes = list(groups.values())
    position = {v: i for i, v in enumerate(vertices)}
    classes.sort(key=lambda c: min(position[x] for x in c))
    cmap = {v: i for i, c in enumerate(classes) for v in c}
    qedges = sorted(
        set(tuple(sorted((cmap[a], cmap[b]))) for a, b in edges if cmap[a] != cmap[b])
    )
    return classes, qedges


def components(n, edges):
    adj = [set() for _ in range(n)]
    for a, b in edges:
        adj[a].add(b)
        adj[b].add(a)
    seen = set()
    out = []
    for v in range(n):
        if v in seen or not adj[v]:
            continue
        stack = [v]
        seen.add(v)
        comp = []
        while stack:
            x = stack.pop()
            comp.append(x)
            for y in adj[x]:
                if y not in seen:
                    seen.add(y)
                    stack.append(y)
        out.append(tuple(sorted(comp)))
    return out


def maximal_independent_sets(vertices, edges):
    """Exact bitset Bron-Kerbosch enumeration in the complement graph."""
    verts = tuple(sorted(vertices))
    pos = {v: i for i, v in enumerate(verts)}
    n = len(verts)
    original_adj = [0] * n
    for a, b in edges:
        ia, ib = pos[a], pos[b]
        original_adj[ia] |= 1 << ib
        original_adj[ib] |= 1 << ia
    allmask = (1 << n) - 1
    comp_adj = [allmask ^ (1 << i) ^ original_adj[i] for i in range(n)]
    results = []

    def bk(r, p, x):
        if p == 0 and x == 0:
            results.append(r)
            return
        union = p | x
        if union:
            # Pivot maximizing neighbors in P.
            best = None
            best_count = -1
            ubox = union
            while ubox:
                bit = ubox & -ubox
                u = bit.bit_length() - 1
                score = (p & comp_adj[u]).bit_count()
                if score > best_count:
                    best_count = score
                    best = u
                ubox ^= bit
            candidates = p & ~comp_adj[best]
        else:
            candidates = p
        while candidates:
            bit = candidates & -candidates
            v = bit.bit_length() - 1
            bk(r | bit, p & comp_adj[v], x & comp_adj[v])
            p ^= bit
            x |= bit
            candidates ^= bit

    bk(0, allmask, 0)
    return [tuple(verts[i] for i in range(n) if (mask >> i) & 1) for mask in results]


def minimal_vertex_covers(vertices, edges):
    vset = set(vertices)
    return sorted(tuple(sorted(vset - set(ind))) for ind in maximal_independent_sets(vertices, edges))


def ser_fraction(x):
    x = Fraction(x)
    return [x.numerator, x.denominator]


def ser_relation(rel):
    return [[ser_fraction(c), [[int(i), int(e)] for i, e in m]] for c, m in rel]


def ser_char(ch):
    d, b = ch
    return {"exponent": [[i, int(x)] for i, x in enumerate(d) if x], "bit": int(b)}


def sha_obj(obj):
    raw = json.dumps(obj, sort_keys=True, separators=(",", ":")).encode()
    return hashlib.sha256(raw).hexdigest()


def check_count(name, obj):
    seq = list(obj) if isinstance(obj, dict) else obj
    got = (len(seq), dict(sorted(Counter(map(len, seq)).items())))
    expected = EXPECTED_COUNTS[name]
    if got != expected:
        raise AssertionError((name, got, expected))
    print(name.upper(), "PASS", got, flush=True)


def main():
    t0 = time.time()
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else "research/candidate129/candidate129_support.txt")
    output_path = Path(sys.argv[2] if len(sys.argv) > 2 else "research/candidate129/candidate129_root_factor.json")
    support_bytes = support_path.read_bytes()
    support_sha = hashlib.sha256(support_bytes).hexdigest()
    if support_sha != EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha, EXPECTED_SUPPORT_SHA256))
    support = parse_support(support_path)
    if len(support) != 143:
        raise AssertionError(("support size", len(support)))
    print("SUPPORT PASS", len(support), support_sha, flush=True)

    amps = amplitude_matching_sets(support)
    if len(amps) != 6561:
        raise AssertionError(("amplitudes", len(amps)))
    loc = {x: i for i, x in enumerate(support)}
    base = []
    for q, active, mons in amps:
        if all(x == q[0] for x in q):
            continue
        if len(active) == 6:
            terms = []
            for mon in mons:
                terms.append((Fraction(1), tuple(sorted((loc[x], 1) for x in mon))))
            base.append(canon_relation(terms))
    base = sorted(set(base))
    check_count("base", base)

    g1 = overlap_closure(base, {6}, 6, min_face=3)
    check_count("g1", g1)
    r1 = sorted(set(base) | set(g1))
    check_count("r1", r1)

    g2 = overlap_closure(r1, {6}, 6, min_face=3)
    check_count("g2", g2)
    r2 = sorted(set(r1) | set(g2))
    check_count("r2", r2)

    g3 = overlap_closure(r2, {4, 5, 6}, 6, min_face=2)
    check_count("g3", g3)
    r3 = sorted(set(r2) | set(g3))
    check_count("r3", r3)

    tetranomials = [r for r in r3 if len(r) == 4]
    edges = set()
    edge_witness = {}
    factorable = 0
    for ri, rel in enumerate(tetranomials):
        local_edges = factorize_tetranomial_trivial(rel, len(support))
        if local_edges:
            factorable += 1
        for edge in local_edges:
            edges.add(edge)
            edge_witness.setdefault(edge, ri)
    edges = sorted(edges)
    vertices = sorted({v for edge in edges for v in edge})
    classes, qedges = false_twin_classes(vertices, edges) if edges else ([], [])
    comps = components(len(classes), qedges) if classes else []

    local_covers = []
    for comp in comps:
        cset = set(comp)
        es = [e for e in qedges if e[0] in cset and e[1] in cset]
        cov = minimal_vertex_covers(comp, es)
        local_covers.append(cov)
        print("COMPONENT", comp, "EDGES", len(es), "MINIMAL COVERS", len(cov), flush=True)

    global_cover_count = 1
    for cov in local_covers:
        global_cover_count *= len(cov)

    relation_sha = sha_obj([ser_relation(r) for r in r3])
    edge_sha = sha_obj([[ser_char(a), ser_char(b)] for a, b in edges])
    result = {
        "schema": "mqg.n8d3.candidate129-root-factor-probe.v1",
        "epistemic_status": "REPRODUCED computation if all embedded assertions pass; not a complete support certificate",
        "support": support,
        "support_size": len(support),
        "support_file_sha256": support_sha,
        "closure": {
            "base": {"count": len(base), "dist": dict(Counter(map(len, base)))},
            "g1": {"count": len(g1), "dist": dict(Counter(map(len, g1)))},
            "r1": {"count": len(r1), "dist": dict(Counter(map(len, r1)))},
            "g2": {"count": len(g2), "dist": dict(Counter(map(len, g2)))},
            "r2": {"count": len(r2), "dist": dict(Counter(map(len, r2)))},
            "g3": {"count": len(g3), "dist": dict(Counter(map(len, g3)))},
            "r3": {"count": len(r3), "dist": dict(Counter(map(len, r3)))},
            "r3_canonical_sha256": relation_sha,
        },
        "root_factor": {
            "tetranomials": len(tetranomials),
            "factorable_tetranomials": factorable,
            "distinct_factor_edges": len(edges),
            "signed_factor_vertices": len(vertices),
            "false_twin_classes": len(classes),
            "false_twin_class_sizes": [len(c) for c in classes],
            "quotient_edges": [list(e) for e in qedges],
            "components": [list(c) for c in comps],
            "local_minimal_cover_counts": [len(x) for x in local_covers],
            "global_minimal_cover_count": global_cover_count if local_covers else (1 if not edges else 0),
            "factor_edge_canonical_sha256": edge_sha,
        },
        "seconds": time.time() - t0,
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(
        "ROOT FACTOR RESULT",
        "TETRANOMIALS", len(tetranomials),
        "FACTORABLE", factorable,
        "EDGES", len(edges),
        "VERTICES", len(vertices),
        "CLASSES", len(classes),
        "QEDGES", len(qedges),
        "GLOBAL COVERS", result["root_factor"]["global_minimal_cover_count"],
        flush=True,
    )
    print("R3 SHA256", relation_sha, flush=True)
    print("EDGE SHA256", edge_sha, flush=True)
    print("OUTPUT", output_path, flush=True)


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Independent exact verifier for the Candidate-129 impossibility certificate.

Trusted input: only candidate129_support.txt and the constants embedded below.
The verifier reconstructs all 6,558 amplitudes, the complete three-generation
16,381-relation closure, the corrected-sign factor graph, and its false-twin
classes.  It then checks one fatal quotient edge (36,97) and independently
replays the exact character saturation plus one-extra-matching local-flip
contradiction for both endpoint classes.

Mathematical final step:
  * Every torus solution chooses a zero factor on every factor edge, hence its
    zero-factor set is a vertex cover of the finite factor graph.
  * Every finite vertex cover contains an inclusion-minimal vertex cover.
  * In a minimal vertex cover, false twins are all selected or all omitted:
    if u is selected and its false twin v is omitted, all common neighbors are
    selected, so u is redundant, contradicting minimality.
  * Therefore a quotient edge forces one entire endpoint class or the other.
  * Classes 36 and 97 are both impossible by exact Laurent monomial flips.

No numerical approximation, pickle, generated factor graph, or cover list is
read by this verifier.
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
EXPECTED_RELATION_SHA256 = "16e1953da11530ec6eabb2dbf728de03eb7aa91cef43c4037c3ea1950fb55564"
EXPECTED_FACTOR_EDGE_SHA256 = "933be317cf3eb3d87c72326aa15ff74a8c1929729e70cc211d95aaf5d4c4be02"
EXPECTED_CLASS_SHA256 = "4ffa846a8d4001754fbf79c41a745c51c0db86e9df03ec6e19172cb47751d2d8"
EXPECTED_QEDGE_SHA256 = "354e7a8d399e2994043fe5f30749ad24695b9154acd0bd982d8bf1f70bfca244"
EXPECTED_COUNTS = {
    "base": (248, {6: 248}),
    "g1": (726, {6: 726}),
    "r1": (974, {6: 974}),
    "g2": (1343, {4: 178, 6: 1165}),
    "r2": (1343, {4: 178, 6: 1165}),
    "g3": (16381, {4: 1561, 6: 14820}),
    "r3": (16381, {4: 1561, 6: 14820}),
}
EXPECTED_ROOT_FACTOR_COUNTS = {
    "factorable_tetranomials": 1468,
    "factor_edges": 1468,
    "signed_vertices": 1040,
    "false_twin_classes": 104,
    "quotient_edges": 223,
}
FATAL_CLASSES = (36, 97)
EXPECTED_CLASS_SIZES = {36: 70, 97: 1}
EXPECTED_FINAL_RANK = {36: 21, 97: 5}
EXPECTED_FLIPS = {
    36: {"small_code": 3132, "large_code": 3105, "extra_matching": 26},
    97: {"small_code": 759, "large_code": 756, "extra_matching": 43},
}
EXPECTED_RAW_EDGE = (
    (
        (0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
        0,
    ),
    (
        (1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
        0,
    ),
)

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


def sparse_add(a, b):
    d = dict(a)
    for i, e in b:
        d[i] = d.get(i, 0) + e
    return tuple((i, e) for i, e in sorted(d.items()) if e)


def sparse_sub(a, b):
    d = dict(a)
    for i, e in b:
        d[i] = d.get(i, 0) - e
    return tuple((i, e) for i, e in sorted(d.items()) if e)


def dense_sparse(a, n):
    z = [0] * n
    for i, e in a:
        z[int(i)] += int(e)
    return tuple(z)


def dense_sub(a, b):
    return tuple(x - y for x, y in zip(a, b))


def dense_add(a, b):
    return tuple(x + y for x, y in zip(a, b))


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
    shifted = {sparse_sub(m, g): c for m, c in acc.items()} if g else acc
    ordered = sorted(shifted.items(), key=lambda x: x[0])
    scale = ordered[0][1]
    return tuple((c / scale, m) for m, c in ordered)


def face_transform(face_a, face_b):
    ga = monomial_gcd([m for _, m in face_a])
    gb = monomial_gcd([m for _, m in face_b])
    aa = sorted(((c, sparse_sub(m, ga)) for c, m in face_a), key=lambda x: x[1])
    bb = sorted(((c, sparse_sub(m, gb)) for c, m in face_b), key=lambda x: x[1])
    return bb[0][0] / aa[0][0], sparse_sub(gb, ga)


def overlap_closure(relations, source_sizes, max_output, min_face):
    index = defaultdict(list)
    for ri, rel in enumerate(relations):
        nr = len(rel)
        if nr not in source_sizes:
            continue
        for t in range(min_face, nr):
            for inds in combinations(range(nr), t):
                face = tuple(rel[i] for i in inds)
                index[(t, canon_relation(face))].append((ri, inds, face))
    out = {}
    for (t, _), occ in index.items():
        for a in range(len(occ)):
            ri, ia, fa = occ[a]
            for b in range(a + 1, len(occ)):
                rj, ib, fb = occ[b]
                if ri == rj or len(relations[ri]) + len(relations[rj]) - 2 * t > max_output:
                    continue
                scalar, shift = face_transform(fa, fb)
                poly = [(scalar * c, sparse_add(m, shift)) for c, m in relations[ri]]
                poly += [(-c, m) for c, m in relations[rj]]
                cr = canon_relation(poly)
                if cr and len(cr) <= max_output:
                    out.setdefault(cr, (ri, ia, rj, ib))
    return out


def parse_support(path):
    vals = [int(s.strip()) for s in Path(path).read_text().splitlines() if s.strip().isdigit()]
    if vals != sorted(set(vals)) or len(vals) != 143:
        raise AssertionError("invalid support")
    return vals


def decode_coloring(code):
    q = []
    for _ in range(N):
        q.append(code % D)
        code //= D
    return tuple(q)


def amplitudes(support):
    support_set = set(support)
    loc = {x: i for i, x in enumerate(support)}
    out = []
    for code in range(D**N):
        q = decode_coloring(code)
        active = []
        sparse_mons = []
        dense_mons = {}
        for mi, pm in enumerate(PMS):
            coords = []
            for ei in pm:
                u, v = EDGES[ei]
                x = ei * 9 + 3 * q[u] + q[v]
                if x not in support_set:
                    break
                coords.append(x)
            else:
                active.append(mi)
                sm = tuple(sorted((loc[x], 1) for x in coords))
                sparse_mons.append(sm)
                dense_mons[mi] = dense_sparse(sm, len(support))
        out.append({"q": q, "active": tuple(active), "sparse": tuple(sparse_mons), "dense": dense_mons})
    return out


def normalize_char(d, bit):
    d = tuple(map(int, d)); bit = int(bit) & 1
    for x in d:
        if x:
            if x < 0:
                d = tuple(-y for y in d)
            break
    return d, bit


def factor_tetranomial(rel, n):
    if len(rel) != 4:
        return []
    terms = [(Fraction(c), dense_sparse(m, n)) for c, m in rel]
    ans = set()
    for i in range(4):
        rest = [x for x in range(4) if x != i]
        for jj in range(len(rest)):
            for kk in range(jj + 1, len(rest)):
                j, k = rest[jj], rest[kk]
                l = next(x for x in rest if x not in (j, k))
                ci, ei = terms[i]; cj, ej = terms[j]; ck, ek = terms[k]; cl, el = terms[l]
                if ci * cl != cj * ck:
                    continue
                if any(ei[t] + el[t] - ej[t] - ek[t] for t in range(n)):
                    continue
                a = -Fraction(cj, ci); b = -Fraction(ck, ci)
                if a not in (1, -1) or b not in (1, -1):
                    continue
                f = normalize_char(dense_sub(ej, ei), 0 if a == 1 else 1)
                g = normalize_char(dense_sub(ek, ei), 0 if b == 1 else 1)
                if f != g:
                    ans.add(tuple(sorted((f, g))))
    return sorted(ans)


def false_twin_classes(vertices, edges):
    adj = {v: set() for v in vertices}
    for a, b in edges:
        adj[a].add(b); adj[b].add(a)
    groups = defaultdict(list)
    for v in vertices:
        groups[frozenset(adj[v])].append(v)
    pos = {v: i for i, v in enumerate(vertices)}
    classes = list(groups.values())
    classes.sort(key=lambda c: min(pos[x] for x in c))
    cmap = {v: i for i, C in enumerate(classes) for v in C}
    qedges = sorted(set(tuple(sorted((cmap[a], cmap[b]))) for a, b in edges if cmap[a] != cmap[b]))
    # Directly check the false-twin invariant used by the final proof.
    for C in classes:
        neighborhoods = {frozenset(adj[v]) for v in C}
        if len(neighborhoods) != 1:
            raise AssertionError("invalid false-twin class")
        for a, b in combinations(C, 2):
            if b in adj[a]:
                raise AssertionError("false twins unexpectedly adjacent")
    return classes, qedges, cmap


def ser_fraction(x):
    x = Fraction(x)
    return [x.numerator, x.denominator]


def ser_relation(r):
    return [[ser_fraction(c), [[int(i), int(e)] for i, e in m]] for c, m in r]


def ser_char(ch):
    d, b = ch
    return {"exponent": [[i, int(x)] for i, x in enumerate(d) if x], "bit": int(b)}


def sha_obj(x):
    return hashlib.sha256(json.dumps(x, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


class SignedLattice:
    def __init__(self, n, chars):
        # Only discovery/saturation needs HNF. Compact witness replay uses the
        # exact arithmetic helpers in this module without importing SymPy.
        from sympy import Matrix
        from sympy.matrices.normalforms import hermite_normal_form

        self.n = n
        rows = []
        seen = set()
        for d, b in chars:
            row = normalize_char(d, b)[0] + (int(b) & 1,)
            if row not in seen:
                seen.add(row); rows.append(row)
        rows.append((0,) * n + (2,))
        H = hermite_normal_form(Matrix(rows).T)
        self.cols = []
        self.pivots = []
        for j in range(H.cols):
            col = tuple(int(H[i, j]) for i in range(H.rows))
            p = max(i for i, x in enumerate(col) if x)
            if col[p] < 0:
                col = tuple(-x for x in col)
            self.cols.append(col); self.pivots.append(p)
        self.rank = H.cols
        self.cache = {}

    def normal(self, z):
        z = tuple(map(int, z))
        if z in self.cache:
            return self.cache[z]
        v = list(z)
        for col, p in reversed(list(zip(self.cols, self.pivots))):
            q, _ = divmod(v[p], col[p])
            if q:
                for i, x in enumerate(col):
                    if x:
                        v[i] -= q * x
        ans = tuple(v); self.cache[z] = ans
        return ans

    def member(self, d, bit=0):
        return not any(self.normal(tuple(d) + (int(bit) & 1,)))

    def term(self, d):
        r = self.normal(tuple(d) + (0,))
        return r[:-1], r[-1] & 1

    def consistent(self):
        return not self.member((0,) * self.n, 1)


def compact(chars, n):
    out = []
    lat = SignedLattice(n, ())
    for ch in chars:
        ch = normalize_char(*ch)
        if not lat.member(*ch):
            out.append(ch); lat = SignedLattice(n, out)
    return out, lat


def reduce_relation(rel, lat, n):
    acc = defaultdict(Fraction)
    for c, m in rel:
        exp, bit = lat.term(dense_sparse(m, n))
        acc[exp] += Fraction(c) * (-1 if bit else 1)
    terms = [(c, e) for e, c in acc.items() if c]
    if not terms:
        return ()
    terms.sort(key=lambda x: x[1])
    scale = terms[0][0]
    return tuple((c / scale, e) for c, e in terms)


def binomial_char(red):
    if len(red) != 2:
        return None
    c1, e1 = red[0]; c2, e2 = red[1]
    ratio = -Fraction(c1, c2)
    if ratio not in (1, -1):
        return None
    return normalize_char(dense_sub(e2, e1), 0 if ratio == 1 else 1)


def saturate(relations, n, initial):
    chars, lat = compact(initial, n)
    sources = []
    for iteration in range(50):
        pending = []
        for ri, rel in enumerate(relations):
            red = reduce_relation(rel, lat, n)
            if len(red) == 1:
                raise AssertionError(("unexpected root monomial", ri))
            ch = binomial_char(red)
            if ch is not None and not lat.member(*ch):
                pending.append((ri, ch))
        added = 0
        for ri, ch in pending:
            if not lat.member(*ch):
                chars.append(ch); sources.append((ri, ch))
                lat = SignedLattice(n, chars); added += 1
                if not lat.consistent():
                    raise AssertionError(("unexpected signed inconsistency", ri))
        if not added:
            return chars, lat, sources, iteration + 1
    raise AssertionError("saturation iteration limit")


def check_count(name, seq):
    got = (len(seq), dict(sorted(Counter(map(len, seq)).items())))
    if got != EXPECTED_COUNTS[name]:
        raise AssertionError((name, got, EXPECTED_COUNTS[name]))
    print(name.upper(), "PASS", got, flush=True)


def reconstruct(support):
    amps = amplitudes(support)
    base = []
    for row in amps:
        if all(x == row["q"][0] for x in row["q"]):
            continue
        if len(row["active"]) == 6:
            base.append(canon_relation([(1, m) for m in row["sparse"]]))
    base = sorted(set(base)); check_count("base", base)
    g1 = overlap_closure(base, {6}, 6, 3); check_count("g1", g1)
    r1 = sorted(set(base) | set(g1)); check_count("r1", r1)
    g2 = overlap_closure(r1, {6}, 6, 3); check_count("g2", g2)
    r2 = sorted(set(r1) | set(g2)); check_count("r2", r2)
    g3 = overlap_closure(r2, {4, 5, 6}, 6, 2); check_count("g3", g3)
    r3 = sorted(set(r2) | set(g3)); check_count("r3", r3)
    if sha_obj([ser_relation(r) for r in r3]) != EXPECTED_RELATION_SHA256:
        raise AssertionError("root relation SHA mismatch")
    return amps, r3


def verify_flip(class_id, classes, relations, amps, n):
    initial = classes[class_id]
    chars, lat, sources, iterations = saturate(relations, n, initial)
    if lat.rank != EXPECTED_FINAL_RANK[class_id]:
        raise AssertionError(("rank", class_id, lat.rank, EXPECTED_FINAL_RANK[class_id]))
    spec = EXPECTED_FLIPS[class_id]
    small = amps[spec["small_code"]]; large = amps[spec["large_code"]]
    if all(x == small["q"][0] for x in small["q"]) or all(x == large["q"][0] for x in large["q"]):
        raise AssertionError("flip amplitude is monochromatic")
    changed = [v for v in range(N) if small["q"][v] != large["q"][v]]
    if len(changed) != 1:
        raise AssertionError(("not adjacent", class_id, changed))
    ss = set(small["active"]); ls = set(large["active"])
    if not (ss < ls and ls - ss == {spec["extra_matching"]}):
        raise AssertionError(("matching-set inclusion", class_id, ss, ls))
    common = sorted(ss)
    if not common:
        raise AssertionError("empty common matching set")
    ratios = [dense_sub(large["dense"][mi], small["dense"][mi]) for mi in common]
    normals = [lat.term(d) for d in ratios]
    if any(x != normals[0] for x in normals[1:]):
        raise AssertionError(("common ratios do not agree", class_id))

    # Directly reduce x^r A_small - A_large under the verified lattice.
    r = ratios[0]
    acc = defaultdict(Fraction)
    for mi in small["active"]:
        exp, bit = lat.term(dense_add(small["dense"][mi], r))
        acc[exp] += -1 if bit else 1
    for mi in large["active"]:
        exp, bit = lat.term(large["dense"][mi])
        acc[exp] -= (-1 if bit else 1)
    surviving = [(c, e) for e, c in acc.items() if c]
    if len(surviving) != 1:
        raise AssertionError(("transport did not reduce to one monomial", class_id, len(surviving)))
    extra_normal = lat.term(large["dense"][spec["extra_matching"]])
    if surviving[0][1] != extra_normal[0] or abs(surviving[0][0]) != 1:
        raise AssertionError(("wrong terminal monomial", class_id, surviving, extra_normal))
    return {
        "class": class_id,
        "raw_class_size": len(initial),
        "initial_compact_count": len(compact(initial, n)[0]),
        "derived_binomial_sources": len(sources),
        "final_character_count": len(chars),
        "final_rank": lat.rank,
        "saturation_iterations": iterations,
        "small_code": spec["small_code"],
        "large_code": spec["large_code"],
        "changed_vertex": changed[0],
        "common_matching_count": len(common),
        "extra_matching": spec["extra_matching"],
        "terminal_coefficient": [surviving[0][0].numerator, surviving[0][0].denominator],
        "terminal_normal_exponent": [[i, int(x)] for i, x in enumerate(surviving[0][1]) if x],
        "derived_source_indices": [ri for ri, _ in sources],
    }


def main():
    t0 = time.time()
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else Path(__file__).with_name("candidate129_support.txt"))
    output_path = Path(sys.argv[2]) if len(sys.argv) > 2 else None
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = parse_support(support_path)
    amps, relations = reconstruct(support)

    factorable = 0; edges = set(); relation_edges = defaultdict(set)
    for ri, rel in enumerate(relations):
        if len(rel) != 4:
            continue
        local = factor_tetranomial(rel, len(support))
        if local:
            factorable += 1
        for edge in local:
            edges.add(edge); relation_edges[ri].add(edge)
    edges = sorted(edges); vertices = sorted({v for e in edges for v in e})
    classes, qedges, cmap = false_twin_classes(vertices, edges)
    counts = {
        "factorable_tetranomials": factorable,
        "factor_edges": len(edges),
        "signed_vertices": len(vertices),
        "false_twin_classes": len(classes),
        "quotient_edges": len(qedges),
    }
    if counts != EXPECTED_ROOT_FACTOR_COUNTS:
        raise AssertionError(("factor counts", counts))
    if sha_obj([[ser_char(a), ser_char(b)] for a, b in edges]) != EXPECTED_FACTOR_EDGE_SHA256:
        raise AssertionError("factor edge SHA mismatch")
    if sha_obj([[ser_char(ch) for ch in C] for C in classes]) != EXPECTED_CLASS_SHA256:
        raise AssertionError("class SHA mismatch")
    if sha_obj([list(e) for e in qedges]) != EXPECTED_QEDGE_SHA256:
        raise AssertionError("quotient edge SHA mismatch")
    if tuple(sorted(FATAL_CLASSES)) not in qedges:
        raise AssertionError("fatal quotient edge missing")
    for ci, size in EXPECTED_CLASS_SIZES.items():
        if len(classes[ci]) != size:
            raise AssertionError(("fatal class size", ci, len(classes[ci]), size))

    expected_edge = tuple(sorted(EXPECTED_RAW_EDGE))
    if expected_edge not in edges:
        raise AssertionError("embedded raw fatal edge missing")
    if tuple(sorted((cmap[expected_edge[0]], cmap[expected_edge[1]]))) != FATAL_CLASSES:
        raise AssertionError("embedded raw edge maps to wrong classes")
    if expected_edge not in relation_edges[1037]:
        raise AssertionError("relation 1037 does not witness fatal edge")

    endpoint_results = [verify_flip(ci, classes, relations, amps, len(support)) for ci in FATAL_CLASSES]
    result = {
        "schema": "mqg.n8d3.candidate129-fatal-certificate.verifier-output.v1",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": EXPECTED_RELATION_SHA256,
        "factor_edge_sha256": EXPECTED_FACTOR_EDGE_SHA256,
        "false_twin_class_sha256": EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": EXPECTED_QEDGE_SHA256,
        "fatal_quotient_edge": list(FATAL_CLASSES),
        "root_tetranomial_witness": 1037,
        "endpoint_results": endpoint_results,
        "proof_logic": "Every solution's zero-factor set contains a minimal vertex cover; false twins are all-or-none in a minimal cover; the fatal quotient edge therefore selects class 36 or 97; both class assumptions produce a nonzero Laurent monomial equal to zero.",
        "seconds": time.time() - t0,
    }
    result["canonical_content_sha256"] = sha_obj(result)
    if output_path:
        output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("ROOT RECONSTRUCTION PASS", EXPECTED_RELATION_SHA256, flush=True)
    print("ROOT FACTOR GRAPH PASS", counts, flush=True)
    print("FATAL EDGE PASS", FATAL_CLASSES, "RELATION", 1037, flush=True)
    for row in endpoint_results:
        print("ENDPOINT CLASS PASS", row, flush=True)
    print("CANDIDATE129 SUPPORT IMPOSSIBLE: PASS", flush=True)
    print("VERIFIER CONTENT SHA256", result["canonical_content_sha256"], flush=True)


if __name__ == "__main__":
    main()

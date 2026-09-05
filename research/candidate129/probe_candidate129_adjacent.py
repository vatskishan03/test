#!/usr/bin/env python3
"""Exact adjacent-amplitude transport closure for Candidate 129.

For every unordered pair of forbidden colorings at Hamming distance one and
every matching active in both amplitudes, align that matching monomial and form
x^shift A_q - A_q'.  Canonicalize exactly, audit sparse consequences, and merge
all sign-correct tetranomial factors with the root factor graph.
"""
from __future__ import annotations

from collections import Counter
from fractions import Fraction
from pathlib import Path
import hashlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import probe_candidate129 as P


def local_monomial(global_mon, loc):
    return tuple(sorted((loc[int(x)], 1) for x in global_mon))


def shift_relation(rel, shift, sign=1):
    return [(Fraction(sign) * c, P.sm_add(m, shift)) for c, m in rel]


def reconstruct_root(support):
    amps = P.amplitude_matching_sets(support)
    loc = {x: i for i, x in enumerate(support)}
    base = []
    for q, active, mons in amps:
        if all(x == q[0] for x in q):
            continue
        if len(active) == 6:
            base.append(P.canon_relation([(Fraction(1), local_monomial(mon, loc)) for mon in mons]))
    base = sorted(set(base)); P.check_count("base", base)
    g1 = P.overlap_closure(base, {6}, 6, min_face=3); P.check_count("g1", g1)
    r1 = sorted(set(base) | set(g1)); P.check_count("r1", r1)
    g2 = P.overlap_closure(r1, {6}, 6, min_face=3); P.check_count("g2", g2)
    r2 = sorted(set(r1) | set(g2)); P.check_count("r2", r2)
    g3 = P.overlap_closure(r2, {4, 5, 6}, 6, min_face=2); P.check_count("g3", g3)
    r3 = sorted(set(r2) | set(g3)); P.check_count("r3", r3)
    return amps, loc, r3


def main():
    t0 = time.time()
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else HERE / "candidate129_support.txt")
    output_path = Path(sys.argv[2] if len(sys.argv) > 2 else HERE / "candidate129_adjacent.json")
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha, P.EXPECTED_SUPPORT_SHA256))
    support = P.parse_support(support_path)
    amps, loc, root = reconstruct_root(support)
    n = len(support)

    amp_rel = []
    amp_map = []
    forbidden = []
    for code, (q, active, mons) in enumerate(amps):
        mono = all(x == q[0] for x in q)
        forbidden.append(not mono)
        rel = tuple((Fraction(1), local_monomial(mon, loc)) for mon in mons)
        amp_rel.append(rel)
        amp_map.append({int(mi): local_monomial(mon, loc) for mi, mon in zip(active, mons)})

    derived = {}
    pair_count = 0
    common_alignments = 0
    powers = [3**v for v in range(P.N)]
    for code_a, (qa, active_a, mons_a) in enumerate(amps):
        if not forbidden[code_a]:
            continue
        set_a = set(active_a)
        for v in range(P.N):
            old = qa[v]
            for new in range(P.D):
                if new == old:
                    continue
                code_b = code_a + (new - old) * powers[v]
                if code_b <= code_a or not forbidden[code_b]:
                    continue
                pair_count += 1
                active_b = amps[code_b][1]
                common = sorted(set_a.intersection(active_b))
                for mi in common:
                    common_alignments += 1
                    ma = amp_map[code_a][mi]
                    mb = amp_map[code_b][mi]
                    shift = P.sm_sub(mb, ma)
                    terms = shift_relation(amp_rel[code_a], shift, +1)
                    terms += [(-c, m) for c, m in amp_rel[code_b]]
                    rel = P.canon_relation(terms)
                    if not rel:
                        continue
                    derived.setdefault(rel, {
                        "code_a": code_a,
                        "code_b": code_b,
                        "changed_vertex": v,
                        "aligned_matching": mi,
                        "raw_shift": [[int(i), int(e)] for i, e in shift],
                    })

    relations = sorted(derived)
    dist = dict(sorted(Counter(map(len, relations)).items()))
    print("ADJACENT PAIRS", pair_count, "ALIGNMENTS", common_alignments, flush=True)
    print("ADJACENT UNIQUE", len(relations), "DIST", dist, flush=True)

    monomials = [r for r in relations if len(r) == 1]
    binomials = [r for r in relations if len(r) == 2]
    trinomials = [r for r in relations if len(r) == 3]
    tetranomials = [r for r in relations if len(r) == 4]

    root_edges = set()
    root_factorable = 0
    for rel in root:
        if len(rel) != 4:
            continue
        le = P.factorize_tetranomial_trivial(rel, n)
        if le:
            root_factorable += 1
        root_edges.update(le)

    adjacent_edges = set()
    adjacent_factorable = 0
    adjacent_edge_witness = {}
    for ri, rel in enumerate(tetranomials):
        le = P.factorize_tetranomial_trivial(rel, n)
        if le:
            adjacent_factorable += 1
        for edge in le:
            adjacent_edges.add(edge)
            adjacent_edge_witness.setdefault(edge, ri)

    combined_edges = sorted(root_edges | adjacent_edges)
    vertices = sorted({v for e in combined_edges for v in e})
    classes, qedges = P.false_twin_classes(vertices, combined_edges) if combined_edges else ([], [])
    comps = P.components(len(classes), qedges) if classes else []

    result = {
        "schema": "mqg.n8d3.candidate129-adjacent-transport.v1",
        "epistemic_status": "REPRODUCED computation if assertions pass; not a support impossibility certificate",
        "support_size": n,
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in root]),
        "adjacent": {
            "unordered_forbidden_pairs": pair_count,
            "common_matching_alignments": common_alignments,
            "unique_nonzero_relations": len(relations),
            "term_distribution": {str(k): v for k, v in dist.items()},
            "monomials": len(monomials),
            "binomials": len(binomials),
            "trinomials": len(trinomials),
            "tetranomials": len(tetranomials),
            "canonical_relation_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
            "factorable_tetranomials": adjacent_factorable,
            "distinct_factor_edges": len(adjacent_edges),
            "factor_edge_sha256": P.sha_obj([[P.ser_char(a), P.ser_char(b)] for a, b in sorted(adjacent_edges)]),
        },
        "combined_factor_graph": {
            "root_factorable_tetranomials": root_factorable,
            "root_factor_edges": len(root_edges),
            "combined_factor_edges": len(combined_edges),
            "signed_vertices": len(vertices),
            "false_twin_classes": len(classes),
            "false_twin_class_sizes": [len(c) for c in classes],
            "quotient_edges": [list(e) for e in qedges],
            "components": [list(c) for c in comps],
            "factor_edge_sha256": P.sha_obj([[P.ser_char(a), P.ser_char(b)] for a, b in combined_edges]),
            "false_twin_classes_sha256": P.sha_obj([[P.ser_char(ch) for ch in c] for c in classes]),
        },
        "sample_sparse_relations": {
            "monomials": [P.ser_relation(r) for r in monomials[:10]],
            "binomials": [P.ser_relation(r) for r in binomials[:20]],
            "trinomials": [P.ser_relation(r) for r in trinomials[:20]],
        },
        "seconds": time.time() - t0,
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("ADJACENT RESULT", json.dumps(result, sort_keys=True), flush=True)
    if monomials:
        print("CANDIDATE129 ROOT ADJACENT MONOMIAL CONTRADICTION", len(monomials), flush=True)


if __name__ == "__main__":
    main()

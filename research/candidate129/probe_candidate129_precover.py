#!/usr/bin/env python3
"""Fast exact Candidate-129 audit through the root factor graph, before cover enumeration."""
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


def main():
    t0 = time.time()
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else HERE / "candidate129_support.txt")
    output_path = Path(sys.argv[2] if len(sys.argv) > 2 else HERE / "candidate129_precover.json")
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha, P.EXPECTED_SUPPORT_SHA256))
    support = P.parse_support(support_path)
    if len(support) != 143:
        raise AssertionError(("support size", len(support)))
    print("SUPPORT PASS", len(support), support_sha, flush=True)

    amps = P.amplitude_matching_sets(support)
    loc = {x: i for i, x in enumerate(support)}
    base = []
    for q, active, mons in amps:
        if all(x == q[0] for x in q):
            continue
        if len(active) == 6:
            base.append(P.canon_relation([
                (Fraction(1), tuple(sorted((loc[x], 1) for x in mon))) for mon in mons
            ]))
    base = sorted(set(base)); P.check_count("base", base)
    g1 = P.overlap_closure(base, {6}, 6, min_face=3); P.check_count("g1", g1)
    r1 = sorted(set(base) | set(g1)); P.check_count("r1", r1)
    g2 = P.overlap_closure(r1, {6}, 6, min_face=3); P.check_count("g2", g2)
    r2 = sorted(set(r1) | set(g2)); P.check_count("r2", r2)
    g3 = P.overlap_closure(r2, {4, 5, 6}, 6, min_face=2); P.check_count("g3", g3)
    r3 = sorted(set(r2) | set(g3)); P.check_count("r3", r3)

    tetranomials = [r for r in r3 if len(r) == 4]
    edges = set(); factorable = 0; witness = {}
    for ri, rel in enumerate(tetranomials):
        le = P.factorize_tetranomial_trivial(rel, len(support))
        if le:
            factorable += 1
        for edge in le:
            edges.add(edge); witness.setdefault(edge, ri)
    edges = sorted(edges)
    vertices = sorted({v for e in edges for v in e})
    classes, qedges = P.false_twin_classes(vertices, edges) if edges else ([], [])
    comps = P.components(len(classes), qedges) if classes else []

    relation_sha = P.sha_obj([P.ser_relation(r) for r in r3])
    edge_sha = P.sha_obj([[P.ser_char(a), P.ser_char(b)] for a, b in edges])
    class_sha = P.sha_obj([[P.ser_char(ch) for ch in C] for C in classes])
    result = {
        "schema": "mqg.n8d3.candidate129-precover.v1",
        "epistemic_status": "REPRODUCED computation if embedded assertions pass; not a support impossibility certificate",
        "support_size": len(support),
        "support_file_sha256": support_sha,
        "root_relation_count": len(r3),
        "root_relation_distribution": {str(k): v for k, v in sorted(Counter(map(len, r3)).items())},
        "root_relation_set_sha256": relation_sha,
        "tetranomials": len(tetranomials),
        "factorable_tetranomials": factorable,
        "factor_edges": len(edges),
        "signed_factor_vertices": len(vertices),
        "false_twin_classes": len(classes),
        "false_twin_class_sizes": [len(C) for C in classes],
        "quotient_edges": [list(e) for e in qedges],
        "components": [list(C) for C in comps],
        "factor_edges_sha256": edge_sha,
        "false_twin_classes_sha256": class_sha,
        "seconds": time.time() - t0,
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("PRECOVER PASS", json.dumps(result, sort_keys=True), flush=True)


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Candidate-129 fatal-edge verifier, revision 2.

This revision removes the brittle serialization of one raw signed-character
vector.  It reconstructs the graph from the support and locates, inside root
relation 1037, an exact raw factor edge whose false-twin classes are (36,97).
All amplitudes, closure relations, factor edges, classes, signed lattices, and
terminal local flips are still rebuilt from the support alone.
"""
from __future__ import annotations

from pathlib import Path
import hashlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import verify_candidate129_fatal_certificate as V


def main():
    t0 = time.time()
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else HERE / "candidate129_support.txt")
    output_path = Path(sys.argv[2]) if len(sys.argv) > 2 else None
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != V.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = V.parse_support(support_path)
    amps, relations = V.reconstruct(support)

    factorable = 0
    edges = set()
    relation_edges = {}
    for ri, rel in enumerate(relations):
        if len(rel) != 4:
            continue
        local = V.factor_tetranomial(rel, len(support))
        if local:
            factorable += 1
        relation_edges[ri] = tuple(local)
        edges.update(local)
    edges = sorted(edges)
    vertices = sorted({v for e in edges for v in e})
    classes, qedges, cmap = V.false_twin_classes(vertices, edges)
    counts = {
        "factorable_tetranomials": factorable,
        "factor_edges": len(edges),
        "signed_vertices": len(vertices),
        "false_twin_classes": len(classes),
        "quotient_edges": len(qedges),
    }
    if counts != V.EXPECTED_ROOT_FACTOR_COUNTS:
        raise AssertionError(("factor counts", counts, V.EXPECTED_ROOT_FACTOR_COUNTS))
    if V.sha_obj([[V.ser_char(a), V.ser_char(b)] for a, b in edges]) != V.EXPECTED_FACTOR_EDGE_SHA256:
        raise AssertionError("factor edge SHA mismatch")
    if V.sha_obj([[V.ser_char(ch) for ch in C] for C in classes]) != V.EXPECTED_CLASS_SHA256:
        raise AssertionError("class SHA mismatch")
    if V.sha_obj([list(e) for e in qedges]) != V.EXPECTED_QEDGE_SHA256:
        raise AssertionError("quotient edge SHA mismatch")
    if tuple(sorted(V.FATAL_CLASSES)) not in qedges:
        raise AssertionError("fatal quotient edge missing")
    for ci, size in V.EXPECTED_CLASS_SIZES.items():
        if len(classes[ci]) != size:
            raise AssertionError(("fatal class size", ci, len(classes[ci]), size))

    fatal_raw_witnesses = []
    for edge in relation_edges.get(1037, ()):
        ce = tuple(sorted((cmap[edge[0]], cmap[edge[1]])))
        if ce == V.FATAL_CLASSES:
            fatal_raw_witnesses.append(edge)
    if not fatal_raw_witnesses:
        raise AssertionError("relation 1037 lacks a raw factor edge mapping to classes (36,97)")
    fatal_raw_witnesses.sort()
    witness_edge = fatal_raw_witnesses[0]

    endpoint_results = [
        V.verify_flip(ci, classes, relations, amps, len(support))
        for ci in V.FATAL_CLASSES
    ]
    result = {
        "schema": "mqg.n8d3.candidate129-fatal-certificate.verifier-output.v2",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": V.EXPECTED_RELATION_SHA256,
        "factor_edge_sha256": V.EXPECTED_FACTOR_EDGE_SHA256,
        "false_twin_class_sha256": V.EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": V.EXPECTED_QEDGE_SHA256,
        "root_factor_counts": counts,
        "fatal_quotient_edge": list(V.FATAL_CLASSES),
        "root_tetranomial_witness": 1037,
        "raw_witness_edge": [V.ser_char(witness_edge[0]), V.ser_char(witness_edge[1])],
        "endpoint_results": endpoint_results,
        "proof_logic": (
            "Every torus solution chooses a zero factor on each corrected-sign factor edge. "
            "Every finite vertex cover contains a minimal cover; false twins are all-or-none "
            "in a minimal cover.  The quotient edge (36,97) therefore forces class 36 or 97, "
            "and each endpoint assumption yields an exact nonzero Laurent monomial equal to zero."
        ),
        "seconds": time.time() - t0,
    }
    result["canonical_content_sha256"] = V.sha_obj(result)
    if output_path:
        output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("ROOT RECONSTRUCTION PASS", V.EXPECTED_RELATION_SHA256, flush=True)
    print("ROOT FACTOR GRAPH PASS", counts, flush=True)
    print("FATAL EDGE PASS", V.FATAL_CLASSES, "RELATION", 1037, flush=True)
    for row in endpoint_results:
        print("ENDPOINT CLASS PASS", row, flush=True)
    print("CANDIDATE129 SUPPORT IMPOSSIBLE: PASS", flush=True)
    print("VERIFIER CONTENT SHA256", result["canonical_content_sha256"], flush=True)


if __name__ == "__main__":
    main()

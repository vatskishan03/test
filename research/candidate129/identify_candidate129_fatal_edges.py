#!/usr/bin/env python3
"""Extract exact quotient edges whose two endpoints are singleton-local-flip contradictions."""
from __future__ import annotations

from fractions import Fraction
from pathlib import Path
import hashlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import probe_candidate129 as P
import audit_candidate129_singletons as S
import audit_candidate129_forced_core as C


def main():
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else HERE / "candidate129_support.txt")
    output_path = Path(sys.argv[2] if len(sys.argv) > 2 else HERE / "candidate129_fatal_edges.json")
    t0 = time.time()
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = P.parse_support(support_path)
    relations, classes, qedges = S.reconstruct(support)
    bad = C.IMPOSSIBLE_SINGLETON_CLASSES
    fatal = [e for e in qedges if e[0] in bad and e[1] in bad]
    if not fatal:
        raise AssertionError("forced-core conflict exists but no directly fatal edge found")

    # Recover exact signed-character edge witnesses from the root tetranomials.
    raw_edges = {}
    for ri, rel in enumerate(relations):
        if len(rel) != 4:
            continue
        for edge in P.factorize_tetranomial_trivial(rel, len(support)):
            raw_edges.setdefault(edge, ri)
    vertices = sorted({v for e in raw_edges for v in e})
    v_to_class = {ch: ci for ci, cls in enumerate(classes) for ch in cls}

    witnesses = []
    for a, b in fatal:
        candidates = []
        for edge, ri in raw_edges.items():
            ca, cb = v_to_class[edge[0]], v_to_class[edge[1]]
            if tuple(sorted((ca, cb))) == (a, b):
                candidates.append((ri, edge))
        if not candidates:
            raise AssertionError(("fatal quotient edge lacks raw witness", a, b))
        ri, edge = min(candidates, key=lambda x: x[0])
        witnesses.append({
            "quotient_edge": [a, b],
            "root_tetranomial_relation_index": ri,
            "raw_signed_character_edge": [P.ser_char(edge[0]), P.ser_char(edge[1])],
            "class_a_size": len(classes[a]),
            "class_b_size": len(classes[b]),
        })

    result = {
        "schema": "mqg.n8d3.candidate129-fatal-edges.v1",
        "epistemic_status": "REPRODUCED exact factor-graph implication; endpoint impossibility remains PROVISIONAL until one independent verifier replays both local-flip certificates",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": S.EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": P.sha_obj([list(e) for e in qedges]),
        "impossible_singleton_classes": sorted(bad),
        "fatal_quotient_edges": [list(e) for e in fatal],
        "fatal_edge_count": len(fatal),
        "witnesses": witnesses,
        "seconds": time.time() - t0,
    }
    output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("FATAL EDGES PASS", json.dumps(result, sort_keys=True), flush=True)


if __name__ == "__main__":
    main()

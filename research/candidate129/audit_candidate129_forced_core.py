#!/usr/bin/env python3
"""Derive and audit Candidate-129's forced quotient-class core.

Twenty-two quotient classes have independently reproduced one-extra-matching
local-flip contradictions.  No feasible factor cover can select any of them.
In a vertex cover, omitting a class forces every neighbor to be selected.
This script propagates those exclusions through the exact quotient graph,
checks for an immediate graph conflict, then saturates the resulting selected
character core and runs the exact local-flip terminal test.
"""
from __future__ import annotations

from collections import Counter
from pathlib import Path
import hashlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import probe_candidate129 as P
import audit_candidate129_singletons as S
import audit_candidate129_singleton_flips as F
import search_candidate129_dpll as D

# Exhaustive singleton-local-flip sweep, run 31485553130.
IMPOSSIBLE_SINGLETON_CLASSES = frozenset({
    2, 36, 43,
    49, 50, 51, 52, 54, 55, 56, 57, 59,
    72, 74, 75, 77, 78, 81, 95, 97, 98, 99,
})
EXPECTED_IMPOSSIBLE_COUNT = 22


def main():
    support_path = Path(sys.argv[1] if len(sys.argv) > 1 else HERE / "candidate129_support.txt")
    output_path = Path(sys.argv[2] if len(sys.argv) > 2 else HERE / "candidate129_forced_core.json")
    t0 = time.time()
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    if len(IMPOSSIBLE_SINGLETON_CLASSES) != EXPECTED_IMPOSSIBLE_COUNT:
        raise AssertionError("impossible class inventory")
    support = P.parse_support(support_path)
    relations, classes, qedges = S.reconstruct(support)
    amps, maps, pairs = F.build_nested_pairs(support)

    propagated = D.propagate((), IMPOSSIBLE_SINGLETON_CLASSES, qedges)
    graph_conflict = propagated is None
    if graph_conflict:
        selected = frozenset()
        omitted = IMPOSSIBLE_SINGLETON_CLASSES
        residual = ()
        evaluation = {
            "status": "graph_conflict",
            "reason": "forcing neighbors of the impossible singleton classes selects an impossible class or leaves an uncovered edge between omitted classes",
        }
    else:
        selected, omitted = propagated
        residual = D.residual_edges(selected, qedges)
        raw = [ch for ci in sorted(selected) for ch in classes[ci]]
        compact, input_lat = S.compact_basis(raw, len(support))
        sat = S.saturate(relations, len(support), compact)
        evaluation = {
            "status": sat["status"],
            "raw_character_count": len(raw),
            "compact_input_count": len(compact),
            "input_rank": input_lat.rank,
            "final_character_count": len(sat["chars"]),
            "final_rank": sat["lat"].rank,
            "root_witness": sat.get("witness"),
            "root_history": sat["history"],
            "local_flip": None,
        }
        if sat["status"] == "stable":
            flip = F.find_flip(sat["lat"], maps, pairs)
            if flip is not None:
                pi, frow, normal = flip
                ff = dict(frow); ff["pair_index"] = pi
                if normal is not None:
                    exp, bit = normal
                    ff["common_ratio_normal_exponent"] = [[i, int(x)] for i, x in enumerate(exp) if x]
                    ff["common_ratio_sign_bit"] = int(bit)
                evaluation["local_flip"] = ff
                evaluation["status"] = "local_flip"

    adj = [set() for _ in classes]
    for a, b in qedges:
        adj[a].add(b); adj[b].add(a)
    forced_by = {
        str(v): sorted(IMPOSSIBLE_SINGLETON_CLASSES.intersection(adj[v]))
        for v in sorted(selected)
    }
    result = {
        "schema": "mqg.n8d3.candidate129-forced-core.v1",
        "epistemic_status": "PROVISIONAL implication layer until the 22 singleton flips and this core are replayed by one independent verifier",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": S.EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": P.sha_obj([list(e) for e in qedges]),
        "impossible_singleton_classes": sorted(IMPOSSIBLE_SINGLETON_CLASSES),
        "impossible_singleton_count": len(IMPOSSIBLE_SINGLETON_CLASSES),
        "graph_conflict": graph_conflict,
        "forced_selected_classes": sorted(selected),
        "forced_selected_count": len(selected),
        "forced_by_impossible_neighbors": forced_by,
        "omitted_classes": sorted(omitted),
        "residual_quotient_edges": [list(e) for e in residual],
        "residual_quotient_edge_count": len(residual),
        "evaluation": evaluation,
        "nested_adjacent_pair_count": len(pairs),
        "seconds": time.time() - t0,
    }
    output_path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("FORCED CORE RESULT", json.dumps(result, sort_keys=True), flush=True)
    if graph_conflict or evaluation["status"] != "stable":
        print("CANDIDATE129 FORCED CORE CONTRADICTION", evaluation["status"], flush=True)


if __name__ == "__main__":
    main()

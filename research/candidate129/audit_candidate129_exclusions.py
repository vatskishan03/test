#!/usr/bin/env python3
"""Audit exact class-exclusion implications for Candidate 129.

If a vertex cover omits quotient class v, every neighbor of v is forced into
that cover.  For each v in a requested range, this script saturates the exact
16,381-relation Laurent system with the union of all signed characters in N(v).
A terminal contradiction proves that v occurs in every feasible factor cover.
"""
from __future__ import annotations

from collections import Counter
from pathlib import Path
import argparse
import hashlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import probe_candidate129 as P
import audit_candidate129_singletons as S


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("support")
    ap.add_argument("output")
    ap.add_argument("--start", type=int, required=True)
    ap.add_argument("--end", type=int, required=True)
    args = ap.parse_args()
    t0 = time.time()
    support_path = Path(args.support)
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = P.parse_support(support_path)
    relations, classes, qedges = S.reconstruct(support)
    adj = [set() for _ in classes]
    for a, b in qedges:
        adj[a].add(b); adj[b].add(a)
    end = min(args.end, len(classes))
    if not 0 <= args.start <= end:
        raise AssertionError((args.start, end))
    rows = []
    for v in range(args.start, end):
        ts = time.time()
        raw = [ch for u in sorted(adj[v]) for ch in classes[u]]
        initial, initial_lat = S.compact_basis(raw, len(support))
        sat = S.saturate(relations, len(support), initial)
        row = {
            "omitted_class": v,
            "forced_neighbor_classes": sorted(adj[v]),
            "degree": len(adj[v]),
            "raw_forced_character_count": len(raw),
            "compact_input_count": len(initial),
            "input_rank": initial_lat.rank,
            "status": sat["status"],
            "final_character_count": len(sat["chars"]),
            "final_rank": sat["lat"].rank,
            "witness": sat.get("witness"),
            "history": sat["history"],
            "compact_input_characters": [P.ser_char(ch) for ch in initial],
            "seconds": time.time() - ts,
        }
        rows.append(row)
        print(
            "OMIT", v,
            "DEG", row["degree"],
            "FORCE", len(row["forced_neighbor_classes"]),
            row["status"],
            "RANK", row["final_rank"],
            "WITNESS", row["witness"],
            "SEC", round(row["seconds"], 3),
            flush=True,
        )
    out = {
        "schema": "mqg.n8d3.candidate129-class-exclusion-audit.v1",
        "epistemic_status": "REPRODUCED computation if assertions pass; terminal rows provisionally force the omitted class until independent ancestry replay",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": S.EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": P.sha_obj([list(e) for e in qedges]),
        "class_range": [args.start, end],
        "results": rows,
        "seconds": time.time() - t0,
    }
    Path(args.output).write_text(json.dumps(out, indent=2, sort_keys=True) + "\n")
    print("EXCLUSION CHUNK PASS", args.start, end, Counter(r["status"] for r in rows), flush=True)


if __name__ == "__main__":
    main()

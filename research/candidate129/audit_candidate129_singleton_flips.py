#!/usr/bin/env python3
"""Search exact one-extra-matching local flips for Candidate-129 singleton states.

For each quotient class, first reproduce exact root-relation character
saturation.  Then inspect every one-vertex adjacent forbidden-coloring pair in
which one active matching set is the other plus exactly one matching.  If all
common matching ratios agree in the final signed Laurent lattice, subtracting
one transported amplitude from the other leaves the extra matching monomial.
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


def dense_global_mon(mon, support_loc, n):
    z = [0] * n
    for x in mon:
        z[support_loc[int(x)]] += 1
    return tuple(z)


def sub(a, b):
    return tuple(x - y for x, y in zip(a, b))


def build_nested_pairs(support):
    amps = P.amplitude_matching_sets(support)
    loc = {x: i for i, x in enumerate(support)}
    active = [tuple(row[1]) for row in amps]
    maps = []
    forbidden = []
    for q, act, mons in amps:
        forbidden.append(not all(x == q[0] for x in q))
        maps.append({int(mi): dense_global_mon(mon, loc, len(support)) for mi, mon in zip(act, mons)})
    powers = [3**v for v in range(P.N)]
    pairs = []
    for ca, (qa, aa, _ma) in enumerate(amps):
        if not forbidden[ca]:
            continue
        sa = set(aa)
        for v in range(P.N):
            old = qa[v]
            for new in range(P.D):
                if new == old:
                    continue
                cb = ca + (new - old) * powers[v]
                if cb <= ca or not forbidden[cb]:
                    continue
                sb = set(active[cb])
                if len(sb) == len(sa) + 1 and sa < sb:
                    small, large = ca, cb
                    common = tuple(sorted(sa))
                    extra = next(iter(sb - sa))
                elif len(sa) == len(sb) + 1 and sb < sa:
                    small, large = cb, ca
                    common = tuple(sorted(sb))
                    extra = next(iter(sa - sb))
                else:
                    continue
                pairs.append({
                    "small_code": small,
                    "large_code": large,
                    "changed_vertex": v,
                    "common_matchings": common,
                    "extra_matching": int(extra),
                })
    pairs.sort(key=lambda r: (r["small_code"], r["large_code"], r["extra_matching"]))
    return amps, maps, pairs


def find_flip(lat, maps, pairs):
    cache = {}
    for pi, row in enumerate(pairs):
        small = row["small_code"]
        large = row["large_code"]
        normals = []
        for mi in row["common_matchings"]:
            d = sub(maps[large][mi], maps[small][mi])
            if d not in cache:
                cache[d] = lat.term(d)
            normals.append(cache[d])
        if not normals:
            # 0 = one nonzero monomial is already impossible.
            return pi, row, None
        if all(x == normals[0] for x in normals[1:]):
            return pi, row, normals[0]
    return None


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
    amps, maps, pairs = build_nested_pairs(support)
    print("NESTED ADJACENT PAIRS", len(pairs), flush=True)
    end = min(args.end, len(classes))
    rows = []
    for ci in range(args.start, end):
        ts = time.time()
        initial, initial_lat = S.compact_basis(classes[ci], len(support))
        sat = S.saturate(relations, len(support), initial)
        if sat["status"] != "stable":
            flip = None
        else:
            flip = find_flip(sat["lat"], maps, pairs)
        out_flip = None
        if flip is not None:
            pi, frow, normal = flip
            out_flip = dict(frow)
            out_flip["pair_index"] = pi
            if normal is not None:
                exp, bit = normal
                out_flip["common_ratio_normal_exponent"] = [[i, int(x)] for i, x in enumerate(exp) if x]
                out_flip["common_ratio_sign_bit"] = int(bit)
        row = {
            "class": ci,
            "root_status": sat["status"],
            "final_character_count": len(sat["chars"]),
            "final_rank": sat["lat"].rank,
            "root_witness": sat.get("witness"),
            "local_flip": out_flip,
            "compact_input_characters": [P.ser_char(ch) for ch in initial],
            "seconds": time.time() - ts,
        }
        rows.append(row)
        print(
            "SINGLETON-FLIP", ci,
            "ROOT", row["root_status"],
            "RANK", row["final_rank"],
            "FLIP", None if out_flip is None else (out_flip["small_code"], out_flip["large_code"], out_flip["extra_matching"]),
            "SEC", round(row["seconds"], 3),
            flush=True,
        )
    result = {
        "schema": "mqg.n8d3.candidate129-singleton-local-flip-audit.v1",
        "epistemic_status": "REPRODUCED computation if assertions pass; any terminal flip is provisional until independently replayed from its compact character ancestry",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": S.EXPECTED_CLASS_SHA256,
        "nested_adjacent_pair_count": len(pairs),
        "class_range": [args.start, end],
        "results": rows,
        "seconds": time.time() - t0,
    }
    Path(args.output).write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print("SINGLETON FLIP CHUNK PASS", args.start, end, Counter("flip" if r["local_flip"] else r["root_status"] for r in rows), flush=True)


if __name__ == "__main__":
    main()

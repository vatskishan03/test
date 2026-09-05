#!/usr/bin/env python3
"""Algebraically pruned exact factor-cover DPLL for Candidate 129.

The static quotient graph represents the corrected-sign root tetranomial
factor alternatives.  Every minimal cover is partitioned recursively by:
  * select class v; or
  * omit v, which forces every neighbor of v.
At every node the selected character classes are compacted into an exact
augmented HNF lattice, the 16,381 root relations are saturated, and the exact
one-extra-matching adjacent-amplitude terminal test is run.

This is a discovery proof-tree generator.  A closed tree must later be replayed
by a smaller manifest verifier before Candidate 129 is frozen.
"""
from __future__ import annotations

from collections import Counter, defaultdict
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
import audit_candidate129_singleton_flips as F


def propagate(selected, omitted, edges):
    selected = set(selected); omitted = set(omitted)
    if selected & omitted:
        return None
    changed = True
    while changed:
        changed = False
        for a, b in edges:
            if a in selected or b in selected:
                continue
            if a in omitted and b in omitted:
                return None
            if a in omitted and b not in selected:
                selected.add(b); changed = True
            elif b in omitted and a not in selected:
                selected.add(a); changed = True
    if selected & omitted:
        return None
    return frozenset(selected), frozenset(omitted)


def residual_edges(selected, edges):
    return tuple(e for e in edges if e[0] not in selected and e[1] not in selected)


def choose_vertex(selected, omitted, edges):
    residual = residual_edges(selected, edges)
    deg = Counter()
    for a, b in residual:
        if a not in omitted:
            deg[a] += 1
        if b not in omitted:
            deg[b] += 1
    if not deg:
        return None
    return max(deg, key=lambda v: (deg[v], -v))


def graph_frontier(edges, depth):
    start = propagate((), (), edges)
    states = [start]
    for _ in range(depth):
        nxt = []
        for state in states:
            if state is None:
                continue
            selected, omitted = state
            v = choose_vertex(selected, omitted, edges)
            if v is None:
                nxt.append(state)
                continue
            a = propagate(set(selected) | {v}, omitted, edges)
            b = propagate(selected, set(omitted) | {v}, edges)
            if a is not None:
                nxt.append(a)
            if b is not None:
                nxt.append(b)
        states = sorted(set(nxt), key=lambda x: (tuple(sorted(x[0])), tuple(sorted(x[1]))))
    return states


class Search:
    def __init__(self, support, relations, classes, edges, maps, pairs, max_depth, node_limit, deadline):
        self.support = support
        self.relations = relations
        self.classes = classes
        self.edges = tuple(edges)
        self.maps = maps
        self.pairs = pairs
        self.max_depth = max_depth
        self.node_limit = node_limit
        self.deadline = deadline
        self.nodes = []
        self.eval_cache = {}
        self.search_cache = {}
        self.counts = Counter()

    def evaluate(self, selected):
        key = tuple(sorted(selected))
        if key in self.eval_cache:
            return self.eval_cache[key]
        raw = [ch for ci in key for ch in self.classes[ci]]
        initial, initial_lat = S.compact_basis(raw, len(self.support))
        sat = S.saturate(self.relations, len(self.support), initial)
        result = {
            "selected_classes": list(key),
            "raw_character_count": len(raw),
            "compact_input_count": len(initial),
            "input_rank": initial_lat.rank,
            "root_status": sat["status"],
            "final_character_count": len(sat["chars"]),
            "final_rank": sat["lat"].rank,
            "root_witness": sat.get("witness"),
            "root_history": sat["history"],
            "local_flip": None,
        }
        if sat["status"] == "stable":
            flip = F.find_flip(sat["lat"], self.maps, self.pairs)
            if flip is not None:
                pi, frow, normal = flip
                ff = dict(frow); ff["pair_index"] = pi
                if normal is not None:
                    exp, bit = normal
                    ff["common_ratio_normal_exponent"] = [[i, int(x)] for i, x in enumerate(exp) if x]
                    ff["common_ratio_sign_bit"] = int(bit)
                result["local_flip"] = ff
                result["status"] = "local_flip"
            else:
                result["status"] = "stable"
        else:
            result["status"] = sat["status"]
        self.eval_cache[key] = result
        return result

    def recurse(self, selected, omitted, depth):
        if len(self.nodes) >= self.node_limit or time.time() >= self.deadline:
            return {"status": "limit", "selected": sorted(selected), "omitted": sorted(omitted), "depth": depth}
        state = propagate(selected, omitted, self.edges)
        if state is None:
            self.counts["combinatorial_dead"] += 1
            return {"status": "combinatorial_dead", "depth": depth}
        selected, omitted = state
        skey = (tuple(sorted(selected)), tuple(sorted(omitted)), depth)
        if skey in self.search_cache:
            self.counts["memo"] += 1
            return {"status": "memo", "target": self.search_cache[skey], "depth": depth}
        node_id = len(self.nodes)
        self.search_cache[skey] = node_id
        ev = self.evaluate(selected)
        residual = residual_edges(selected, self.edges)
        node = {
            "id": node_id,
            "depth": depth,
            "selected": sorted(selected),
            "omitted": sorted(omitted),
            "residual_edge_count": len(residual),
            "evaluation": ev,
        }
        self.nodes.append(node)
        if ev["status"] != "stable":
            self.counts[ev["status"]] += 1
            node["status"] = "closed"
            return {"status": "closed", "node": node_id, "reason": ev["status"]}
        if not residual:
            self.counts["stable_cover"] += 1
            node["status"] = "stable_cover"
            return {"status": "stable_cover", "node": node_id}
        if depth >= self.max_depth:
            self.counts["frontier"] += 1
            node["status"] = "frontier"
            return {"status": "frontier", "node": node_id}
        v = choose_vertex(selected, omitted, self.edges)
        node["branch_vertex"] = v
        left = self.recurse(set(selected) | {v}, omitted, depth + 1)
        right = self.recurse(selected, set(omitted) | {v}, depth + 1)
        node["children"] = {"select": left, "omit": right}
        if left["status"] in {"closed", "combinatorial_dead", "memo"} and right["status"] in {"closed", "combinatorial_dead", "memo"}:
            node["status"] = "closed_by_children"
            self.counts["closed_by_children"] += 1
            return {"status": "closed", "node": node_id, "reason": "children"}
        node["status"] = "open_by_children"
        return {"status": "open", "node": node_id}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("support")
    ap.add_argument("output")
    ap.add_argument("--prefix-depth", type=int, default=4)
    ap.add_argument("--prefix-index", type=int, required=True)
    ap.add_argument("--search-depth", type=int, default=4)
    ap.add_argument("--node-limit", type=int, default=200)
    ap.add_argument("--seconds", type=int, default=6600)
    args = ap.parse_args()
    t0 = time.time()
    support_path = Path(args.support)
    support_sha = hashlib.sha256(support_path.read_bytes()).hexdigest()
    if support_sha != P.EXPECTED_SUPPORT_SHA256:
        raise AssertionError(("support SHA", support_sha))
    support = P.parse_support(support_path)
    relations, classes, qedges = S.reconstruct(support)
    _amps, maps, pairs = F.build_nested_pairs(support)
    frontier = graph_frontier(qedges, args.prefix_depth)
    print("GRAPH FRONTIER", args.prefix_depth, len(frontier), flush=True)
    if args.prefix_index >= len(frontier):
        out = {
            "schema": "mqg.n8d3.candidate129-dpll.v1",
            "status": "unused_prefix_index",
            "prefix_index": args.prefix_index,
            "prefix_count": len(frontier),
        }
        Path(args.output).write_text(json.dumps(out, indent=2, sort_keys=True) + "\n")
        print("UNUSED PREFIX", args.prefix_index, flush=True)
        return
    selected, omitted = frontier[args.prefix_index]
    search = Search(
        support, relations, classes, qedges, maps, pairs,
        max_depth=args.search_depth,
        node_limit=args.node_limit,
        deadline=time.time() + args.seconds,
    )
    result = search.recurse(selected, omitted, 0)
    out = {
        "schema": "mqg.n8d3.candidate129-dpll.v1",
        "epistemic_status": "PROVISIONAL proof-tree exploration; every terminal is exact but a closed global tree requires independent replay",
        "support_file_sha256": support_sha,
        "root_relation_set_sha256": P.sha_obj([P.ser_relation(r) for r in relations]),
        "false_twin_classes_sha256": S.EXPECTED_CLASS_SHA256,
        "quotient_edge_sha256": P.sha_obj([list(e) for e in qedges]),
        "nested_adjacent_pair_count": len(pairs),
        "prefix_depth": args.prefix_depth,
        "prefix_count": len(frontier),
        "prefix_index": args.prefix_index,
        "prefix_selected": sorted(selected),
        "prefix_omitted": sorted(omitted),
        "search_depth": args.search_depth,
        "node_limit": args.node_limit,
        "result": result,
        "counts": dict(search.counts),
        "nodes": search.nodes,
        "seconds": time.time() - t0,
    }
    Path(args.output).write_text(json.dumps(out, indent=2, sort_keys=True) + "\n")
    print("DPLL PREFIX RESULT", args.prefix_index, result, dict(search.counts), "NODES", len(search.nodes), flush=True)


if __name__ == "__main__":
    main()

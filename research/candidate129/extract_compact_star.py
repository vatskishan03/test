#!/usr/bin/env python3
"""Extract the backwards slice needed by an 11-leaf fatal star.

This is exact certificate extraction, NOT a Lean theorem. Reuse the audited
support, matching order and reconstruction engine. No frozen input changes.
The polynomial DAG retains provenance back to full amplitudes. Every signed
lattice implication exports explicit integer coefficients for independent
replay without HNF. Lean replay is still required.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import time
from sympy import Matrix
import verify_candidate129_fatal_certificate as V


def integer_witness(chars, target):
    """Solve only in the producer; emit integers and recheck the whole vector."""
    n = len(target[0])
    rows = [tuple(d) + (b,) for d, b in chars] + [(0,) * n + (2,)]
    vector = tuple(target[0]) + (target[1],)
    coefficients, parameters = Matrix(rows).T.gauss_jordan_solve(Matrix(vector))
    if parameters.rows or any(c.q != 1 for c in coefficients):
        raise ValueError("this compact chain needs a different integer-witness producer")
    coefficients = list(map(int, coefficients))
    if tuple(sum(c * row[j] for c, row in zip(coefficients, rows)) for j in range(n + 1)) != vector:
        raise ValueError("invalid integer witness")
    return coefficients


def certified_chain(initial, sources, relations, n, visit):
    current, chain = list(initial), []
    for ri, target in sources:
        lat = V.SignedLattice(n, current)
        reductions = []
        for _, monomial in relations[ri]:
            dense = V.dense_sparse(monomial, n)
            exponent, bit = lat.term(dense)
            reductions.append({"exponent": [[i, e] for i, e in enumerate(exponent) if e], "bit": bit,
                               "coefficients": integer_witness(current, (V.dense_sub(dense, exponent), bit))})
        inferred = V.binomial_char(V.reduce_relation(relations[ri], lat, n))
        if inferred is None:
            raise ValueError("source is not a binomial under the preceding characters")
        chain.append({"relation": visit(relations[ri]), "character": V.ser_char(target),
                      "reductions": reductions,
                      "character_coefficients": integer_witness(current + [inferred], target)})
        current.append(target)
    return chain


def reconstruct_with_provenance(support):
    amps = V.amplitudes(support)
    provenance = {}
    for code, row in enumerate(amps):
        if len(row["active"]) == 6 and len(set(row["q"])) > 1:
            relation = V.canon_relation([(1, m) for m in row["sparse"]])
            provenance.setdefault(relation, ("amplitude", code))
    relations = sorted(provenance)
    V.check_count("base", relations)
    for number, sizes, min_face in [(1, {6}, 3), (2, {6}, 3), (3, {4, 5, 6}, 2)]:
        generated = V.overlap_closure(relations, sizes, 6, min_face)
        V.check_count(f"g{number}", generated)
        for relation, (ri, ia, rj, ib) in generated.items():
            provenance.setdefault(relation, ("overlap", relations[ri], ia, relations[rj], ib))
        relations = sorted(set(relations) | set(generated))
        V.check_count(f"r{number}", relations)
    if V.sha_obj([V.ser_relation(r) for r in relations]) != V.EXPECTED_RELATION_SHA256:
        raise ValueError("reconstruction differs from the audited relation set")
    return amps, relations, provenance


def extract(support_path):
    if hashlib.sha256(support_path.read_bytes()).hexdigest() != V.EXPECTED_SUPPORT_SHA256:
        raise ValueError("wrong support: this certificate is for Candidate 129 only")
    support = V.parse_support(support_path)
    amps, relations, provenance = reconstruct_with_provenance(support)
    witnesses = {}
    for ri, rel in enumerate(relations):
        for edge in V.factor_tetranomial(rel, len(support)):
            witnesses.setdefault(edge, ri)
    edges = sorted(witnesses)
    if V.sha_obj([[V.ser_char(a), V.ser_char(b)] for a, b in edges]) != V.EXPECTED_FACTOR_EDGE_SHA256:
        raise ValueError("factor graph differs from audited graph")
    classes, _, _ = V.false_twin_classes(sorted({v for edge in edges for v in edge}), edges)
    if V.sha_obj([[V.ser_char(ch) for ch in group] for group in classes]) != V.EXPECTED_CLASS_SHA256:
        raise ValueError("class indexing differs from audited indexing")
    leaves, _ = V.compact(classes[36], len(support))
    if len(leaves) != 11 or len(classes[97]) != 1:
        raise ValueError("unexpected star size")
    center = classes[97][0]
    star_indices = [witnesses[tuple(sorted((leaf, center)))] for leaf in leaves]

    nodes, indices = [], {}

    def visit(relation):
        if relation in indices:
            return indices[relation]
        reason = provenance[relation]
        if reason[0] == "amplitude":
            node = {"kind": "amplitude", "coloring": reason[1]}
        else:
            _, left, ia, right, ib = reason
            # Recheck the recorded cancellation, not only the hash.
            scalar, shift = V.face_transform(tuple(left[i] for i in ia), tuple(right[i] for i in ib))
            combined = [(scalar * c, V.sparse_add(m, shift)) for c, m in left]
            combined += [(-c, m) for c, m in right]
            if V.canon_relation(combined) != relation:
                raise ValueError("invalid overlap provenance")
            node = {"kind": "overlap", "left": visit(left), "right": visit(right),
                    "left_face": list(ia), "right_face": list(ib),
                    "scalar": V.ser_fraction(scalar), "shift": list(shift)}
        node["polynomial"] = V.ser_relation(relation)
        indices[relation] = len(nodes)
        nodes.append(node)
        return indices[relation]

    star_nodes = [visit(relations[ri]) for ri in star_indices]
    endpoints = []
    for ci, initial in [(97, [center]), (36, leaves)]:
        chars, lat, sources, _ = V.saturate(relations, len(support), initial)
        chain = certified_chain(initial, sources, relations, len(support), visit)
        # The original verifier independently repeats each complete endpoint.
        evidence = V.verify_flip(ci, classes, relations, amps, len(support))
        small, large = amps[evidence["small_code"]], amps[evidence["large_code"]]
        common = sorted(small["active"])
        ratios = [V.dense_sub(large["dense"][mi], small["dense"][mi]) for mi in common]
        ratio_witnesses = [integer_witness(chars, (V.dense_sub(ratio, ratios[0]), 0)) for ratio in ratios]
        endpoints.append({"initial": [V.ser_char(ch) for ch in initial],
                          "chain": chain, "final_characters": [V.ser_char(ch) for ch in chars],
                          "flip": evidence, "ratio_witnesses": ratio_witnesses})
    result = {"schema": "mqg.candidate129.compact-star.extraction.v2",
              "trust_status": "integer certificates exported; independent replay and Lean replay required",
              "support_sha256": V.EXPECTED_SUPPORT_SHA256,
              "source_relation_sha256": V.EXPECTED_RELATION_SHA256,
              "support": support, "center": V.ser_char(center),
              "leaves": [V.ser_char(ch) for ch in leaves], "star_relations": star_nodes,
              "nodes": nodes, "endpoints": endpoints}
    result["content_sha256"] = V.sha_obj(result)
    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    started = time.monotonic()
    result = extract(Path(__file__).with_name("candidate129_support.txt"))
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(json.dumps({"star_leaves": len(result["leaves"]),
                      "polynomial_nodes": len(result["nodes"]),
                      "node_kinds": dict(Counter(node["kind"] for node in result["nodes"])),
                      "derived_characters": [len(row["chain"]) for row in result["endpoints"]],
                      "sha256": result["content_sha256"],
                      "seconds": time.monotonic() - started,
                      "kernel_checked": False}, sort_keys=True), flush=True)

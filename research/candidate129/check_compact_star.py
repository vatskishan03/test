#!/usr/bin/env python3
"""Replay the compact certificate using only exact integer/rational arithmetic.

No HNF, search, cover enumeration or numerical solver runs in this checker.
The matching order and arithmetic helpers are reused from the audited engine.
Successful execution is independent exact replay, NOT a Lean theorem.
"""
from collections import defaultdict
from fractions import Fraction
import hashlib
import json
from pathlib import Path
import sys
import verify_candidate129_fatal_certificate as V


def require(condition, message):
    if not condition:
        raise ValueError(message)


def integer(value):
    require(type(value) is int, "non-integer certificate field")
    return value


def monomial(rows, n):
    result = tuple((integer(i), integer(e)) for i, e in rows)
    require(all(0 <= i < n and e != 0 for i, e in result), "invalid sparse exponent")
    require([i for i, _ in result] == sorted({i for i, _ in result}), "unsorted/repeated exponent coordinate")
    return result


def character(row, n):
    bit = integer(row["bit"])
    require(bit in (0, 1), "invalid sign bit")
    return V.dense_sparse(monomial(row["exponent"], n), n), bit


def polynomial(rows, n):
    result = []
    for (numerator, denominator), exponent in rows:
        numerator, denominator = integer(numerator), integer(denominator)
        require(numerator != 0 and denominator > 0, "invalid rational coefficient")
        result.append((Fraction(numerator, denominator), monomial(exponent, n)))
    result = tuple(result)
    # The historical producer's common-monomial normalization is not
    # idempotent for every Laurent translation. Do not assume it is. Each
    # node is checked against its actual derivation below instead.
    require(result and result[0][0] == 1, "invalid normalized leading coefficient")
    require([m for _, m in result] == sorted({m for _, m in result}), "unsorted/repeated polynomial term")
    return result


def membership(chars, target, coefficients):
    n = len(target[0])
    rows = [tuple(d) + (b,) for d, b in chars] + [(0,) * n + (2,)]
    coefficients = [integer(c) for c in coefficients]
    require(len(coefficients) == len(rows), "wrong integer-witness dimension")
    expected = tuple(target[0]) + (target[1],)
    actual = tuple(sum(c * row[j] for c, row in zip(coefficients, rows)) for j in range(n + 1))
    require(actual == expected, "integer lattice witness failed")


def unit_normal_form(terms):
    """Normalize by the least DENSE exponent: a translation-invariant order.

    Used for direct star-product verification, independently of the producer's
    tetranomial factor search and historical common-monomial normalizer.
    """
    acc = defaultdict(Fraction)
    for coefficient, exponent in terms:
        acc[exponent] += coefficient
    ordered = sorted((e, c) for e, c in acc.items() if c)
    require(ordered, "zero polynomial has no Laurent-unit normal form")
    anchor, scale = ordered[0]
    return tuple((tuple(a - b for a, b in zip(exponent, anchor)), coefficient / scale)
                 for exponent, coefficient in ordered)


def check_star_product(relation, leaf, center, n):
    """Check p = unit * (x^leaf - sign_leaf) * (x^center - sign_center)."""
    a, abit = leaf
    b, bbit = center
    sa, sb = (-1 if abit else 1), (-1 if bbit else 1)
    product = [(1, tuple(x + y for x, y in zip(a, b))),
               (-sb, a), (-sa, b), (sa * sb, (0,) * n)]
    declared = [(c, V.dense_sparse(e, n)) for c, e in relation]
    require(unit_normal_form(declared) == unit_normal_form(product), "factor-star edge failed")


def complete_amplitude(support, code):
    code = integer(code)
    require(0 <= code < 3**8, "invalid coloring code")
    coloring = V.decode_coloring(code)
    require(len(set(coloring)) > 1, "an amplitude premise must be nonmonochromatic")
    local = {coordinate: i for i, coordinate in enumerate(support)}
    terms = {}
    for mi, matching in enumerate(V.PMS):
        coordinates = []
        for edge in matching:
            u, v = V.EDGES[edge]
            coordinate = 9 * edge + 3 * coloring[u] + coloring[v]
            if coordinate not in local:
                break
            coordinates.append(local[coordinate])
        else:
            terms[mi] = tuple(sorted((i, 1) for i in coordinates))
    return coloring, terms


def check(data, support_path):
    require(data["schema"] == "mqg.candidate129.compact-star.extraction.v2", "wrong schema")
    require(hashlib.sha256(support_path.read_bytes()).hexdigest() == V.EXPECTED_SUPPORT_SHA256, "wrong support file")
    support = V.parse_support(support_path)
    require(data["support"] == support and data["support_sha256"] == V.EXPECTED_SUPPORT_SHA256, "wrong support payload")
    require(data["content_sha256"] == V.sha_obj({k: v for k, v in data.items() if k != "content_sha256"}), "content hash mismatch")
    n = len(support)
    nodes = []
    for index, node in enumerate(data["nodes"]):
        declared = polynomial(node["polynomial"], n)
        if node["kind"] == "amplitude":
            _, terms = complete_amplitude(support, node["coloring"])
            computed = V.canon_relation([(1, mon) for mon in terms.values()])
        elif node["kind"] == "overlap":
            li, ri = integer(node["left"]), integer(node["right"])
            require(0 <= li < index and 0 <= ri < index, "DAG is not topologically ordered")
            left, right = nodes[li], nodes[ri]
            ia, ib = node["left_face"], node["right_face"]
            require(ia and ib and all(type(i) is int and 0 <= i < len(left) for i in ia)
                    and all(type(i) is int and 0 <= i < len(right) for i in ib), "invalid overlap face")
            require(ia == sorted(set(ia)) and ib == sorted(set(ib)), "repeated overlap face term")
            fa, fb = tuple(left[i] for i in ia), tuple(right[i] for i in ib)
            require(V.canon_relation(fa) == V.canon_relation(fb), "faces are not translated scalar copies")
            scalar, shift = V.face_transform(fa, fb)
            require(V.ser_fraction(scalar) == node["scalar"] and list(map(list, shift)) == node["shift"], "incorrect overlap multiplier")
            combined = [(scalar * c, V.sparse_add(m, shift)) for c, m in left]
            combined += [(-c, m) for c, m in right]
            computed = V.canon_relation(combined)
        else:
            raise ValueError("unknown polynomial derivation rule")
        require(computed == declared, f"polynomial node {index} does not replay")
        nodes.append(declared)

    center = character(data["center"], n)
    leaves = [character(row, n) for row in data["leaves"]]
    require(len(leaves) == 11 and len(set(leaves)) == 11, "wrong star leaf set")
    require(len(data["star_relations"]) == len(leaves), "missing star edge")
    for leaf, index in zip(leaves, data["star_relations"]):
        require(type(index) is int and 0 <= index < len(nodes), "invalid star relation")
        check_star_product(nodes[index], leaf, center, n)

    require(len(data["endpoints"]) == 2, "both endpoint contradictions are required")
    for endpoint, initial in zip(data["endpoints"], ([center], leaves)):
        require([character(row, n) for row in endpoint["initial"]] == initial, "wrong endpoint assumption")
        current = list(initial)
        for step in endpoint["chain"]:
            index = integer(step["relation"])
            require(0 <= index < len(nodes), "invalid chain relation")
            relation = nodes[index]
            require(len(step["reductions"]) == len(relation), "missing term reduction")
            acc = defaultdict(Fraction)
            for (coefficient, source), reduction in zip(relation, step["reductions"]):
                exponent, bit = character(reduction, n)
                difference = V.dense_sub(V.dense_sparse(source, n), exponent)
                membership(current, (difference, bit), reduction["coefficients"])
                acc[exponent] += coefficient * (-1 if bit else 1)
            terms = sorted((e, c) for e, c in acc.items() if c)
            require(len(terms) == 2, "source did not reduce to a binomial")
            (e1, c1), (e2, c2) = terms
            ratio = -c1 / c2
            require(ratio in (1, -1), "binomial is not a signed character")
            inferred = V.normalize_char(V.dense_sub(e2, e1), 0 if ratio == 1 else 1)
            target = character(step["character"], n)
            membership(current + [inferred], target, step["character_coefficients"])
            current.append(target)
        require(current == [character(row, n) for row in endpoint["final_characters"]], "wrong final character list")
        flip = endpoint["flip"]
        qs, small = complete_amplitude(support, flip["small_code"])
        ql, large = complete_amplitude(support, flip["large_code"])
        require(sum(a != b for a, b in zip(qs, ql)) == 1, "not a one-vertex flip")
        require(set(small) < set(large) and set(large) - set(small) == {flip["extra_matching"]}, "not a single-extra-matching flip")
        common = sorted(small)
        require(common and len(endpoint["ratio_witnesses"]) == len(common), "missing ratio witness")
        ratios = [V.dense_sub(V.dense_sparse(large[mi], n), V.dense_sparse(small[mi], n)) for mi in common]
        for ratio, coefficients in zip(ratios, endpoint["ratio_witnesses"]):
            membership(current, (V.dense_sub(ratio, ratios[0]), 0), coefficients)
        # Thus multiplying the complete small amplitude by the first ratio
        # cancels EVERY common matching of the complete large amplitude.
        # Exactly one supported monomial remains, which is nonzero on (C*)^S.
    return {"polynomial_nodes": len(nodes), "star_leaves": len(leaves),
            "derived_characters": [len(row["chain"]) for row in data["endpoints"]],
            "hnf_calls": 0, "kernel_checked": False}


if __name__ == "__main__":
    result = check(json.loads(Path(sys.argv[1]).read_text()), Path(__file__).with_name("candidate129_support.txt"))
    print("EXACT COMPACT REPLAY PASS " + json.dumps(result, sort_keys=True))

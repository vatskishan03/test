#!/usr/bin/env python3
"""Independently validate every packed N8/D3 target-orbit certificate.

This validator intentionally does not import the generator.  It independently
reconstructs the 105 matching partner maps, enumerates all 198,485 sorted
triples, decodes each packed word, and checks all 24 partner-map conjugacy
equalities in the Lean proposition ``targetOrbitCertificateValid8``.
"""

from __future__ import annotations

import argparse
from hashlib import sha256
from itertools import combinations_with_replacement
import json
from math import comb
from pathlib import Path
import struct

TARGET_COUNT = 198_485
MATCHING_COUNT = 105
VERTEX_CODE_MODULUS = 40_320
COLOR_CODE_MODULUS = 6
REPRESENTATIVE_COUNT = 31
PACKED_LIMIT = VERTEX_CODE_MODULUS * COLOR_CODE_MODULUS * REPRESENTATIVE_COUNT

REPRESENTATIVES = (
    (0, 0, 0),
    (0, 0, 1),
    (0, 0, 4),
    (0, 0, 16),
    (0, 0, 19),
    (0, 1, 2),
    (0, 1, 3),
    (0, 1, 5),
    (0, 1, 15),
    (0, 1, 17),
    (0, 1, 18),
    (0, 1, 20),
    (0, 1, 52),
    (0, 1, 58),
    (0, 4, 8),
    (0, 4, 13),
    (0, 4, 16),
    (0, 4, 17),
    (0, 4, 21),
    (0, 4, 23),
    (0, 4, 27),
    (0, 4, 28),
    (0, 4, 29),
    (0, 16, 32),
    (0, 16, 35),
    (0, 16, 52),
    (0, 16, 53),
    (0, 16, 55),
    (0, 16, 56),
    (0, 19, 38),
    (0, 19, 43),
)

EXPECTED_ORBIT_SIZES = (
    105,
    1260,
    3360,
    1260,
    5040,
    210,
    5040,
    5040,
    1260,
    1260,
    20160,
    10080,
    10080,
    5040,
    1680,
    560,
    10080,
    20160,
    20160,
    20160,
    10080,
    10080,
    3360,
    210,
    5040,
    840,
    2520,
    2520,
    5040,
    10080,
    6720,
)


def independent_matchings(mask: int) -> list[tuple[tuple[int, int], ...]]:
    """Bit-mask recursion, independent of the generator implementation."""
    if mask == 0:
        return [()]
    first_bit = mask & -mask
    first = first_bit.bit_length() - 1
    remainder = mask ^ first_bit
    result: list[tuple[tuple[int, int], ...]] = []
    partners = remainder
    while partners:
        partner_bit = partners & -partners
        partners ^= partner_bit
        partner = partner_bit.bit_length() - 1
        for tail in independent_matchings(remainder ^ partner_bit):
            result.append(((first, partner),) + tail)
    return result


def independent_mate_rows() -> list[tuple[int, ...]]:
    matchings = independent_matchings((1 << 8) - 1)
    if len(matchings) != MATCHING_COUNT or len(set(matchings)) != MATCHING_COUNT:
        raise AssertionError("independent matching enumeration failed")
    rows: list[tuple[int, ...]] = []
    for matching in matchings:
        row = [-1] * 8
        for left, right in matching:
            row[left] = right
            row[right] = left
        rows.append(tuple(row))
    return rows


def decode_mixed_permutation(size: int, code: int) -> tuple[int, ...]:
    """Iteratively replay the mixed digits of decomposeFin.symm."""
    digits: dict[int, int] = {}
    remainder = code
    for current_size in range(size, 0, -1):
        digits[current_size] = remainder % current_size
        remainder //= current_size
    if remainder:
        raise AssertionError((size, code, remainder))

    permutation: tuple[int, ...] = ()
    for current_size in range(1, size + 1):
        pivot = digits[current_size]
        lifted = tuple(value + 1 for value in permutation)
        permutation = (pivot,) + tuple(
            0 if value == pivot else value for value in lifted
        )
    if sorted(permutation) != list(range(size)):
        raise AssertionError((size, code, permutation))
    return permutation


def target_rank_independent(a: int, b: int, c: int) -> int:
    before_a = comb(107, 3) - comb(107 - a, 3)
    before_b = comb(106 - a, 2) - comb(106 - b, 2)
    return before_a + before_b + c - b


def load_rows(path: Path) -> tuple[list[int], bytes]:
    payload = path.read_bytes()
    expected_bytes = TARGET_COUNT * 4
    if len(payload) != expected_bytes:
        raise AssertionError(
            f"expected {expected_bytes} bytes, found {len(payload)}"
        )
    rows = [
        value[0]
        for value in struct.iter_unpack("<I", payload)
    ]
    return rows, payload


def validate(path: Path, metadata_path: Path | None) -> dict[str, object]:
    packed_rows, raw_payload = load_rows(path)
    mates = independent_mate_rows()

    vertex_permutations = tuple(
        decode_mixed_permutation(8, code)
        for code in range(VERTEX_CODE_MODULUS)
    )
    if len(set(vertex_permutations)) != VERTEX_CODE_MODULUS:
        raise AssertionError("vertex decoder is not bijective")
    color_permutations = tuple(
        decode_mixed_permutation(3, code)
        for code in range(COLOR_CODE_MODULUS)
    )
    if len(set(color_permutations)) != COLOR_CODE_MODULUS:
        raise AssertionError("color decoder is not bijective")

    orbit_counts = [0] * REPRESENTATIVE_COUNT
    equality_count = 0
    observed_vertex_codes: set[int] = set()
    observed_color_codes: set[int] = set()
    maximum_packed = 0

    triples = combinations_with_replacement(range(MATCHING_COUNT), 3)
    # `load_rows` has already checked the exact record count, and
    # combinations_with_replacement(range(105), 3) has exactly TARGET_COUNT
    # elements.  Avoid `zip(strict=True)` so the validator also runs on the
    # Python 3.9 shipped by macOS.
    for rank, (target, packed) in enumerate(zip(triples, packed_rows)):
        if target_rank_independent(*target) != rank:
            raise AssertionError(("rank mismatch", rank, target))
        if not 0 <= packed < PACKED_LIMIT:
            raise AssertionError(("packed out of range", rank, packed))
        vertex_code = packed % VERTEX_CODE_MODULUS
        quotient = packed // VERTEX_CODE_MODULUS
        color_code = quotient % COLOR_CODE_MODULUS
        representative_code = quotient // COLOR_CODE_MODULUS
        if representative_code >= REPRESENTATIVE_COUNT:
            raise AssertionError(("representative out of range", rank, packed))

        vertex_permutation = vertex_permutations[vertex_code]
        color_permutation = color_permutations[color_code]
        representative = REPRESENTATIVES[representative_code]
        orbit_counts[representative_code] += 1
        observed_vertex_codes.add(vertex_code)
        observed_color_codes.add(color_code)
        maximum_packed = max(maximum_packed, packed)

        # Exact orientation of matchingRelabels8:
        # mate[targetRep[c]][pi[v]] = pi[mate[source[sigma[c]]][v]].
        for color in range(3):
            source_matching = target[color_permutation[color]]
            representative_matching = representative[color]
            for vertex in range(8):
                left = mates[representative_matching][
                    vertex_permutation[vertex]
                ]
                right = vertex_permutation[mates[source_matching][vertex]]
                equality_count += 1
                if left != right:
                    raise AssertionError(
                        {
                            "rank": rank,
                            "target": target,
                            "packed": packed,
                            "vertex_code": vertex_code,
                            "vertex_permutation": vertex_permutation,
                            "color_code": color_code,
                            "color_permutation": color_permutation,
                            "representative_code": representative_code,
                            "color": color,
                            "vertex": vertex,
                            "left": left,
                            "right": right,
                        }
                    )

    if tuple(orbit_counts) != EXPECTED_ORBIT_SIZES:
        raise AssertionError(
            f"orbit count mismatch\nobserved={tuple(orbit_counts)}\n"
            f"expected={EXPECTED_ORBIT_SIZES}"
        )
    if equality_count != TARGET_COUNT * 3 * 8:
        raise AssertionError(equality_count)

    result: dict[str, object] = {
        "status": "valid",
        "certificate_rows": len(packed_rows),
        "matching_rows": len(mates),
        "representative_count": len(REPRESENTATIVES),
        "conjugacy_equalities_checked": equality_count,
        "orbit_sizes": orbit_counts,
        "packed_min": min(packed_rows),
        "packed_max": maximum_packed,
        "packed_limit_exclusive": PACKED_LIMIT,
        "distinct_vertex_codes_used": len(observed_vertex_codes),
        "vertex_code_max": max(observed_vertex_codes),
        "distinct_color_codes_used": len(observed_color_codes),
        "color_code_max": max(observed_color_codes),
        "representative_code_max": REPRESENTATIVE_COUNT - 1,
        "binary_bytes": len(raw_payload),
        "binary_sha256": sha256(raw_payload).hexdigest(),
        "matching_mates_sha256": sha256(
            bytes(value for row in mates for value in row)
        ).hexdigest(),
        "representatives_sha256": sha256(
            bytes(value for row in REPRESENTATIVES for value in row)
        ).hexdigest(),
    }

    if metadata_path is not None:
        metadata = json.loads(metadata_path.read_text())
        recorded_hash = metadata["binary"]["sha256"]
        if recorded_hash != result["binary_sha256"]:
            raise AssertionError(
                f"metadata binary hash {recorded_hash} != "
                f"{result['binary_sha256']}"
            )
        if metadata["orbit_sizes"] != orbit_counts:
            raise AssertionError("metadata orbit sizes differ")
        result["metadata_checked"] = str(metadata_path)

    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "certificate",
        type=Path,
        help="packed-certificates-u32le.bin produced by the generator",
    )
    parser.add_argument(
        "--metadata",
        type=Path,
        help="optional metadata.json to cross-check",
    )
    arguments = parser.parse_args()
    print(json.dumps(validate(arguments.certificate, arguments.metadata), indent=2))


if __name__ == "__main__":
    main()

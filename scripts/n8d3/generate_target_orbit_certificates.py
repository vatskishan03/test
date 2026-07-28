#!/usr/bin/env python3
"""Generate explicit S8 x S3 certificates for all sorted N8/D3 targets.

This is a proof-data generator, not part of the trusted proof.  Its output is
intended to be replayed by Lean using the definitions in
``MonochromaticQuantumGraphs.N8D3.TargetOrbitsBase8``.

For a sorted target triple ``target`` a packed row encodes:

* a vertex permutation ``pi : S8``;
* a color permutation ``sigma : S3``;
* one of the 31 fixed representatives.

The row satisfies, for every representative color ``c`` and vertex ``v``,

    mate[rep[c]][pi[v]] = pi[mate[target[sigma[c]]][v]].

The mixed-radix permutation decoder exactly mirrors Mathlib's
``Equiv.Perm.decomposeFin.symm`` recursion.  The packed layout is

    vertexCode + 40320 * (colorCode + 6 * representativeCode).

No third-party Python packages are required.
"""

from __future__ import annotations

import argparse
from hashlib import sha256
from itertools import combinations_with_replacement
import json
from math import comb
from pathlib import Path
import re
import struct
from typing import Iterable, Sequence

Edge = tuple[int, int]
Matching = tuple[Edge, ...]
Permutation = tuple[int, ...]
Triple = tuple[int, int, int]

VERTEX_COUNT = 8
COLOR_COUNT = 3
MATCHING_COUNT = 105
REPRESENTATIVE_COUNT = 31
VERTEX_PERMUTATION_COUNT = 40_320
COLOR_PERMUTATION_COUNT = 6
TARGET_COUNT = 198_485
PACKED_LIMIT = (
    VERTEX_PERMUTATION_COUNT
    * COLOR_PERMUTATION_COUNT
    * REPRESENTATIVE_COUNT
)
DEFAULT_GENERATED_DATA = (
    Path(__file__).resolve().parents[2]
    / "MonochromaticQuantumGraphs"
    / "N8D3"
    / "GeneratedData.lean"
)

# Frozen checked-in order from targetOrbitRep8.  The generator deliberately
# does not rediscover or replace these representatives.
TARGET_ORBIT_REP8: tuple[Triple, ...] = (
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

TARGET_ORBIT_SIZE8: tuple[int, ...] = (
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


def parse_checked_in_tables(path: Path) -> tuple[
    list[Matching],
    list[tuple[int, ...]],
    list[Triple],
    list[int],
]:
    """Parse the four frozen tables from ``GeneratedData.lean``.

    Generation is deliberately tied to the exact checked-in matching order and
    representatives.  The independently reconstructed tables below must agree
    with these parsed values before any certificate is emitted.
    """
    text = path.read_text()

    edges_text = text.split("def matchingEdges8", 1)[1].split(
        "/-- Partner maps", 1
    )[0]
    edge_values = [
        (int(left), int(right))
        for left, right in re.findall(r"\((\d+),\s*(\d+)\)", edges_text)
    ]
    if len(edge_values) != MATCHING_COUNT * 4:
        raise AssertionError(
            f"expected {MATCHING_COUNT * 4} edge entries, "
            f"found {len(edge_values)}"
        )
    checked_matchings = [
        tuple(edge_values[offset : offset + 4])
        for offset in range(0, len(edge_values), 4)
    ]

    mates_text = text.split("def matchingMate8", 1)[1].split(
        "/-- Canonical representatives", 1
    )[0]
    checked_mates = [
        tuple(int(value) for value in row.split(","))
        for row in re.findall(r"!\[([0-9,\s]+)\]", mates_text)
        if len(row.split(",")) == VERTEX_COUNT
    ]
    if len(checked_mates) != MATCHING_COUNT:
        raise AssertionError(
            f"expected {MATCHING_COUNT} mate rows, found {len(checked_mates)}"
        )

    representatives_text = text.split("def targetOrbitRep8", 1)[1].split(
        "/-- Orbit sizes", 1
    )[0]
    checked_representatives = [
        (int(first), int(second), int(third))
        for first, second, third in re.findall(
            r"!\[(\d+),\s*(\d+),\s*(\d+)\]", representatives_text
        )
    ]
    if len(checked_representatives) != REPRESENTATIVE_COUNT:
        raise AssertionError(
            f"expected {REPRESENTATIVE_COUNT} representatives, "
            f"found {len(checked_representatives)}"
        )

    sizes_text = text.split("def targetOrbitSize8", 1)[1].split(
        "set_option", 1
    )[0]
    checked_sizes = [
        int(value)
        for value in re.findall(r"\d+", sizes_text.split(":=", 1)[1])
    ]
    if len(checked_sizes) != REPRESENTATIVE_COUNT:
        raise AssertionError(
            f"expected {REPRESENTATIVE_COUNT} orbit sizes, "
            f"found {len(checked_sizes)}"
        )

    return (
        checked_matchings,
        checked_mates,
        checked_representatives,
        checked_sizes,
    )


def perfect_matchings(vertices: tuple[int, ...]) -> list[Matching]:
    """Enumerate matchings in the exact order used by matchingEdges8."""
    if not vertices:
        return [()]
    first = vertices[0]
    result: list[Matching] = []
    for partner_position in range(1, len(vertices)):
        partner = vertices[partner_position]
        remaining = vertices[1:partner_position] + vertices[partner_position + 1 :]
        edge = (first, partner)
        for tail in perfect_matchings(remaining):
            result.append((edge,) + tail)
    return result


def mate_rows(matchings: Sequence[Matching]) -> list[tuple[int, ...]]:
    result: list[tuple[int, ...]] = []
    for matching in matchings:
        mate = [-1] * VERTEX_COUNT
        for left, right in matching:
            mate[left] = right
            mate[right] = left
        if any(value < 0 for value in mate):
            raise AssertionError(f"incomplete matching: {matching}")
        result.append(tuple(mate))
    return result


def mixed_permutation(size: int, code: int) -> Permutation:
    """Mirror ``mixedPerm<size>`` / ``decomposeFin.symm`` exactly."""
    if size == 0:
        return ()
    pivot = code % size
    smaller = mixed_permutation(size - 1, code // size)
    result = [pivot]
    for image in smaller:
        lifted = image + 1
        result.append(0 if lifted == pivot else lifted)
    permutation = tuple(result)
    if tuple(sorted(permutation)) != tuple(range(size)):
        raise AssertionError((size, code, permutation))
    return permutation


def inverse_permutation(permutation: Permutation) -> Permutation:
    inverse = [-1] * len(permutation)
    for source, target in enumerate(permutation):
        inverse[target] = source
    return tuple(inverse)


def permute_matching(matching: Matching, permutation: Permutation) -> Matching:
    return tuple(
        sorted(
            (
                min(permutation[left], permutation[right]),
                max(permutation[left], permutation[right]),
            )
            for left, right in matching
        )
    )


def target_lex_rank(target: Triple) -> int:
    """Rank in combinations_with_replacement(range(105), 3)."""
    a, b, c = target
    return (
        comb(107, 3)
        - comb(107 - a, 3)
        + comb(106 - a, 2)
        - comb(106 - b, 2)
        + c
        - b
    )


def stable_sort_positions(values: Triple) -> tuple[Triple, Permutation]:
    """Return sorted values and representative-color -> sorted-color map."""
    sorted_representative_colors = tuple(
        sorted(range(COLOR_COUNT), key=lambda color: (values[color], color))
    )
    sorted_values = tuple(values[color] for color in sorted_representative_colors)
    representative_to_sorted = inverse_permutation(sorted_representative_colors)
    return sorted_values, representative_to_sorted


def pack_certificate(vertex_code: int, color_code: int, representative: int) -> int:
    packed = vertex_code + VERTEX_PERMUTATION_COUNT * (
        color_code + COLOR_PERMUTATION_COUNT * representative
    )
    if not 0 <= packed < PACKED_LIMIT:
        raise AssertionError((vertex_code, color_code, representative, packed))
    return packed


def generate_certificates(
    generated_data_path: Path,
) -> tuple[list[int], dict[str, object]]:
    (
        checked_matchings,
        checked_mates,
        checked_representatives,
        checked_sizes,
    ) = parse_checked_in_tables(generated_data_path)

    matchings = perfect_matchings(tuple(range(VERTEX_COUNT)))
    if len(matchings) != MATCHING_COUNT:
        raise AssertionError(len(matchings))
    if matchings != checked_matchings:
        raise AssertionError(
            "independent recursive matching order differs from matchingEdges8"
        )
    mates = mate_rows(matchings)
    if mates != checked_mates:
        raise AssertionError(
            "independent partner maps differ from matchingMate8"
        )
    if tuple(checked_representatives) != TARGET_ORBIT_REP8:
        raise AssertionError(
            "parsed targetOrbitRep8 differs from the frozen audit constants"
        )
    if tuple(checked_sizes) != TARGET_ORBIT_SIZE8:
        raise AssertionError(
            "parsed targetOrbitSize8 differs from the frozen audit constants"
        )

    representatives = tuple(checked_representatives)
    expected_sizes = tuple(checked_sizes)
    matching_index = {matching: index for index, matching in enumerate(matchings)}
    if len(matching_index) != MATCHING_COUNT:
        raise AssertionError("duplicate matching")

    color_code_by_permutation = {
        mixed_permutation(COLOR_COUNT, code): code
        for code in range(COLOR_PERMUTATION_COUNT)
    }
    if len(color_code_by_permutation) != COLOR_PERMUTATION_COUNT:
        raise AssertionError("mixed color decoder is not bijective")

    packed_rows = [-1] * TARGET_COUNT
    owner = [-1] * TARGET_COUNT
    duplicate_visits = 0

    # The encoded pi sends the source target to the representative.  Therefore
    # pi^{-1} sends the representative to the source target used to construct
    # this row.
    for vertex_code in range(VERTEX_PERMUTATION_COUNT):
        vertex_permutation = mixed_permutation(VERTEX_COUNT, vertex_code)
        inverse_vertex_permutation = inverse_permutation(vertex_permutation)
        matching_action_inverse = tuple(
            matching_index[
                permute_matching(matching, inverse_vertex_permutation)
            ]
            for matching in matchings
        )
        for representative_index, representative in enumerate(representatives):
            unsorted_source = tuple(
                matching_action_inverse[representative[color]]
                for color in range(COLOR_COUNT)
            )
            source, color_permutation = stable_sort_positions(unsorted_source)
            color_code = color_code_by_permutation[color_permutation]
            rank = target_lex_rank(source)
            if packed_rows[rank] < 0:
                packed_rows[rank] = pack_certificate(
                    vertex_code, color_code, representative_index
                )
                owner[rank] = representative_index
            else:
                if owner[rank] != representative_index:
                    raise AssertionError(
                        "distinct fixed representatives have intersecting orbits: "
                        f"rank={rank}, old={owner[rank]}, new={representative_index}"
                    )
                duplicate_visits += 1

    missing = [rank for rank, packed in enumerate(packed_rows) if packed < 0]
    if missing:
        raise AssertionError(
            f"{len(missing)} target triples lack certificates; first={missing[:10]}"
        )

    observed_sizes = tuple(owner.count(index) for index in range(REPRESENTATIVE_COUNT))
    if observed_sizes != expected_sizes:
        raise AssertionError(
            f"orbit-size mismatch\nobserved={observed_sizes}\n"
            f"expected={expected_sizes}"
        )

    # Check the rank formula against the independent itertools enumeration.
    for expected_rank, target in enumerate(
        combinations_with_replacement(range(MATCHING_COUNT), COLOR_COUNT)
    ):
        if target_lex_rank(target) != expected_rank:
            raise AssertionError((target, target_lex_rank(target), expected_rank))

    summary: dict[str, object] = {
        "matching_count": len(matchings),
        "target_count": len(packed_rows),
        "representative_count": len(representatives),
        "orbit_sizes": observed_sizes,
        "sum_orbit_sizes": sum(observed_sizes),
        "generated_data": str(generated_data_path),
        "generated_data_sha256": sha256(
            generated_data_path.read_bytes()
        ).hexdigest(),
        "checked_in_tables_equal_independent": True,
        "duplicate_group_visits": duplicate_visits,
        "packed_min": min(packed_rows),
        "packed_max": max(packed_rows),
        "vertex_code_max": max(packed % VERTEX_PERMUTATION_COUNT for packed in packed_rows),
        "color_code_max": max(
            (packed // VERTEX_PERMUTATION_COUNT) % COLOR_PERMUTATION_COUNT
            for packed in packed_rows
        ),
        "representative_code_max": max(
            packed
            // (VERTEX_PERMUTATION_COUNT * COLOR_PERMUTATION_COUNT)
            for packed in packed_rows
        ),
        "matching_mates_sha256": sha256(
            bytes(value for row in mates for value in row)
        ).hexdigest(),
        "representatives_sha256": sha256(
            bytes(value for row in representatives for value in row)
        ).hexdigest(),
        "orbit_sizes_u32le_sha256": sha256(
            b"".join(struct.pack("<I", value) for value in observed_sizes)
        ).hexdigest(),
    }
    return packed_rows, summary


def _balanced_lookup_lines(
    values: Sequence[int],
    variable: str,
    *,
    offset: int = 0,
    indent: int = 2,
) -> Iterable[str]:
    """Emit a balanced if-tree whose leaves are ``values``."""
    if not values:
        raise ValueError("a lookup tree must contain at least one value")
    padding = " " * indent
    if len(values) == 1:
        yield f"{padding}{values[0]}"
        return
    left_size = len(values) // 2
    split = offset + left_size
    yield f"{padding}if {variable}.val < {split} then"
    yield from _balanced_lookup_lines(
        values[:left_size], variable, offset=offset, indent=indent + 2
    )
    yield f"{padding}else"
    yield from _balanced_lookup_lines(
        values[left_size:],
        variable,
        offset=split,
        indent=indent + 2,
    )


def _balanced_shard_dispatch_lines(
    shards: Sequence[dict[str, int]],
    *,
    indent: int = 2,
) -> Iterable[str]:
    """Emit a balanced global-rank dispatch over bounded data shards."""
    if not shards:
        raise ValueError("at least one shard is required")
    padding = " " * indent
    if len(shards) == 1:
        shard = shards[0]
        index_expression = (
            "i.val"
            if shard["start"] == 0
            else f"i.val - {shard['start']}"
        )
        yield (
            f"{padding}orbitPackedCertificate8Shard{shard['index']:03d} "
            f"(Fin.ofNat {shard['length']} ({index_expression}))"
        )
        return
    left_count = len(shards) // 2
    split = shards[left_count]["start"]
    yield f"{padding}if i.val < {split} then"
    yield from _balanced_shard_dispatch_lines(
        shards[:left_count], indent=indent + 2
    )
    yield f"{padding}else"
    yield from _balanced_shard_dispatch_lines(
        shards[left_count:], indent=indent + 2
    )


def emit_lean_shards(
    output_directory: Path, packed_rows: Sequence[int], shard_size: int
) -> list[dict[str, int]]:
    if shard_size <= 0:
        raise ValueError("shard size must be positive")
    shard_directory = output_directory / "TargetOrbitCertificateData8"
    shard_directory.mkdir(parents=True, exist_ok=True)
    shards: list[dict[str, int]] = []

    for shard_index, start in enumerate(range(0, len(packed_rows), shard_size)):
        rows = packed_rows[start : start + shard_size]
        shard = {
            "index": shard_index,
            "start": start,
            "end": start + len(rows),
            "length": len(rows),
        }
        shards.append(shard)
        lines: list[str] = []
        if shard_index > 0:
            lines.extend(
                [
                    (
                        "import MonochromaticQuantumGraphs.N8D3."
                        "TargetOrbitCertificateData8."
                        f"Shard{shard_index - 1:03d}"
                    ),
                    "",
                ]
            )
        lines.extend(
            [
                "namespace MonochromaticQuantumGraphs.N8D3",
                "",
                "set_option maxRecDepth 100000 in",
                (
                    f"def orbitPackedCertificate8Shard{shard_index:03d} "
                    f"(i : Fin {len(rows)}) : Nat :="
                ),
            ]
        )
        lines.extend(_balanced_lookup_lines(rows, "i"))
        lines.extend(
            [
                "",
                "end MonochromaticQuantumGraphs.N8D3",
                "",
            ]
        )
        path = shard_directory / f"Shard{shard_index:03d}.lean"
        path.write_text("\n".join(lines))

    root_lines = [
        (
            "import MonochromaticQuantumGraphs.N8D3."
            "TargetOrbitCertificateData8."
            f"Shard{shards[-1]['index']:03d}"
        ),
        "",
        "namespace MonochromaticQuantumGraphs.N8D3",
        "",
        "/-- Packed certificate lookup by lexicographic sorted-target rank. -/",
        "def orbitPackedCertificate8 (i : Fin 198485) : Nat :=",
    ]
    root_lines.extend(_balanced_shard_dispatch_lines(shards))
    root_lines.extend(
        [
            "",
            "end MonochromaticQuantumGraphs.N8D3",
            "",
        ]
    )
    (output_directory / "TargetOrbitCertificateData8.lean").write_text(
        "\n".join(root_lines)
    )
    return shards


def file_record(path: Path) -> dict[str, object]:
    data = path.read_bytes()
    return {
        "path": str(path),
        "bytes": len(data),
        "sha256": sha256(data).hexdigest(),
    }


def write_outputs(
    output_directory: Path,
    packed_rows: Sequence[int],
    generation_summary: dict[str, object],
    *,
    emit_lean: bool,
    shard_size: int,
) -> dict[str, object]:
    output_directory.mkdir(parents=True, exist_ok=True)
    binary_path = output_directory / "packed-certificates-u32le.bin"
    binary_path.write_bytes(
        b"".join(struct.pack("<I", packed) for packed in packed_rows)
    )

    packed_json_path = output_directory / "packed-certificates.json"
    packed_json_path.write_text(
        json.dumps(
            {
                "format": "n8d3-target-orbit-packed-v1",
                "packing": (
                    "vertexCode + 40320 * "
                    "(colorCode + 6 * representativeCode)"
                ),
                "rows": packed_rows,
            },
            separators=(",", ":"),
        )
        + "\n"
    )

    output_summary: dict[str, object] = {
        **generation_summary,
        "format": "n8d3-target-orbit-packed-v1",
        "certificate_equation": (
            "matchingMate8(rep[c], pi(v)) = "
            "pi(matchingMate8(target[sigma(c)], v))"
        ),
        "packing": (
            "vertexCode + 40320 * "
            "(colorCode + 6 * representativeCode)"
        ),
        "binary": file_record(binary_path),
        "json": file_record(packed_json_path),
    }

    if emit_lean:
        lean_directory = output_directory / "lean"
        lean_directory.mkdir(parents=True, exist_ok=True)
        shards = emit_lean_shards(lean_directory, packed_rows, shard_size)
        lean_files = sorted(lean_directory.rglob("*.lean"))
        combined_digest = sha256()
        total_bytes = 0
        maximum_bytes = 0
        for path in lean_files:
            data = path.read_bytes()
            combined_digest.update(path.relative_to(lean_directory).as_posix().encode())
            combined_digest.update(b"\0")
            combined_digest.update(data)
            total_bytes += len(data)
            maximum_bytes = max(maximum_bytes, len(data))
        output_summary["lean"] = {
            "directory": str(lean_directory),
            "shard_size": shard_size,
            "shard_count": len(shards),
            "last_shard_size": shards[-1]["length"],
            "total_files": len(lean_files),
            "total_bytes": total_bytes,
            "max_file_bytes": maximum_bytes,
            "combined_sha256": combined_digest.hexdigest(),
            "shards": shards,
        }

    metadata_path = output_directory / "metadata.json"
    metadata_path.write_text(json.dumps(output_summary, indent=2) + "\n")
    output_summary["metadata"] = file_record(metadata_path)
    return output_summary


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--generated-data",
        type=Path,
        default=DEFAULT_GENERATED_DATA,
        help=(
            "checked-in GeneratedData.lean to parse and cross-check "
            f"(default: {DEFAULT_GENERATED_DATA})"
        ),
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        required=True,
        help="new directory for binary, JSON, metadata, and optional Lean output",
    )
    parser.add_argument(
        "--emit-lean",
        action="store_true",
        help="also emit bounded balanced Lean lookup shards",
    )
    parser.add_argument(
        "--shard-size",
        type=int,
        default=2048,
        help="maximum certificate rows per Lean data shard (default: 2048)",
    )
    arguments = parser.parse_args()
    if arguments.output_dir.exists() and any(arguments.output_dir.iterdir()):
        raise SystemExit(
            f"refusing to overwrite nonempty output directory: "
            f"{arguments.output_dir}"
        )

    packed_rows, generation_summary = generate_certificates(
        arguments.generated_data
    )
    output_summary = write_outputs(
        arguments.output_dir,
        packed_rows,
        generation_summary,
        emit_lean=arguments.emit_lean,
        shard_size=arguments.shard_size,
    )
    print(json.dumps(output_summary, indent=2))


if __name__ == "__main__":
    main()

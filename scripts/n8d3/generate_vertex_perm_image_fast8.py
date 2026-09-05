#!/usr/bin/env python3
"""Generate the kernel-replayed fast S8 image table for the N8/D3 audit.

This generator is deliberately independent of Lean execution.  It mirrors the
mixed-radix decoder in ``TargetOrbitsBase8.lean``, packs the eight images of
each permutation into one base-8 natural number, and emits:

* a serial chain of bounded data/proof shards;
* a balanced global dispatcher; and
* a global correctness theorem assembled from the shard theorems.

The maintained certificate predicates live in ``TargetOrbitCanonicalFast8``;
this producer does not emit the superseded predicate wrapper.

Every generated kernel check uses ``decide +kernel`` on at most
``SHARD_SIZE * 8`` closed image equations.  No generated theorem uses
``native_decide``, ``Lean.ofReduceBool``, ``sorry``, ``admit``, ``axiom``, or
``unsafe``.

The output import graph is intentionally serial: shard 000 imports the small
trusted base module and each later shard imports exactly its predecessor.
"""

from __future__ import annotations

import argparse
from hashlib import sha256
import json
from pathlib import Path
from typing import Iterable, Sequence


VERTEX_COUNT = 8
PERMUTATION_COUNT = 40_320
SHARD_SIZE = 256
MAX_HEARTBEATS = 2_000_000
MAX_RECURSION_DEPTH = 100_000
DEFAULT_OUTPUT = Path(__file__).resolve().parents[2]


def mixed_permutation(size: int, code: int) -> tuple[int, ...]:
    """Mirror ``mixedPerm<size>`` / ``Equiv.Perm.decomposeFin.symm``."""
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


def pack_images(images: Sequence[int]) -> int:
    """Pack ``images[v]`` as digit ``v`` of a base-8 natural number."""
    if len(images) != VERTEX_COUNT:
        raise AssertionError(images)
    if any(not 0 <= image < VERTEX_COUNT for image in images):
        raise AssertionError(images)
    return sum(image * (VERTEX_COUNT**vertex) for vertex, image in enumerate(images))


def unpack_image(packed: int, vertex: int) -> int:
    return (packed // (VERTEX_COUNT**vertex)) % VERTEX_COUNT


def balanced_lookup_lines(
    values: Sequence[int],
    variable: str,
    *,
    offset: int = 0,
    indent: int = 2,
) -> Iterable[str]:
    """Emit a balanced comparison tree with one leaf per table row."""
    if not values:
        raise ValueError("lookup table cannot be empty")
    padding = " " * indent
    if len(values) == 1:
        yield f"{padding}{values[0]}"
        return
    left_size = len(values) // 2
    split = offset + left_size
    yield f"{padding}if {variable}.val < {split} then"
    yield from balanced_lookup_lines(
        values[:left_size],
        variable,
        offset=offset,
        indent=indent + 2,
    )
    yield f"{padding}else"
    yield from balanced_lookup_lines(
        values[left_size:],
        variable,
        offset=split,
        indent=indent + 2,
    )


def shard_module(index: int) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3."
        f"VertexPermImageData8.Shard{index:03d}"
    )


def shard_def(index: int) -> str:
    return f"vertexPermImagesPacked8Shard{index:03d}"


def shard_code_def(index: int) -> str:
    return f"vertexPermGlobalCode8Shard{index:03d}"


def shard_theorem(index: int) -> str:
    return f"vertexPermImage8Shard{index:03d}_correct"


def write_text(path: Path, lines: Sequence[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n")


def emit_shards(
    lean_root: Path, packed_rows: Sequence[int]
) -> tuple[list[Path], list[dict[str, int]]]:
    shard_root = lean_root / "VertexPermImageData8"
    paths: list[Path] = []
    metadata: list[dict[str, int]] = []
    for index, start in enumerate(range(0, len(packed_rows), SHARD_SIZE)):
        rows = packed_rows[start : start + SHARD_SIZE]
        length = len(rows)
        end = start + length
        import_target = (
            "MonochromaticQuantumGraphs.N8D3.MixedPermApplyFast8"
            if index == 0
            else shard_module(index - 1)
        )
        lines = [
            f"import {import_target}",
            "",
            "/-!",
            f"# Packed S8 images, codes {start} through {end - 1}",
            "",
            "The table is generated from the exact mixed-radix decoder.  Its",
            "bounded theorem is replayed by the Lean kernel in this module.",
            "-/",
            "",
            "namespace MonochromaticQuantumGraphs.N8D3",
            "",
            (
                f"def {shard_def(index)} (i : Fin {length}) : Nat :="
            ),
        ]
        lines.extend(balanced_lookup_lines(rows, "i"))
        lines.extend(
            [
                "",
                (
                    f"def {shard_code_def(index)} "
                    f"(i : Fin {length}) : Fin 40320 :="
                ),
                f"  ⟨{start} + i.val, by omega⟩",
                "",
                f"set_option maxRecDepth {MAX_RECURSION_DEPTH} in",
                f"set_option maxHeartbeats {MAX_HEARTBEATS} in",
                f"theorem {shard_theorem(index)} :",
                f"    ∀ i : Fin {length}, ∀ v : Fin 8,",
                "      Fin.ofNat 8",
                (
                    f"          ({shard_def(index)} i / "
                    "(8 ^ v.val)) ="
                ),
                (
                    f"        vertexPermApplyFast8 "
                    f"({shard_code_def(index)} i) v := by"
                ),
                "  intro i",
                "  fin_cases i <;> decide +kernel",
                "",
                "end MonochromaticQuantumGraphs.N8D3",
            ]
        )
        path = shard_root / f"Shard{index:03d}.lean"
        write_text(path, lines)
        paths.append(path)
        metadata.append(
            {
                "index": index,
                "start": start,
                "end": end,
                "length": length,
            }
        )
    return paths, metadata


def dispatch_expression_lines(
    shards: Sequence[dict[str, int]],
    *,
    indent: int = 2,
) -> Iterable[str]:
    """Emit a balanced dispatcher from global codes to local shard indices."""
    if not shards:
        raise ValueError("dispatcher needs at least one shard")
    padding = " " * indent
    if len(shards) == 1:
        shard = shards[0]
        start = shard["start"]
        length = shard["length"]
        local_value = "code.val" if start == 0 else f"code.val - {start}"
        yield (
            f"{padding}{shard_def(shard['index'])} "
            f"(⟨{local_value}, by omega⟩ : Fin {length})"
        )
        return
    left_count = len(shards) // 2
    split = shards[left_count]["start"]
    yield f"{padding}if h : code.val < {split} then"
    yield from dispatch_expression_lines(
        shards[:left_count], indent=indent + 2
    )
    yield f"{padding}else"
    yield from dispatch_expression_lines(
        shards[left_count:], indent=indent + 2
    )


def leaf_correctness_lines(
    shard: dict[str, int],
    *,
    indent: int,
) -> list[str]:
    padding = " " * indent
    index = shard["index"]
    start = shard["start"]
    length = shard["length"]
    local_value = "code.val" if start == 0 else f"code.val - {start}"
    return [
        (
            f"{padding}let i : Fin {length} := "
            f"⟨{local_value}, by omega⟩"
        ),
        (
            f"{padding}have hcode : "
            f"{shard_code_def(index)} i = code := by"
        ),
        f"{padding}  apply Fin.ext",
        f"{padding}  change {start} + i.val = code.val",
        f"{padding}  dsimp only [i]",
        f"{padding}  omega",
        f"{padding}change Fin.ofNat 8",
        (
            f"{padding}    ({shard_def(index)} i / (8 ^ v.val)) = "
            "vertexPermApplyFast8 code v"
        ),
        f"{padding}rw [← hcode]",
        (
            f"{padding}exact {shard_theorem(index)} i v"
        ),
    ]


def correctness_dispatch_lines(
    shards: Sequence[dict[str, int]],
    *,
    indent: int = 2,
) -> list[str]:
    """Mirror the balanced dispatcher in a theorem proof."""
    if len(shards) == 1:
        return leaf_correctness_lines(shards[0], indent=indent)
    left_count = len(shards) // 2
    split = shards[left_count]["start"]
    padding = " " * indent
    result = [
        f"{padding}by_cases h : code.val < {split}",
        f"{padding}· rw [dif_pos h]",
    ]
    result.extend(
        correctness_dispatch_lines(
            shards[:left_count], indent=indent + 2
        )
    )
    result.extend(
        [
            f"{padding}· rw [dif_neg h]",
        ]
    )
    result.extend(
        correctness_dispatch_lines(
            shards[left_count:], indent=indent + 2
        )
    )
    return result


def emit_global_data_module(
    lean_root: Path, shards: Sequence[dict[str, int]]
) -> Path:
    path = lean_root / "VertexPermImageData8.lean"
    lines = [
        f"import {shard_module(shards[-1]['index'])}",
        "",
        "/-!",
        "# Fast packed images for all 40,320 mixed-radix S8 codes",
        "",
        "The data shards and their correctness theorems form a serial import",
        "chain.  This module adds only a balanced global dispatcher and combines",
        "the already kernel-checked shard theorems.",
        "-/",
        "",
        "namespace MonochromaticQuantumGraphs.N8D3",
        "",
        "/-- Extract image `v` from eight base-8 digits packed into `Nat`. -/",
        (
            "def vertexPermImageOfPacked8 "
            "(packed : Nat) (v : Fin 8) : Fin 8 :="
        ),
        "  Fin.ofNat 8 (packed / (8 ^ v.val))",
        "",
        "/-- Packed images of the permutation selected by a mixed-radix code. -/",
        "def vertexPermImagesPacked8 (code : Fin 40320) : Nat :=",
    ]
    lines.extend(dispatch_expression_lines(shards))
    lines.extend(
        [
            "",
            "/-- Fast table lookup for one image of an encoded vertex permutation. -/",
            (
                "def vertexPermImage8 "
                "(code : Fin 40320) (v : Fin 8) : Fin 8 :="
            ),
            "  vertexPermImageOfPacked8 (vertexPermImagesPacked8 code) v",
            "",
            f"set_option maxRecDepth {MAX_RECURSION_DEPTH} in",
            f"set_option maxHeartbeats {MAX_HEARTBEATS} in",
            "/-- The fast image table agrees pointwise with the arithmetic",
            "applicator.  All finite work was kernel-checked in bounded shards. -/",
            "theorem vertexPermImage8_eq_vertexPermApplyFast8",
            "    (code : Fin 40320) (v : Fin 8) :",
            "    vertexPermImage8 code v = vertexPermApplyFast8 code v := by",
            (
                "  unfold vertexPermImage8 vertexPermImageOfPacked8 "
                "vertexPermImagesPacked8"
            ),
        ]
    )
    lines.extend(correctness_dispatch_lines(shards, indent=2))
    lines.extend(
        [
            "",
            "/-- The table therefore agrees with the official mixed-radix",
            "permutation decoder. -/",
            "theorem vertexPermImage8_eq_vertexPermOfCode8",
            "    (code : Fin 40320) (v : Fin 8) :",
            "    vertexPermImage8 code v = vertexPermOfCode8 code v :=",
            "  (vertexPermImage8_eq_vertexPermApplyFast8 code v).trans",
            "    (vertexPermApplyFast8_eq_vertexPermOfCode8 code v)",
            "",
            "end MonochromaticQuantumGraphs.N8D3",
        ]
    )
    write_text(path, lines)
    return path




def file_record(path: Path, output: Path) -> dict[str, object]:
    data = path.read_bytes()
    return {
        "path": path.relative_to(output).as_posix(),
        "bytes": len(data),
        "sha256": sha256(data).hexdigest(),
    }


def generate(output: Path) -> dict[str, object]:
    output.mkdir(parents=True, exist_ok=True)
    lean_root = output / "MonochromaticQuantumGraphs" / "N8D3"
    owned_outputs = (
        lean_root / "VertexPermImageData8",
        lean_root / "VertexPermImageData8.lean",
    )
    existing = [path for path in owned_outputs if path.exists()]
    if existing:
        raise SystemExit(
            "refusing to overwrite generated vertex-image outputs: "
            + ", ".join(str(path) for path in existing)
        )

    permutations = [
        mixed_permutation(VERTEX_COUNT, code)
        for code in range(PERMUTATION_COUNT)
    ]
    if len(set(permutations)) != PERMUTATION_COUNT:
        raise AssertionError("mixed-radix decoder is not a bijection on S8")
    packed_rows = [pack_images(permutation) for permutation in permutations]
    for code, (permutation, packed) in enumerate(
        zip(permutations, packed_rows)
    ):
        decoded = tuple(
            unpack_image(packed, vertex)
            for vertex in range(VERTEX_COUNT)
        )
        if decoded != permutation:
            raise AssertionError((code, permutation, packed, decoded))

    shard_paths, shards = emit_shards(lean_root, packed_rows)
    global_path = emit_global_data_module(lean_root, shards)
    paths = [*shard_paths, global_path]

    combined = sha256()
    for path in sorted(paths):
        relative = path.relative_to(output).as_posix()
        data = path.read_bytes()
        combined.update(relative.encode())
        combined.update(b"\0")
        combined.update(data)

    raw_table = b"".join(
        packed.to_bytes(4, "little") for packed in packed_rows
    )
    metadata: dict[str, object] = {
        "format": "n8d3-vertex-perm-image-fastpath-v1",
        "output": str(output),
        "vertex_count": VERTEX_COUNT,
        "permutation_count": PERMUTATION_COUNT,
        "bijection_checked": True,
        "all_packed_roundtrips_checked": True,
        "packing": "sum(image[v] * 8**v for v in range(8))",
        "packed_min": min(packed_rows),
        "packed_max": max(packed_rows),
        "packed_limit_exclusive": VERTEX_COUNT**VERTEX_COUNT,
        "packed_rows_u32le_sha256": sha256(raw_table).hexdigest(),
        "shard_size_limit": SHARD_SIZE,
        "shard_count": len(shards),
        "largest_kernel_check_equations": SHARD_SIZE * VERTEX_COUNT,
        "max_heartbeats": MAX_HEARTBEATS,
        "max_rec_depth": MAX_RECURSION_DEPTH,
        "lean_files": len(paths),
        "combined_lean_sha256": combined.hexdigest(),
        "files": [file_record(path, output) for path in sorted(paths)],
    }
    return metadata


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output",
        type=Path,
        default=DEFAULT_OUTPUT,
        help=f"repository root (default: {DEFAULT_OUTPUT})",
    )
    args = parser.parse_args()
    metadata = generate(args.output.resolve())
    print(json.dumps(metadata, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()

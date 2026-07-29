#!/usr/bin/env python3
"""Generate bounded Lean replay modules for the N8/D3 orbit certificates.

The generated proof layer replays the packed table exposed by
``TargetOrbitCertificateRank8`` through the canonical-endpoint checker in
``TargetOrbitCanonicalFast8``.  It deliberately contains no generated proof
terms other than bounded

    fin_cases c <;> decide +kernel

leaf checks.  Every leaf fixes ``(a,b)`` and checks all 105 possible values of
``c``; an implication makes the ``c < b`` branches propositionally trivial.
Dispatch modules simplify the explicit contradiction in ``hab`` on the
impossible ``b < a`` branches.

The import graph is deterministic.  It is serial through a checked checkpoint,
then exposes independent bounded leaves for a controlled parallel build:

* the first leaf group imports ``TargetOrbitCanonicalFast8``;
* leaf groups through the checkpoint import the preceding leaf group;
* every later leaf group belongs to one of seven lanes and imports the
  preceding leaf in that lane;
* a dispatcher before the checkpoint imports its final local leaf group;
* a dispatcher at or after the checkpoint imports every local leaf group;
* dispatchers through ``A035`` import the preceding dispatcher;
* every later ``Axxx`` dispatcher belongs to one of seven lanes rooted at
  ``A035`` and imports the preceding dispatcher in that lane;
* a separate leaf-assembly module imports the seven lane heads;
* the final assembly imports the seven dispatcher-lane heads.

The checkpoint preserves already kernel-checked work.  After it, a resource
supervisor can build exactly seven bounded leaf chains simultaneously, then
build exactly seven dispatcher chains after every leaf is cached.
"""

from __future__ import annotations

import argparse
from hashlib import sha256
import json
from pathlib import Path


FIN_CARD = 105
INITIAL_THEOREMS_PER_MODULE = 24
STEADY_THEOREMS_PER_MODULE = 8
STEADY_START_A = 15
STEADY_START_B = 63
PARALLEL_START_A = 36
PARALLEL_START_B = 84
PARALLEL_LANES = 7
MAX_HEARTBEATS = 2_000_000
MAX_RECURSION_DEPTH = 100_000


def fin_literal(value: int) -> str:
    return f"({value} : Fin {FIN_CARD})"


def leaf_theorem_name(a: int, b: int) -> str:
    return f"targetOrbitCertificateAt8_a{a:03d}_b{b:03d}"


def a_theorem_name(a: int) -> str:
    return f"targetOrbitCertificateAt8_a{a:03d}"


def chunk_module_stem(a: int, start: int, end: int) -> str:
    return f"A{a:03d}B{start:03d}_{end:03d}"


def theorem_chunk_limit(a: int, b: int) -> int:
    if a < STEADY_START_A:
        return INITIAL_THEOREMS_PER_MODULE
    if a == STEADY_START_A and b < STEADY_START_B:
        return INITIAL_THEOREMS_PER_MODULE
    return STEADY_THEOREMS_PER_MODULE


def is_parallel_leaf(a: int, b: int) -> bool:
    return a > PARALLEL_START_A or (
        a == PARALLEL_START_A and b >= PARALLEL_START_B
    )


def module_name(stem: str) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3."
        f"TargetOrbitCertificateReplay8.{stem}"
    )


def a_module_name(a: int) -> str:
    return module_name(f"A{a:03d}")


def write_lean(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n")


def emit_leaf_modules(
    leaf_root: Path,
) -> tuple[list[Path], dict[int, list[str]], list[str]]:
    paths: list[Path] = []
    imports_by_a: dict[int, list[str]] = {}
    previous_leaf_module: str | None = None
    parallel_lane_heads: list[str | None] = [None] * PARALLEL_LANES
    parallel_leaf_index = 0
    for a in range(FIN_CARD):
        imports_by_a[a] = []
        valid_b = list(range(a, FIN_CARD))
        offset = 0
        while offset < len(valid_b):
            chunk_limit = theorem_chunk_limit(a, valid_b[offset])
            chunk = valid_b[offset : offset + chunk_limit]
            start, end = chunk[0], chunk[-1]
            stem = chunk_module_stem(a, start, end)
            current_leaf_module = module_name(stem)
            imports_by_a[a].append(current_leaf_module)
            path = leaf_root / f"{stem}.lean"
            if is_parallel_leaf(a, start):
                lane = parallel_leaf_index % PARALLEL_LANES
                import_target = (
                    parallel_lane_heads[lane]
                    or "MonochromaticQuantumGraphs.N8D3.TargetOrbitCanonicalFast8"
                )
                parallel_lane_heads[lane] = current_leaf_module
                parallel_leaf_index += 1
            else:
                import_target = (
                    "MonochromaticQuantumGraphs.N8D3.TargetOrbitCanonicalFast8"
                    if previous_leaf_module is None
                    else previous_leaf_module
                )
            lines = [
                f"import {import_target}",
                "",
                "/-!",
                f"# Bounded certificate replay for `a = {a}`, "
                f"`b = {start}..{end}`",
                "",
                "Each theorem fixes `(a,b)` and kernel-checks at most 105 closed",
                "`c` branches with the canonical-endpoint checker.  The implication",
                "makes branches with `c < b` propositionally false rather than",
                "looking up an invalid sorted row.  The bridge then returns the",
                "proof to the official certificate proposition.",
                "-/",
                "",
                "namespace MonochromaticQuantumGraphs.N8D3",
                "",
            ]
            for b in chunk:
                lines.extend(
                    [
                        f"set_option maxRecDepth {MAX_RECURSION_DEPTH} in",
                        f"set_option maxHeartbeats {MAX_HEARTBEATS} in",
                        f"theorem {leaf_theorem_name(a, b)} (c : Fin {FIN_CARD}) :",
                        (
                            f"    {fin_literal(b)} ≤ c → "
                            f"targetOrbitCertificateAt8 "
                            f"{fin_literal(a)} {fin_literal(b)} c := by"
                        ),
                        "  have hfast :",
                        (
                            f"      {fin_literal(b)} ≤ c → "
                            "targetOrbitCertificateCanonicalFastAt8 "
                            f"{fin_literal(a)} {fin_literal(b)} c := by"
                        ),
                        "    fin_cases c <;> decide +kernel",
                        "  intro hbc",
                        "  exact targetOrbitCertificateAt8_of_canonicalFast",
                        f"    {fin_literal(a)} {fin_literal(b)} c (hfast hbc)",
                        "",
                    ]
                )
            lines.extend(["end MonochromaticQuantumGraphs.N8D3"])
            write_lean(path, lines)
            paths.append(path)
            previous_leaf_module = current_leaf_module
            offset += len(chunk)
    assert all(head is not None for head in parallel_lane_heads)
    return paths, imports_by_a, [
        head for head in parallel_lane_heads if head is not None
    ]


def emit_parallel_leaf_root(
    lean_root: Path,
    parallel_lane_heads: list[str],
) -> Path:
    path = lean_root / "TargetOrbitReplayLeaves8.lean"
    lines = [
        *[f"import {head}" for head in parallel_lane_heads],
        "",
        "/-!",
        "# Seven-lane bounded replay target for `(N,D) = (8,3)`",
        "",
        "Building this module kernel-checks every post-checkpoint certificate",
        "leaf while exposing at most seven mutually independent compiler jobs.",
        "It deliberately contains no theorem beyond the imported leaf proofs.",
        "-/",
    ]
    write_lean(path, lines)
    return path


def emit_a_dispatch_modules(
    leaf_root: Path,
    imports_by_a: dict[int, list[str]],
) -> tuple[list[Path], list[str]]:
    paths: list[Path] = []
    parallel_lane_heads: list[str | None] = [None] * PARALLEL_LANES
    for a in range(FIN_CARD):
        path = leaf_root / f"A{a:03d}.lean"
        local_imports = (
            imports_by_a[a]
            if a >= PARALLEL_START_A
            else [imports_by_a[a][-1]]
        )
        if a == 0:
            dispatcher_imports: list[str] = []
        elif a < PARALLEL_START_A:
            dispatcher_imports = [a_module_name(a - 1)]
        else:
            lane = (a - PARALLEL_START_A) % PARALLEL_LANES
            dispatcher_imports = [
                parallel_lane_heads[lane]
                or a_module_name(PARALLEL_START_A - 1)
            ]
            parallel_lane_heads[lane] = a_module_name(a)
        lines = [
            *[f"import {import_name}" for import_name in local_imports],
            *[f"import {import_name}" for import_name in dispatcher_imports],
            "",
            f"/-! # Dispatch over `b` for the fixed first index `a = {a}` -/",
            "",
            "namespace MonochromaticQuantumGraphs.N8D3",
            "",
            f"theorem {a_theorem_name(a)}",
            f"    (b c : Fin {FIN_CARD})",
            f"    (hab : {fin_literal(a)} ≤ b) (hbc : b ≤ c) :",
            f"    targetOrbitCertificateAt8 {fin_literal(a)} b c := by",
            "  fin_cases b",
        ]
        for b in range(FIN_CARD):
            if b < a:
                lines.append("  · simp at hab")
            else:
                lines.append(
                    f"  · exact {leaf_theorem_name(a, b)} c hbc"
                )
        lines.extend(["", "end MonochromaticQuantumGraphs.N8D3"])
        write_lean(path, lines)
        paths.append(path)
    assert all(head is not None for head in parallel_lane_heads)
    return paths, [
        head for head in parallel_lane_heads if head is not None
    ]


def emit_final_module(
    lean_root: Path,
    dispatcher_lane_heads: list[str],
) -> Path:
    path = lean_root / "TargetOrbitCertificates8.lean"
    lines = [
        *[f"import {head}" for head in dispatcher_lane_heads],
        "",
        "/-!",
        "# Kernel-checked target-orbit coverage for `(N,D) = (8,3)`",
        "",
        "The leaf modules replay all 198,485 sorted certificate rows.  This",
        "module dispatches on the first matching index and assembles each valid",
        "row into an explicit `S₈ × S₃` witness for one of the 31 representatives.",
        "-/",
        "",
        "namespace MonochromaticQuantumGraphs.N8D3",
        "",
        "/-- Every sorted triple has a kernel-replayed row in the packed table. -/",
        "theorem targetOrbitCertificateAt8_sorted",
        f"    (a b c : Fin {FIN_CARD}) (hab : a ≤ b) (hbc : b ≤ c) :",
        "    targetOrbitCertificateAt8 a b c := by",
        "  fin_cases a",
    ]
    for a in range(FIN_CARD):
        lines.append(
            f"  · exact {a_theorem_name(a)} b c hab hbc"
        )
    lines.extend(
        [
            "",
            "/-- Every monotone target triple is equivalent under one vertex",
            "permutation and one global color permutation to one of the 31",
            "entries in `targetOrbitRep8`. -/",
            "theorem targetOrbitRep8_covers",
            f"    (target : Fin 3 → Fin {FIN_CARD}) (hsorted : Monotone target) :",
            "    ∃ representative : Fin 31,",
            "    ∃ vertexPerm : Equiv.Perm (Fin 8),",
            "    ∃ colorPerm : Equiv.Perm (Fin 3),",
            "      ∀ color : Fin 3,",
            "        matchingRelabels8 vertexPerm",
            "          (target (colorPerm color))",
            "          (targetOrbitRep8 representative color) := by",
            "  change TargetOrbitWitness8 target",
            "  have hab : target 0 ≤ target 1 := hsorted (by decide)",
            "  have hbc : target 1 ≤ target 2 := hsorted (by decide)",
            "  rw [target_eq_targetTuple8 target]",
            "  exact targetOrbitWitness8_of_certificate",
            "    (targetTuple8 (target 0) (target 1) (target 2))",
            "    (orbitPackedCertificate8",
            "      (targetLexRank8 (target 0) (target 1) (target 2)))",
            "    (targetOrbitCertificateAt8_sorted",
            "      (target 0) (target 1) (target 2) hab hbc)",
            "",
            "end MonochromaticQuantumGraphs.N8D3",
        ]
    )
    write_lean(path, lines)
    return path


def file_record(path: Path, output_directory: Path) -> dict[str, object]:
    data = path.read_bytes()
    return {
        "path": path.relative_to(output_directory).as_posix(),
        "bytes": len(data),
        "sha256": sha256(data).hexdigest(),
    }


def generate(output_directory: Path) -> dict[str, object]:
    if output_directory.exists() and any(output_directory.iterdir()):
        raise SystemExit(
            f"refusing to overwrite nonempty output directory: "
            f"{output_directory}"
        )
    output_directory.mkdir(parents=True, exist_ok=True)
    lean_root = output_directory / "MonochromaticQuantumGraphs" / "N8D3"
    leaf_root = lean_root / "TargetOrbitCertificateReplay8"

    leaf_paths, imports_by_a, parallel_lane_heads = emit_leaf_modules(leaf_root)
    parallel_leaf_root = emit_parallel_leaf_root(
        lean_root, parallel_lane_heads
    )
    dispatch_paths, dispatcher_lane_heads = emit_a_dispatch_modules(
        leaf_root, imports_by_a
    )
    final_path = emit_final_module(lean_root, dispatcher_lane_heads)
    paths = sorted([
        *leaf_paths,
        parallel_leaf_root,
        *dispatch_paths,
        final_path,
    ])

    combined = sha256()
    for path in paths:
        relative = path.relative_to(output_directory).as_posix()
        data = path.read_bytes()
        combined.update(relative.encode())
        combined.update(b"\0")
        combined.update(data)

    metadata: dict[str, object] = {
        "format": "n8d3-target-orbit-replay-v2-canonical-fast",
        "output": str(output_directory),
        "lean_root": str(lean_root),
        "leaf_theorems": sum(FIN_CARD - a for a in range(FIN_CARD)),
        "leaf_modules": len(leaf_paths),
        "leaf_assembly_modules": 1,
        "dispatch_modules": len(dispatch_paths),
        "final_modules": 1,
        "lean_files": len(paths),
        "initial_theorems_per_leaf_module_limit":
            INITIAL_THEOREMS_PER_MODULE,
        "steady_theorems_per_leaf_module_limit":
            STEADY_THEOREMS_PER_MODULE,
        "steady_sharding_starts_at": [STEADY_START_A, STEADY_START_B],
        "parallel_leaf_imports_start_at":
            [PARALLEL_START_A, PARALLEL_START_B],
        "parallel_dispatch_imports_start_at": PARALLEL_START_A,
        "parallel_lanes": PARALLEL_LANES,
        "c_branches_per_leaf": FIN_CARD,
        "max_heartbeats": MAX_HEARTBEATS,
        "max_rec_depth": MAX_RECURSION_DEPTH,
        "combined_sha256": combined.hexdigest(),
        "files": [
            file_record(path, output_directory)
            for path in paths
        ],
    }
    metadata_path = output_directory / "metadata.json"
    metadata_path.write_text(json.dumps(metadata, indent=2) + "\n")
    return metadata


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output-dir",
        type=Path,
        required=True,
        help="new or empty directory for the generated Lean replay tree",
    )
    arguments = parser.parse_args()
    metadata = generate(arguments.output_dir)
    print(
        json.dumps(
            {
                key: value
                for key, value in metadata.items()
                if key != "files"
            },
            indent=2,
        )
    )


if __name__ == "__main__":
    main()

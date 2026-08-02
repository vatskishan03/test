#!/usr/bin/env python3
"""Generate the trusted N=8,D=3 tropical-border Lean data and replay shards.

The checked-in support file is copied byte-for-byte from the canonical bundle.
This generator refuses to run if its SHA-256 or exact 144 coordinates differ.
Python is only a data generator: every certificate proposition is replayed by
Lean's kernel in bounded shards.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
CERTIFICATE_DIR = ROOT / "certificates/n8d3/tropical_nonattainment/tropical_border"
SUPPORT_PATH = CERTIFICATE_DIR / "support_144.txt"
MANIFEST_PATH = CERTIFICATE_DIR / "certificate_manifest.json"
DATA_PATH = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalBorderData8.lean"
SHARD_DIR = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalBorderGapShards8"
AGGREGATE_PATH = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalBorderFinite8.lean"

SUPPORT_SHA256 = "16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1"
MANIFEST_SHA256 = "3c5be6be472233b1d2522bb4f0c146c0770d6cd0aac36b8e9f1e388b5154cba4"


def read_manifest() -> dict:
    raw = MANIFEST_PATH.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != MANIFEST_SHA256:
        raise SystemExit(f"manifest SHA-256 mismatch: {digest}")
    manifest = json.loads(raw)
    if manifest["theorem_scope"] != "N=8, D=3 tropical border certificate":
        raise SystemExit("unexpected certificate theorem scope")
    verification = manifest["verification"]
    expected = {
        "perfect_matchings": 105,
        "colorings": 6561,
        "total_supported_monomials": 82621,
        "excluded_selected_target_monomials": 3,
        "checked_inequalities": 82618,
        "monochromatic_competitors": 58,
        "nonmonochromatic_monomials": 82560,
        "minimum_margin": 1,
        "violations": 0,
    }
    for key, value in expected.items():
        if verification.get(key) != value:
            raise SystemExit(f"unexpected verification value {key}: {verification.get(key)}")
    return manifest


def read_support(manifest: dict) -> list[int]:
    raw = SUPPORT_PATH.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != SUPPORT_SHA256:
        raise SystemExit(f"support SHA-256 mismatch: {digest}")
    values = [int(line) for line in raw.decode().splitlines() if line.strip().isdigit()]
    if values != manifest["support_indices"]:
        raise SystemExit("support coordinates differ from the canonical manifest")
    if len(values) != manifest["support_size"] or len(set(values)) != len(values):
        raise SystemExit("support is not a 144-element set")
    return values


def lean_vector(values: list[str], per_line: int = 12) -> str:
    chunks = [", ".join(values[i : i + per_line]) for i in range(0, len(values), per_line)]
    return "![\n  " + ",\n  ".join(chunks) + "\n]"


def edge_index_table() -> list[list[int]]:
    table = [[0] * 8 for _ in range(8)]
    index = 0
    for u in range(8):
        for v in range(u + 1, 8):
            table[u][v] = index
            table[v][u] = index
            index += 1
    assert index == 28
    return table


def generate_data(support: list[int], manifest: dict) -> None:
    support_set = set(support)
    support_mask = hex(sum(1 << i for i in support_set))
    positive = manifest["valuation"]["positive_indices"]
    zero = manifest["valuation"]["zero_indices"]
    targets = sorted(manifest["targets"], key=lambda target: target["color"])
    target_matchings = [target["pm_index"] for target in targets]
    target_rates = manifest["target_rates"]
    if [target["color"] for target in targets] != [0, 1, 2]:
        raise SystemExit("manifest targets are not indexed by colors 0, 1, 2")
    if [target["valuation_sum"] for target in targets] != target_rates:
        raise SystemExit("manifest target valuation sums disagree with target rates")
    if manifest["valuation"]["default_on_other_supported_entries"] != -1:
        raise SystemExit("unexpected default valuation")
    positive_expr = " || ".join(f"x == {index}" for index in positive)
    zero_expr = " || ".join(f"x == {index}" for index in zero)
    target_matching_vector = "![" + ", ".join(map(str, target_matchings)) + "]"
    target_rate_vector = "![" + ", ".join(map(str, target_rates)) + "]"
    target_edge_vectors = [
        "![" + ", ".join(f"({u}, {v})" for u, v in target["edges"]) + "]"
        for target in targets
    ]
    edge_rows = ["![" + ", ".join(map(str, row)) + "]" for row in edge_index_table()]
    edge_vector = "![\n  " + ",\n  ".join(edge_rows) + "\n]"

    text = f'''import MonochromaticQuantumGraphs.N8D3.GeneratedData

/-!
# Exact data for the `(N,D) = (8,3)` tropical-border certificate

The 144-coordinate support is generated from the canonical bundle whose ZIP
SHA-256 is
`df8d76ed377a8c63f4517951556fb00a2860e1da5dde36dcf834f9aca14e2e15`.
Coordinates use the lexicographic physical-edge index and
`9 * edgeIndex + 3 * leftColor + rightColor`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

set_option maxRecDepth 100000

/-- Lexicographic index of an undirected physical edge of `K₈`.
Diagonal entries are irrelevant and are assigned index zero. -/
def tropicalEdgeIndex8 : Fin 8 → Fin 8 → Fin 28 :=
{edge_vector}

/-- Coordinate index `9 * edgeIndex + 3 * a + b` from the canonical bundle. -/
def tropicalCoordinate8 (u v : Fin 8) (a b : Fin 3) : Fin 252 :=
  ⟨9 * (tropicalEdgeIndex8 u v).val + 3 * a.val + b.val, by omega⟩

/-- Exact 252-bit characteristic mask of the canonical 144-entry support. -/
def tropicalSupportMask8 : Nat := {support_mask}

/-- Exact characteristic function of the canonical 144-entry support. -/
def tropicalSupportCoord8 (x : Fin 252) : Bool :=
  tropicalSupportMask8.testBit x.val

/-- The eleven coordinates assigned valuation `+1`. -/
def tropicalPositiveCoord8 (x : Fin 252) : Bool :=
  {positive_expr}

/-- The two coordinates assigned valuation zero. -/
def tropicalZeroCoord8 (x : Fin 252) : Bool :=
  {zero_expr}

/-- The certificate valuation. Values at unsupported coordinates are irrelevant;
they are set to `-1` so the definition implements the manifest's default branch. -/
def tropicalValuationCoord8 (x : Fin 252) : Int :=
  bif tropicalPositiveCoord8 x then 1
  else bif tropicalZeroCoord8 x then 0 else -1

/-- The 144 supported coordinate indices as a finite set. -/
def tropicalSupportSet8 : Finset (Fin 252) :=
  Finset.univ.filter fun x => tropicalSupportCoord8 x = true

/-- Kernel check of the canonical support cardinality. -/
theorem tropicalSupportSize8 : tropicalSupportSet8.card = 144 := by
  decide

/-- Support lookup on a canonically ordered physical edge. -/
def tropicalSupportedEntry8
    (u v : Fin 8) (a b : Fin 3) : Bool :=
  tropicalSupportCoord8 (tropicalCoordinate8 u v a b)

/-- Valuation lookup on a canonically ordered physical edge. -/
def tropicalEntryValuation8
    (u v : Fin 8) (a b : Fin 3) : Int :=
  tropicalValuationCoord8 (tropicalCoordinate8 u v a b)

/-- Canonical undirected support lookup for an official edge coordinate. -/
def tropicalEdgeSupported8 (e : EdgeN 8 3) : Bool :=
  if e.u < e.v then tropicalSupportedEntry8 e.u e.v e.i e.j
  else if e.v < e.u then tropicalSupportedEntry8 e.v e.u e.j e.i
  else false

/-- Canonical undirected valuation lookup for an official edge coordinate. -/
def tropicalEdgeValuation8 (e : EdgeN 8 3) : Int :=
  if e.u < e.v then tropicalEntryValuation8 e.u e.v e.i e.j
  else if e.v < e.u then tropicalEntryValuation8 e.v e.u e.j e.i
  else 0

@[simp] theorem tropicalEdgeSupported8_mkEdge_of_lt
    {{u v : Fin 8}} {{a b : Fin 3}} (h : u < v) :
    tropicalEdgeSupported8 (mkEdge u v a b) =
      tropicalSupportedEntry8 u v a b := by
  simp [tropicalEdgeSupported8, mkEdge, h]

@[simp] theorem tropicalEdgeValuation8_mkEdge_of_lt
    {{u v : Fin 8}} {{a b : Fin 3}} (h : u < v) :
    tropicalEdgeValuation8 (mkEdge u v a b) =
      tropicalEntryValuation8 u v a b := by
  simp [tropicalEdgeValuation8, mkEdge, h]

/-- Manifest target matching indices `[59, 77, 12]`. -/
def tropicalTargetMatching8 : Fin 3 → Fin 105 := {target_matching_vector}

/-- Manifest target valuation rates `[4, 3, 4]`. -/
def tropicalTargetRate8 : Fin 3 → Int := {target_rate_vector}

/-- Constant vertex coloring used by the three selected target monomials. -/
def tropicalMonoColoring8 (c : Fin 3) : Fin 8 → Fin 3 := fun _ => c

/-- Coordinate selected by a matching edge and a vertex coloring. -/
def tropicalMatchingCoordinate8
    (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) : Fin 252 :=
  let e := matchingEdges8 m k
  tropicalCoordinate8 e.1 e.2 (q e.1) (q e.2)

/-- Whether all four coordinates of a matching monomial are supported. -/
def tropicalMatchingSupported8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Bool :=
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3)

/-- Sum of the four coordinate valuations in one matching monomial. -/
def tropicalMatchingValuation8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Int :=
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 0) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 1) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 2) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 3)

/-- Exactly the three selected monochromatic target monomials. -/
def tropicalSelectedTarget8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Bool :=
  (q 1 == q 0) && (q 2 == q 0) && (q 3 == q 0) &&
  (q 4 == q 0) && (q 5 == q 0) && (q 6 == q 0) &&
  (q 7 == q 0) && (m == tropicalTargetMatching8 (q 0))

/-- The exact finite strict-gap proposition replayed for one coloring/matching. -/
def TropicalGapAt8 (q : Fin 8 → Fin 3) (m : Fin 105) : Prop :=
  tropicalMatchingSupported8 q m = true →
  tropicalSelectedTarget8 q m = false →
  tropicalMatchingValuation8 q m ≤ tropicalTargetRate8 (q 0) - 1

/-- Every tabulated matching edge is canonically ordered. -/
theorem matchingEdges8_lt :
    ∀ m : Fin 105, ∀ k : Fin 4,
      (matchingEdges8 m k).1 < (matchingEdges8 m k).2 := by
  decide

/-- The three manifest target matchings have exactly the stated physical edges. -/
theorem tropicalTargetMatchingEdges8 :
    matchingEdges8 (tropicalTargetMatching8 0) =
        {target_edge_vectors[0]} ∧
    matchingEdges8 (tropicalTargetMatching8 1) =
        {target_edge_vectors[1]} ∧
    matchingEdges8 (tropicalTargetMatching8 2) =
        {target_edge_vectors[2]} := by
  decide

/-- All three selected target monomials lie in the canonical support. -/
theorem tropicalTargetMatchingSupported8 :
    ∀ c : Fin 3,
      tropicalMatchingSupported8 (tropicalMonoColoring8 c)
        (tropicalTargetMatching8 c) = true := by
  decide

/-- The selected target valuation equals its manifest rate for each color. -/
theorem tropicalTargetMatchingValuation8 :
    ∀ c : Fin 3,
      tropicalMatchingValuation8 (tropicalMonoColoring8 c)
        (tropicalTargetMatching8 c) = tropicalTargetRate8 c := by
  decide

/-- Explicit kernel replay of the target valuation sums `4, 3, 4`. -/
theorem tropicalTargetValuationSums8 :
    tropicalMatchingValuation8 (tropicalMonoColoring8 0)
        (tropicalTargetMatching8 0) = 4 ∧
    tropicalMatchingValuation8 (tropicalMonoColoring8 1)
        (tropicalTargetMatching8 1) = 3 ∧
    tropicalMatchingValuation8 (tropicalMonoColoring8 2)
        (tropicalTargetMatching8 2) = 4 := by
  decide

/-- Each selected target is recognized by the finite exception predicate. -/
theorem tropicalTargetSelected8 :
    ∀ c : Fin 3,
      tropicalSelectedTarget8 (tropicalMonoColoring8 c)
        (tropicalTargetMatching8 c) = true := by
  decide

end MonochromaticQuantumGraphs.N8D3
'''
    DATA_PATH.write_text(text)


def shard_module_name(a0: int, a1: int, a2: int, a3: int, suffix: str) -> str:
    return f"Prefix{a0}{a1}{a2}{a3}{suffix}"


def theorem_name(a0: int, a1: int, a2: int, a3: int, a4: int) -> str:
    return f"tropicalGapPrefix8_{a0}{a1}{a2}{a3}{a4}"


def generate_shards() -> None:
    SHARD_DIR.mkdir(parents=True, exist_ok=True)
    for stale in SHARD_DIR.glob("Prefix*.lean"):
        stale.unlink()
    for a0 in range(3):
        for a1 in range(3):
            for a2 in range(3):
                for a3 in range(3):
                    for suffix, fifth_colors in (("A", (0, 1)), ("B", (2,))):
                        declarations = []
                        for a4 in fifth_colors:
                            theorem = theorem_name(a0, a1, a2, a3, a4)
                            declarations.append(f'''set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem {theorem} :
    ∀ a5 a6 a7 : Fin 3, ∀ m : Fin 105,
      TropicalGapAt8 ![{a0}, {a1}, {a2}, {a3}, {a4}, a5, a6, a7] m := by
  unfold TropicalGapAt8
  decide
''')
                        module = shard_module_name(a0, a1, a2, a3, suffix)
                        colors = ",".join(map(str, fifth_colors))
                        text = f'''import MonochromaticQuantumGraphs.N8D3.TropicalBorderData8

/-! Independent bounded kernel replays for coloring prefix
`({a0},{a1},{a2},{a3})` and fifth color(s) `{colors}`. -/

namespace MonochromaticQuantumGraphs.N8D3

{"".join(declarations)}

end MonochromaticQuantumGraphs.N8D3
'''
                        (SHARD_DIR / f"{module}.lean").write_text(text)

    imports = "\n".join(
        f"import MonochromaticQuantumGraphs.N8D3.TropicalBorderGapShards8.{shard_module_name(a0, a1, a2, a3, suffix)}"
        for a0 in range(3) for a1 in range(3) for a2 in range(3) for a3 in range(3)
        for suffix in ("A", "B")
    )
    alternatives = "\n".join(
        f"  · exact {theorem_name(a0, a1, a2, a3, a4)} a5 a6 a7 m"
        for a0 in range(3) for a1 in range(3) for a2 in range(3) for a3 in range(3)
        for a4 in range(3)
    )
    aggregate = f'''{imports}

/-!
# Full finite tropical-gap replay for `(N,D) = (8,3)`

The 162 imported modules contain one or two independent bounded declarations.
Every declaration fixes five colors and enumerates the remaining
`3^3 * 105 = 2,835` coloring/matching pairs. Together they cover all
`3^8 * 105 = 688,905` pairs without a monolithic kernel reduction.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-- Every competing supported matching monomial has at least unit valuation gap. -/
theorem tropicalStrictValuationGap8
    (q : Fin 8 → Fin 3) (m : Fin 105) : TropicalGapAt8 q m := by
  let a0 := q 0
  let a1 := q 1
  let a2 := q 2
  let a3 := q 3
  let a4 := q 4
  let a5 := q 5
  let a6 := q 6
  let a7 := q 7
  have hq : q = ![a0, a1, a2, a3, a4, a5, a6, a7] := by
    funext i
    fin_cases i <;> simp [a0, a1, a2, a3, a4, a5, a6, a7]
  rw [hq]
  clear_value a0 a1 a2 a3 a4 a5 a6 a7
  fin_cases a0 <;> fin_cases a1 <;> fin_cases a2 <;> fin_cases a3 <;>
    fin_cases a4
{alternatives}

end MonochromaticQuantumGraphs.N8D3
'''
    AGGREGATE_PATH.write_text(aggregate)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--shards", action="store_true", help="also generate all bounded replay shards")
    args = parser.parse_args()
    manifest = read_manifest()
    support = read_support(manifest)
    generate_data(support, manifest)
    if args.shards:
        generate_shards()


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Generate the kernel-replayed N8D3 first-overlap relation layer.

The authoritative input is ``global_relations.json`` from the stable factor
semantics bundle.  This script is deliberately fail-closed: it pins the exact
JSON and support hashes, validates the complete schema fragment used here,
and independently replays every translated two-source polynomial identity
before emitting Lean.

Lean receives explicit six-term ``Finsupp`` polynomials.  The 360 equality
checks are split into 72 modules of five rows, each with a ten-million
heartbeat ceiling.  Python's successful replay is only a generator guard;
the checked-in Lean theorems repeat all polynomial equalities in the kernel.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
import hashlib
import json
from pathlib import Path
from typing import Any, Iterable


ROOT = Path(__file__).resolve().parents[2]
GLOBAL_RELATIONS_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics/global_relations.json"
)
SUPPORT_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/tropical_border/support_144.txt"
)
DATA_PATH = (
    ROOT
    / "MonochromaticQuantumGraphs/N8D3/TropicalRetainedRelations8/Data.lean"
)
SHARD_DIR = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalRetainedRelations8"
AGGREGATE_PATH = (
    ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalRetainedRelations8.lean"
)

GLOBAL_RELATIONS_SHA256 = (
    "f4f5657bf80c11f3a50c223d60bbc084d52a632a4d8be30db2d1af732008326a"
)
SUPPORT_SHA256 = (
    "16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1"
)
SCHEMA_VERSION = 2
BASE_COUNT = 200
OVERLAP_COUNT = 360
RETAINED_COUNT = 560
SHARD_COUNT = 72
ROWS_PER_SHARD = 5
DIMENSION = 144
EXPECTED_MATCHINGS = [0, 1, 6, 21, 24, 40]


def fail(message: str) -> None:
    raise SystemExit(message)


def sha256(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def read_pinned_json() -> dict[str, Any]:
    raw = GLOBAL_RELATIONS_PATH.read_bytes()
    digest = sha256(raw)
    if digest != GLOBAL_RELATIONS_SHA256:
        fail(f"global-relations SHA-256 mismatch: {digest}")
    data = json.loads(raw)
    if data.get("schema_version") != SCHEMA_VERSION:
        fail(f"unexpected global-relations schema: {data.get('schema_version')}")
    return data


def read_support(data: dict[str, Any]) -> list[int]:
    raw = SUPPORT_PATH.read_bytes()
    digest = sha256(raw)
    if digest != SUPPORT_SHA256:
        fail(f"support SHA-256 mismatch: {digest}")
    support = [
        int(line)
        for line in raw.decode().splitlines()
        if line.strip().isdigit()
    ]
    if len(support) != DIMENSION or support != sorted(set(support)):
        fail("support is not the canonical sorted 144-coordinate table")
    declared = data.get("support", {})
    expected_path = str(SUPPORT_PATH.relative_to(ROOT))
    if declared != {
        "path": expected_path,
        "sha256": SUPPORT_SHA256,
        "size": DIMENSION,
    }:
        fail("global-relations support declaration changed")
    return support


Exponent = tuple[int, ...]
Polynomial = dict[Exponent, int]


def sparse_exponent(
    entries: Iterable[dict[str, Any]], support: list[int], context: str
) -> Exponent:
    result = [0] * DIMENSION
    seen: set[int] = set()
    for entry in entries:
        if set(entry) != {"local", "global", "exp"}:
            fail(f"{context}: malformed exponent entry")
        local = entry["local"]
        global_coordinate = entry["global"]
        exponent = entry["exp"]
        if not isinstance(local, int) or not 0 <= local < DIMENSION:
            fail(f"{context}: local coordinate outside Fin 144")
        if local in seen:
            fail(f"{context}: duplicate sparse coordinate {local}")
        seen.add(local)
        if global_coordinate != support[local]:
            fail(f"{context}: local/global support mismatch at {local}")
        if not isinstance(exponent, int) or exponent == 0:
            fail(f"{context}: sparse exponent must be a nonzero integer")
        result[local] = exponent
    return tuple(result)


def relation_polynomial(
    relation: Iterable[dict[str, Any]], support: list[int], context: str
) -> Polynomial:
    result: defaultdict[Exponent, int] = defaultdict(int)
    for term_index, term in enumerate(relation):
        if set(term) != {"coef", "monomial"}:
            fail(f"{context}: malformed relation term {term_index}")
        coefficient = term["coef"]
        if (
            not isinstance(coefficient, list)
            or len(coefficient) != 2
            or coefficient[1] != 1
            or not isinstance(coefficient[0], int)
        ):
            fail(f"{context}: nonintegral coefficient at term {term_index}")
        exponent = sparse_exponent(
            term["monomial"], support, f"{context} term {term_index}"
        )
        result[exponent] += coefficient[0]
    return {exponent: coefficient for exponent, coefficient in result.items() if coefficient}


def add_translated(
    target: defaultdict[Exponent, int],
    source: Polynomial,
    scale: int,
    shift: Exponent,
) -> None:
    for exponent, coefficient in source.items():
        translated = tuple(a + b for a, b in zip(exponent, shift))
        target[translated] += scale * coefficient


def validate_rows(
    data: dict[str, Any], support: list[int]
) -> tuple[list[dict[str, Any]], list[dict[str, Any]]]:
    base = data.get("base", {})
    overlap = data.get("first_overlap", {})
    retained = data.get("retained_factor_pipeline", {})
    if base.get("count") != BASE_COUNT or len(base.get("rows", [])) != BASE_COUNT:
        fail("base relation count changed")
    if base.get("term_distribution") != {"6": BASE_COUNT}:
        fail("base relation term distribution changed")
    if base.get("all_active_matching_indices") != EXPECTED_MATCHINGS:
        fail("canonical six-matching core changed")
    if overlap.get("count") != OVERLAP_COUNT or len(overlap.get("rows", [])) != OVERLAP_COUNT:
        fail("first-overlap relation count changed")
    if overlap.get("term_distribution") != {"6": OVERLAP_COUNT}:
        fail("first-overlap term distribution changed")
    if overlap.get("parameters") != {
        "source_sizes": [6],
        "max_output": 6,
        "min_face": 3,
        "per_group_roots": 1,
    }:
        fail("first-overlap construction parameters changed")
    if retained.get("relation_count") != RETAINED_COUNT:
        fail("retained factor-pipeline count changed")
    if retained.get("term_distribution") != {"6": RETAINED_COUNT}:
        fail("retained factor-pipeline term distribution changed")

    base_polynomials: list[Polynomial] = []
    for index, row in enumerate(base["rows"]):
        if row.get("index") != index:
            fail(f"base row index changed at {index}")
        if row.get("active_matching_indices") != EXPECTED_MATCHINGS:
            fail(f"base row {index} changed active matching support")
        polynomial = relation_polynomial(
            row.get("relation", []), support, f"base row {index}"
        )
        if len(polynomial) != 6:
            fail(f"base row {index} is not an exact six-term polynomial")
        for term_index, term in enumerate(row["relation"]):
            if term["coef"] != [1, 1]:
                fail(f"base row {index} term {term_index} is not monic")
            monomial = term["monomial"]
            if len(monomial) != 4 or any(entry["exp"] != 1 for entry in monomial):
                fail(f"base row {index} term {term_index} is not squarefree degree four")
        base_polynomials.append(polynomial)

    rows = overlap["rows"]
    for index, row in enumerate(rows):
        context = f"first-overlap row {index}"
        if row.get("index") != index or row.get("combined_index") != BASE_COUNT + index:
            fail(f"{context}: row numbering changed")
        relation = row.get("relation", [])
        if len(relation) != 6:
            fail(f"{context}: explicit relation does not have six terms")
        target = relation_polynomial(relation, support, context)
        if len(target) != 6:
            fail(f"{context}: explicit polynomial cancels or combines terms")
        for term_index, term in enumerate(relation):
            if term["coef"][0] not in (-1, 1):
                fail(f"{context}: coefficient {term_index} is not a unit")
            monomial = term["monomial"]
            if len(monomial) != 5 or any(entry["exp"] != 1 for entry in monomial):
                fail(f"{context}: term {term_index} is not squarefree degree five")

        uses = row.get("exact_source_uses")
        if not isinstance(uses, list) or len(uses) != 2:
            fail(f"{context}: expected exactly two source uses")
        epsilon = uses[0].get("integer_scale")
        if epsilon not in (-1, 1) or uses[1].get("integer_scale") != -epsilon:
            fail(f"{context}: source scales are not opposite integer units")
        source_i = uses[0].get("source_index")
        source_j = uses[1].get("source_index")
        if not isinstance(source_i, int) or not 0 <= source_i < BASE_COUNT:
            fail(f"{context}: source_i outside the 200 base relations")
        if not isinstance(source_j, int) or not 0 <= source_j < BASE_COUNT:
            fail(f"{context}: source_j outside the 200 base relations")
        shifts = []
        for use_index, use in enumerate(uses):
            shift_entries = use.get("shift")
            if not isinstance(shift_entries, list) or len(shift_entries) != 1:
                fail(f"{context}: source use {use_index} is not a one-variable shift")
            if shift_entries[0].get("exp") != 1:
                fail(f"{context}: source use {use_index} shift is not positive unit")
            shifts.append(
                sparse_exponent(
                    shift_entries, support, f"{context} source shift {use_index}"
                )
            )

        replay: defaultdict[Exponent, int] = defaultdict(int)
        add_translated(replay, base_polynomials[source_i], epsilon, shifts[0])
        add_translated(replay, base_polynomials[source_j], -epsilon, shifts[1])
        replay_clean = {key: value for key, value in replay.items() if value}
        if replay_clean != target:
            fail(f"{context}: exact translated-source polynomial replay failed")

        provenance = row.get("provenance", {})
        if provenance.get("scalar") != [1, 1]:
            fail(f"{context}: pre-normalization scalar changed")
        provenance_i = provenance.get("source_i", {})
        provenance_j = provenance.get("source_j", {})
        if provenance_i.get("kind") != "base" or provenance_i.get("index") != source_i:
            fail(f"{context}: source_i provenance disagrees with exact source use")
        if provenance_j.get("kind") != "base" or provenance_j.get("index") != source_j:
            fail(f"{context}: source_j provenance disagrees with exact source use")
        provenance_shift = sparse_exponent(
            provenance.get("shift", []), support, f"{context} provenance shift"
        )
        expected_shift = tuple(a - b for a, b in zip(shifts[0], shifts[1]))
        if provenance_shift != expected_shift:
            fail(f"{context}: ratio provenance disagrees with normalized shifts")

    return rows, base["rows"]


def lean_vector(values: list[str], indent: str = "  ") -> str:
    return "![\n" + ",\n".join(f"{indent}{value}" for value in values) + "\n]"


def local_of_single_shift(use: dict[str, Any]) -> int:
    shift = use["shift"]
    if len(shift) != 1 or shift[0]["exp"] != 1:
        fail("internal error: non-unit overlap shift reached Lean rendering")
    return int(shift[0]["local"])


def lean_provenance(row: dict[str, Any]) -> str:
    first, second = row["exact_source_uses"]
    return (
        "{ epsilon := "
        f"{first['integer_scale']}, sourceI := {first['source_index']}, "
        f"coordinateB := {local_of_single_shift(first)}, "
        f"sourceJ := {second['source_index']}, "
        f"coordinateA := {local_of_single_shift(second)} }}"
    )


def lean_term(term: dict[str, Any]) -> str:
    coordinates = [str(entry["local"]) for entry in term["monomial"]]
    if len(coordinates) != 5:
        fail("internal error: non-degree-five term reached Lean rendering")
    coefficient = term["coef"][0]
    single = (
        "Finsupp.single\n"
        "      (tropicalOverlapDegreeFiveExponent8 "
        + " ".join(coordinates)
        + ") 1"
    )
    return single if coefficient == 1 else f"(-{single})"


def lean_relation(row: dict[str, Any]) -> str:
    terms = [lean_term(term) for term in row["relation"]]
    return (" +\n    ").join(terms)


def lean_shifted_source_exponent(
    use: dict[str, Any], term: dict[str, Any]
) -> str:
    coordinates = [entry["local"] for entry in term["monomial"]]
    coordinates.append(local_of_single_shift(use))
    if len(set(coordinates)) != 5:
        fail("shifted base monomial is not squarefree degree five")
    coordinates.sort()
    return "tropicalOverlapDegreeFiveExponent8 " + " ".join(map(str, coordinates))


def lean_shifted_source_table(
    rows: list[dict[str, Any]], base_rows: list[dict[str, Any]], use_index: int
) -> str:
    rendered_rows: list[str] = []
    for row in rows:
        use = row["exact_source_uses"][use_index]
        source = base_rows[use["source_index"]]["relation"]
        rendered_rows.append(
            lean_vector(
                [lean_shifted_source_exponent(use, term) for term in source],
                indent="    ",
            )
        )
    return lean_vector(rendered_rows)


def generate_data() -> str:
    return '''import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8

/-!
# Common data types for the 360 N8D3 first-overlap relations

Every overlap is recorded as an exact unit multiple of the difference of two
single-variable translations of reconstructed base relations.  Explicit
six-term target polynomials and their equality proofs live in 72 bounded
five-row shards.
-/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact normalized provenance `epsilon * (x_b B_i - x_a B_j)` for one
first-overlap row. -/
structure TropicalOverlapProvenance8 where
  epsilon : ℤ
  sourceI : Fin 200
  coordinateB : Fin 144
  sourceJ : Fin 200
  coordinateA : Fin 144

/-- The explicit exponent of one squarefree degree-five overlap monomial. -/
def tropicalOverlapDegreeFiveExponent8
    (a b c d e : Fin 144) : LaurentExponent (Fin 144) :=
  Pi.single a (1 : ℤ) + Pi.single b (1 : ℤ) + Pi.single c (1 : ℤ) +
    Pi.single d (1 : ℤ) + Pi.single e (1 : ℤ)

/-- Interpret exact overlap provenance as a sparse Laurent polynomial. -/
def tropicalOverlapProvenancePolynomial8
    (p : TropicalOverlapProvenance8) : LaurentPolynomial (Fin 144) :=
  p.epsilon •
    (LaurentPolynomial.translate (Pi.single p.coordinateB (1 : ℤ))
        (tropicalBaseRelation8 p.sourceI) -
      LaurentPolynomial.translate (Pi.single p.coordinateA (1 : ℤ))
        (tropicalBaseRelation8 p.sourceJ))

/-- Expand a translated reconstructed base relation without inspecting the
quotient-based support representation of `Finsupp`. -/
theorem tropicalOverlapTranslateBaseRelation8
    (shift : LaurentExponent (Fin 144)) (r : Fin 200) :
    LaurentPolynomial.translate shift (tropicalBaseRelation8 r) =
      ∑ j : Fin 6,
        Finsupp.single
          (shift + tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
            (tropicalBaseMatching8 j)) 1 := by
  classical
  unfold tropicalBaseRelation8
  calc
    LaurentPolynomial.translate shift
        (∑ j : Fin 6,
          Finsupp.single
            (tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
              (tropicalBaseMatching8 j)) 1) =
      ∑ j : Fin 6,
        LaurentPolynomial.translate shift
          (Finsupp.single
            (tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
              (tropicalBaseMatching8 j)) 1) := by
        exact map_sum (LaurentPolynomial.translateLinear shift) _ Finset.univ
    _ = ∑ j : Fin 6,
        Finsupp.single
          (shift + tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
            (tropicalBaseMatching8 j)) 1 := by
      apply Finset.sum_congr rfl
      intro j _
      exact LaurentPolynomial.translate_single shift _ 1

/-- Global row represented by one of 72 five-row overlap shards. -/
def tropicalOverlapIndex8 (shard : Fin 72) (row : Fin 5) : Fin 360 :=
  ⟨5 * shard.val + row.val, by omega⟩

/-- The five-row shard containing a global overlap index. -/
def tropicalOverlapShard8 (r : Fin 360) : Fin 72 :=
  ⟨r.val / 5, by omega⟩

/-- The row within the five-row shard containing a global overlap index. -/
def tropicalOverlapRow8 (r : Fin 360) : Fin 5 :=
  ⟨r.val % 5, Nat.mod_lt _ (by omega)⟩

/-- Quotient and remainder reconstruct all 360 overlap indices. -/
theorem tropicalOverlapIndex_recombine8 (r : Fin 360) :
    tropicalOverlapIndex8 (tropicalOverlapShard8 r)
      (tropicalOverlapRow8 r) = r := by
  apply Fin.ext
  simp [tropicalOverlapIndex8, tropicalOverlapShard8, tropicalOverlapRow8]
  omega

end

end MonochromaticQuantumGraphs.N8D3
'''


def generate_shard(
    shard: int,
    rows: list[dict[str, Any]],
    base_rows: list[dict[str, Any]],
) -> str:
    if len(rows) != ROWS_PER_SHARD:
        fail(f"internal error: shard {shard} does not contain five rows")
    provenance = lean_vector([lean_provenance(row) for row in rows])
    relations = lean_vector([lean_relation(row) for row in rows])
    source_i_exponents = lean_shifted_source_table(rows, base_rows, 0)
    source_j_exponents = lean_shifted_source_table(rows, base_rows, 1)
    return f'''import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows {shard * 5}--{shard * 5 + 4}. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard {shard}. -/
def tropicalOverlapProvenance8Shard{shard} :
    Fin 5 → TropicalOverlapProvenance8 :=
{provenance}

/-- The five explicit sparse target polynomials in overlap shard {shard}. -/
def tropicalOverlapRelation8Shard{shard} :
    Fin 5 → LaurentPolynomial (Fin 144) :=
{relations}

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard{shard} :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
{source_i_exponents}

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard{shard} :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
{source_j_exponents}

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard {shard}. -/
theorem tropicalOverlapSourceIExponent8_replay_shard{shard}
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard{shard} i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard{shard} i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard{shard} i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard {shard}. -/
theorem tropicalOverlapSourceJExponent8_replay_shard{shard}
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard{shard} i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard{shard} i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard{shard} i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard{shard}
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard{shard} i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard{shard} i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard{shard} i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard{shard}
    (i : Fin 5) :
    tropicalOverlapRelation8Shard{shard} i =
      tropicalOverlapSourceCombination8Shard{shard} i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard{shard},
      tropicalOverlapSourceCombination8Shard{shard},
      tropicalOverlapProvenance8Shard{shard},
      tropicalOverlapSourceIExponent8Shard{shard},
      tropicalOverlapSourceJExponent8Shard{shard}, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard {shard}. -/
theorem tropicalOverlapRelation8_provenance_shard{shard} (i : Fin 5) :
    tropicalOverlapRelation8Shard{shard} i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard{shard} i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard{shard}]
  unfold tropicalOverlapSourceCombination8Shard{shard}
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard{shard},
    tropicalOverlapSourceJExponent8_replay_shard{shard}]

end

end MonochromaticQuantumGraphs.N8D3
'''


def aggregate_imports() -> str:
    return "\n".join(
        "import MonochromaticQuantumGraphs.N8D3."
        f"TropicalRetainedRelations8.Shard{shard}"
        for shard in range(SHARD_COUNT)
    )


def aggregate_dispatch(name: str) -> str:
    return lean_vector([f"{name}Shard{shard}" for shard in range(SHARD_COUNT)])


def aggregate_replay_cases() -> str:
    cases = []
    for shard in range(SHARD_COUNT):
        cases.append(
            "  · simpa [tropicalOverlapRelationShard8,\n"
            "      tropicalOverlapProvenanceShard8] using\n"
            f"      tropicalOverlapRelation8_provenance_shard{shard} i"
        )
    return "\n".join(cases)


def generate_aggregate() -> str:
    provenance_dispatch = aggregate_dispatch("tropicalOverlapProvenance8")
    relation_dispatch = aggregate_dispatch("tropicalOverlapRelation8")
    replay_cases = aggregate_replay_cases()
    return f'''{aggregate_imports()}

/-!
# The 560 retained N8D3 tropical factor-pipeline relations

The first 200 rows are the reconstructed official base equations.  Rows
200--559 are the 360 explicit first-overlap targets.  Each overlap polynomial
is independently checked against the exact identity
`T_r = epsilon_r * (x_b B_i - x_a B_j)` in a bounded five-row shard.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

set_option maxRecDepth 100000

/-- Dispatch exact overlap provenance to its bounded five-row shard. -/
def tropicalOverlapProvenanceShard8 :
    Fin 72 → Fin 5 → TropicalOverlapProvenance8 :=
{provenance_dispatch}

/-- Dispatch an explicit overlap target polynomial to its bounded shard. -/
def tropicalOverlapRelationShard8 :
    Fin 72 → Fin 5 → LaurentPolynomial (Fin 144) :=
{relation_dispatch}

/-- Exact normalized provenance for one of the 360 first-overlap rows. -/
def tropicalOverlapProvenance8 (r : Fin 360) : TropicalOverlapProvenance8 :=
  tropicalOverlapProvenanceShard8 (tropicalOverlapShard8 r)
    (tropicalOverlapRow8 r)

/-- One of the 360 explicit six-term first-overlap Laurent polynomials. -/
def tropicalOverlapRelation8 (r : Fin 360) : LaurentPolynomial (Fin 144) :=
  tropicalOverlapRelationShard8 (tropicalOverlapShard8 r)
    (tropicalOverlapRow8 r)

set_option maxHeartbeats 10000000 in
private theorem tropicalOverlapRelationShard8_provenance
    (s : Fin 72) (i : Fin 5) :
    tropicalOverlapRelationShard8 s i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenanceShard8 s i) := by
  fin_cases s
{replay_cases}

/-- Exact provenance identity for every explicit first-overlap polynomial. -/
theorem tropicalOverlapRelation8_provenance (r : Fin 360) :
    tropicalOverlapRelation8 r =
      (tropicalOverlapProvenance8 r).epsilon •
        (LaurentPolynomial.translate
            (Pi.single (tropicalOverlapProvenance8 r).coordinateB (1 : ℤ))
            (tropicalBaseRelation8 (tropicalOverlapProvenance8 r).sourceI) -
          LaurentPolynomial.translate
            (Pi.single (tropicalOverlapProvenance8 r).coordinateA (1 : ℤ))
            (tropicalBaseRelation8 (tropicalOverlapProvenance8 r).sourceJ)) := by
  simpa [tropicalOverlapRelation8, tropicalOverlapProvenance8,
    tropicalOverlapProvenancePolynomial8] using
    tropicalOverlapRelationShard8_provenance
      (tropicalOverlapShard8 r) (tropicalOverlapRow8 r)

/-- All 360 overlap equations follow solely from the 200 base equations. -/
theorem tropicalOverlapRelations8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    ∀ r : Fin 360,
      (tropicalOverlapRelation8 r).Holds (tropicalSupportWeight8 W) := by
  intro r
  have hi := tropicalBaseRelations8_hold hSupport hEq
    (tropicalOverlapProvenance8 r).sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    (tropicalOverlapProvenance8 r).sourceJ
  rw [tropicalOverlapRelation8_provenance]
  unfold LaurentPolynomial.Holds at hi hj ⊢
  rw [LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_sub,
    LaurentPolynomial.eval_translate _
      (tropicalSupportWeight8_ne_zero hSupport),
    LaurentPolynomial.eval_translate _
      (tropicalSupportWeight8_ne_zero hSupport),
    hi, hj]
  simp

/-- The authoritative 560-row factor-pipeline source: 200 reconstructed base
relations followed by 360 explicit first-overlap relations. -/
def tropicalRetainedRelation8 (r : Fin 560) : LaurentPolynomial (Fin 144) :=
  if h : r.val < 200 then
    tropicalBaseRelation8 ⟨r.val, h⟩
  else
    tropicalOverlapRelation8 ⟨r.val - 200, by omega⟩

/-- The official equation system implies every retained factor-pipeline
source relation. -/
theorem tropicalRetainedRelations8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    ∀ r : Fin 560,
      (tropicalRetainedRelation8 r).Holds (tropicalSupportWeight8 W) := by
  intro r
  by_cases h : r.val < 200
  · simpa [tropicalRetainedRelation8, h] using
      tropicalBaseRelations8_hold hSupport hEq ⟨r.val, h⟩
  · simpa [tropicalRetainedRelation8, h] using
      tropicalOverlapRelations8_hold hSupport hEq
        ⟨r.val - 200, by omega⟩

end

end MonochromaticQuantumGraphs.N8D3
'''


def generated_files(
    rows: list[dict[str, Any]], base_rows: list[dict[str, Any]]
) -> dict[Path, str]:
    result = {DATA_PATH: generate_data(), AGGREGATE_PATH: generate_aggregate()}
    for shard in range(SHARD_COUNT):
        start = shard * ROWS_PER_SHARD
        path = SHARD_DIR / f"Shard{shard}.lean"
        result[path] = generate_shard(
            shard,
            rows[start : start + ROWS_PER_SHARD],
            base_rows,
        )
    return result


def write_or_check(files: dict[Path, str], check: bool) -> None:
    expected_shards = {SHARD_DIR / f"Shard{i}.lean" for i in range(SHARD_COUNT)}
    existing_shards = set(SHARD_DIR.glob("Shard*.lean")) if SHARD_DIR.exists() else set()
    unexpected = sorted(existing_shards - expected_shards)
    if unexpected:
        fail("unexpected generated shard files: " + ", ".join(map(str, unexpected)))

    stale: list[Path] = []
    for path, text in files.items():
        if path.exists() and path.read_text() == text:
            continue
        if check:
            stale.append(path)
            continue
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
    if stale:
        fail("generated Lean files are stale: " + ", ".join(map(str, stale)))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check",
        action="store_true",
        help="validate inputs and require every generated file to be byte-identical",
    )
    args = parser.parse_args()

    data = read_pinned_json()
    support = read_support(data)
    rows, base_rows = validate_rows(data, support)
    files = generated_files(rows, base_rows)
    forbidden = ("sorry", "admit", "axiom", "unsafe", "native_decide", "Lean.ofReduceBool")
    for path, text in files.items():
        for token in forbidden:
            if token in text:
                fail(f"forbidden Lean token {token!r} in {path}")
    write_or_check(files, args.check)
    action = "checked" if args.check else "generated"
    print(f"{action} {len(files)} Lean files for {OVERLAP_COUNT} overlap rows")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Generate the kernel-replayed N8D3 Component-A terminal certificate.

The only certificate input is the hash-pinned terminal Component-A semantics
JSON.  The eight official source equations are reconstructed from their
coloring codes and their six-to-nine supported perfect matchings; the existing
105-matching table remains the source of every matching monomial.

Python emits finite certificate data.  Lean checks every support filter,
signed-character implication, sparse-polynomial equality, normalized
reduction, basis-source row, and nested-face contradiction.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from typing import Any, Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
SEMANTICS_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics"
    / "terminal_component_A_semantics.json"
)
SUPPORT_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/tropical_border/support_144.txt"
)

SEMANTICS_SHA256 = "95f3d749956b6791927436e8809de348fa3dac42cee08493c9acac44cf09d883"
SUPPORT_SHA256 = "16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1"

RELATIONS_MAIN = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalTerminalRelations8.lean"
RELATIONS_DIR = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalTerminalRelations8"
COMPONENT_MAIN = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalTerminalComponentA8.lean"
COMPONENT_DIR = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalTerminalComponentA8"

OFFICIAL_ROWS = (
    (65, 733, (0, 1, 6, 21, 24, 25, 40, 69, 84)),
    (73, 756, (0, 1, 6, 21, 24, 40, 43, 51, 54)),
    (74, 758, (0, 1, 6, 21, 24, 40, 43)),
    (75, 759, (0, 1, 6, 21, 24, 40, 51, 54)),
    (77, 761, (0, 1, 6, 21, 24, 40)),
    (437, 1462, (0, 1, 6, 21, 24, 25, 40, 69)),
    (874, 2917, (0, 1, 6, 21, 24, 25, 40, 69, 84)),
    (1213, 3646, (0, 1, 6, 21, 24, 25, 40, 69)),
)

FAMILY_CONFIGS = (
    {
        "json_name": "historical_pair_1213_874",
        "stem": "terminalA1213_874",
        "title": "1213/874",
        "left_row": 874,
        "right_row": 1213,
        "class_id": 2,
    },
    {
        "json_name": "historical_pair_437_65",
        "stem": "terminalA437_65",
        "title": "437/65",
        "left_row": 65,
        "right_row": 437,
        "class_id": 7,
    },
)


def fail(message: str) -> None:
    raise SystemExit(message)


def sha256(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def checked_json(path: Path, expected_digest: str) -> dict[str, Any]:
    raw = path.read_bytes()
    digest = sha256(raw)
    if digest != expected_digest:
        fail(f"{path.name} SHA-256 mismatch: {digest}")
    value = json.loads(raw)
    if not isinstance(value, dict):
        fail(f"{path.name} is not a JSON object")
    return value


def read_support() -> list[int]:
    raw = SUPPORT_PATH.read_bytes()
    digest = sha256(raw)
    if digest != SUPPORT_SHA256:
        fail(f"support SHA-256 mismatch: {digest}")
    support = [
        int(line)
        for line in raw.decode().splitlines()
        if line.strip().isdigit()
    ]
    if len(support) != 144 or support != sorted(set(support)):
        fail("canonical support is not a strictly increasing 144-row table")
    return support


def ternary_digits(code: int) -> tuple[int, ...]:
    digits = []
    for _ in range(8):
        digits.append(code % 3)
        code //= 3
    if code:
        fail("coloring code exceeds eight ternary digits")
    return tuple(digits)


def perfect_matchings(vertices: tuple[int, ...]) -> list[tuple[tuple[int, int], ...]]:
    if not vertices:
        return [()]
    first = vertices[0]
    rows = []
    for position in range(1, len(vertices)):
        partner = vertices[position]
        rest = vertices[1:position] + vertices[position + 1 :]
        for tail in perfect_matchings(rest):
            rows.append(((first, partner),) + tail)
    return rows


def official_relation_payloads(
    support: Sequence[int],
) -> dict[int, list[dict[str, Any]]]:
    """Independently reconstruct the eight sparse local Laurent rows."""
    support_rank = {global_index: local for local, global_index in enumerate(support)}
    edge_index = {
        (u, v): index
        for index, (u, v) in enumerate(
            (u, v) for u in range(8) for v in range(u + 1, 8)
        )
    }
    matchings = perfect_matchings(tuple(range(8)))
    if len(matchings) != 105:
        fail(f"independent perfect-matching count changed: {len(matchings)}")
    result: dict[int, list[dict[str, Any]]] = {}
    for official_index, code, expected_active in OFFICIAL_ROWS:
        coloring = ternary_digits(code)
        active: list[int] = []
        terms: list[dict[str, Any]] = []
        for matching_index, matching in enumerate(matchings):
            globals_for_term = tuple(
                9 * edge_index[(u, v)] + 3 * coloring[u] + coloring[v]
                for u, v in matching
            )
            if all(value in support_rank for value in globals_for_term):
                active.append(matching_index)
                local_coordinates = tuple(
                    support_rank[value] for value in globals_for_term
                )
                local_indices = sorted(local_coordinates)
                terms.append(
                    {
                        "matching_index": matching_index,
                        "local_coordinates": local_coordinates,
                        "global_coordinates": globals_for_term,
                        "coefficient": 1,
                        "exponent": [
                            {"local": local, "global": support[local], "exp": 1}
                            for local in local_indices
                        ],
                    }
                )
        if tuple(active) != expected_active:
            fail(
                f"official row {official_index} active matching set changed: {active}"
            )
        result[official_index] = terms
    return result


def canonical_sparse_rows(rows: Iterable[dict[str, Any]]) -> tuple[Any, ...]:
    canonical = []
    for row in rows:
        coefficient = row.get("coefficient", row.get("coef"))
        if isinstance(coefficient, list):
            if coefficient[1] != 1:
                fail("nonintegral Laurent coefficient in terminal source")
            coefficient = coefficient[0]
        exponent = row.get("exponent", row.get("monomial"))
        canonical.append(
            (
                int(coefficient),
                tuple(
                    sorted(
                        (int(item["local"]), int(item["exp"]))
                        for item in exponent
                        if int(item["exp"])
                    )
                ),
            )
        )
    return tuple(sorted(canonical))


def sparse_polynomial_map(value: Any) -> dict[tuple[tuple[int, int], ...], int]:
    """Canonicalize a sparse polynomial, combining duplicate exponents."""
    result: dict[tuple[tuple[int, int], ...], int] = {}
    for row in polynomial_rows(value):
        exponent = tuple(
            sorted(
                (int(item["local"]), int(item["exp"]))
                for item in row["exponent"]
                if int(item["exp"])
            )
        )
        result[exponent] = result.get(exponent, 0) + int(row["coefficient"])
    return {exponent: coefficient for exponent, coefficient in result.items() if coefficient}


def add_polynomial_maps(
    *scaled_maps: tuple[int, dict[tuple[tuple[int, int], ...], int]]
) -> dict[tuple[tuple[int, int], ...], int]:
    result: dict[tuple[tuple[int, int], ...], int] = {}
    for scalar, polynomial in scaled_maps:
        for exponent, coefficient in polynomial.items():
            result[exponent] = result.get(exponent, 0) + scalar * coefficient
    return {exponent: coefficient for exponent, coefficient in result.items() if coefficient}


def translate_polynomial_map(
    polynomial: dict[tuple[tuple[int, int], ...], int],
    shift: Sequence[dict[str, Any]],
) -> dict[tuple[tuple[int, int], ...], int]:
    result: dict[tuple[tuple[int, int], ...], int] = {}
    for exponent, coefficient in polynomial.items():
        shifted = add_exponent_rows(
            shift,
            [{"local": local, "exp": value} for local, value in exponent],
        )
        key = tuple((int(row["local"]), int(row["exp"])) for row in shifted)
        result[key] = result.get(key, 0) + coefficient
    return {exponent: coefficient for exponent, coefficient in result.items() if coefficient}


def validate_semantics(
    semantics: dict[str, Any], official_payloads: dict[int, list[dict[str, Any]]]
) -> None:
    if semantics.get("schema_version") != 2 or semantics.get("component") != "A":
        fail("unexpected Component-A terminal schema header")
    terminal_table = semantics.get("terminal_table")
    if terminal_table != {
        "component_quotient_count": 70,
        "official_minimum_terms": 6,
        "official_relation_count": 1605,
        "total_relation_count": 1675,
    }:
        fail("Component-A terminal-table census changed")
    dispatch = semantics.get("cover_dispatch")
    if not isinstance(dispatch, list) or len(dispatch) != 54:
        fail("Component-A dispatch is not the frozen 54-row table")
    destinations: dict[str, int] = {}
    for expected_index, row in enumerate(dispatch):
        if row.get("cover_index") != expected_index:
            fail(f"Component-A cover index changed at row {expected_index}")
        selected = row.get("selected_class_ids")
        required = row.get("required_selected_class_id")
        if not isinstance(selected, list) or required not in selected:
            fail(f"Component-A dispatch row {expected_index} lacks its required class")
        destination = row.get("destination")
        expected_required = {
            "historical_pair_1213_874": 2,
            "historical_pair_437_65": 7,
        }.get(destination)
        if required != expected_required or ((2 in selected) == (7 in selected)):
            fail(f"Component-A row {expected_index} no longer has the 2/7 XOR dispatch")
        destinations[destination] = destinations.get(destination, 0) + 1
    if destinations != {
        "historical_pair_1213_874": 27,
        "historical_pair_437_65": 27,
    }:
        fail(f"Component-A 27+27 dispatch changed: {destinations}")
    if semantics.get("all_54_covers_follow_the_canonical_27_plus_27_dispatch") is not True:
        fail("Component-A frozen dispatch audit is false")

    families = semantics.get("historical_cover_family_certificates")
    if not isinstance(families, dict) or set(families) != {
        "historical_pair_1213_874",
        "historical_pair_437_65",
    }:
        fail("Component-A terminal family set changed")
    for config in FAMILY_CONFIGS:
        family = families[config["json_name"]]
        if family.get("required_selected_class_id") != config["class_id"]:
            fail(f"{config['json_name']} selected class changed")
        nested = family.get("nested_face_contradiction")
        if not isinstance(nested, dict):
            fail(f"{config['json_name']} nested certificate is missing")
        expected_fields = {
            "left_relation_index": config["left_row"],
            "right_relation_index": config["right_row"],
            "left_source_term_count": 9,
            "right_source_term_count": 8,
            "omitted_source_term_index": 8,
            "omitted_reduced_term_index": 0,
            "face_integer_scalar": 1,
        }
        for key, expected in expected_fields.items():
            if nested.get(key) != expected:
                fail(
                    f"{config['json_name']} {key} changed: {nested.get(key)}"
                )
        if nested.get("omitted_coefficient") != [1, 1]:
            fail(f"{config['json_name']} omitted coefficient changed")
        if nested.get("omitted_coefficient_nonzero") is not True:
            fail(f"{config['json_name']} omitted coefficient audit is false")
        if nested.get("translated_right_minus_left_face_reduces_to_zero", {}).get(
            "provenance", {}
        ).get("normalized_target") != []:
            fail(f"{config['json_name']} paired face no longer reduces to zero")
        full_target = nested.get("left_minus_translated_right_reduction", {}).get(
            "provenance", {}
        ).get("normalized_target")
        if not isinstance(full_target, list) or len(full_target) != 1:
            fail(f"{config['json_name']} full subtraction is not one monomial")

        for side in ("left", "right"):
            source = nested[f"{side}_relation_source"]
            official_index = source.get("official_relation_index")
            if official_index != nested[f"{side}_relation_index"]:
                fail(f"{config['json_name']} {side} source index mismatch")
            expected_code = next(
                code for index, code, _active in OFFICIAL_ROWS if index == official_index
            )
            if source.get("coloring_code") != expected_code:
                fail(f"{config['json_name']} {side} coloring code changed")
            expected_terms = canonical_sparse_rows(official_payloads[official_index])
            if canonical_sparse_rows(source.get("relation", [])) != expected_terms:
                fail(f"{config['json_name']} {side} official relation changed")


def lean_int(value: int) -> str:
    value = int(value)
    return str(value) if value >= 0 else f"({value})"


def exponent_expr(rows: Sequence[dict[str, Any]]) -> str:
    entries = [
        (int(row["local"]), int(row["exp"]))
        for row in rows
        if int(row["exp"])
    ]
    if not entries:
        return "(0 : LaurentExponent (Fin 144))"
    terms = [
        f"Pi.single {local} ({lean_int(exponent)} : ℤ)"
        for local, exponent in entries
    ]
    return "(" + " + ".join(terms) + ")"


def add_exponent_rows(*groups: Sequence[dict[str, Any]]) -> list[dict[str, int]]:
    """Add sparse Laurent exponents and return increasing local coordinates."""
    totals: dict[int, int] = {}
    for group in groups:
        for row in group:
            local = int(row["local"])
            totals[local] = totals.get(local, 0) + int(row["exp"])
    return [
        {"local": local, "exp": exponent}
        for local, exponent in sorted(totals.items())
        if exponent
    ]


def polynomial_rows(value: Any) -> list[dict[str, Any]]:
    if isinstance(value, dict) and set(value) == {"lhs", "rhs"}:
        return polynomial_rows(value["rhs"])
    if not isinstance(value, list):
        fail("malformed Laurent-polynomial payload")
    result = []
    for row in value:
        coefficient = row.get("coefficient", row.get("coef"))
        if isinstance(coefficient, list):
            if len(coefficient) != 2 or int(coefficient[1]) != 1:
                fail("nonintegral polynomial coefficient")
            coefficient = coefficient[0]
        exponent = row.get("exponent", row.get("monomial"))
        if exponent is None:
            fail("polynomial row has no exponent")
        result.append({"coefficient": int(coefficient), "exponent": exponent})
    return result


def polynomial_expr(value: Any) -> str:
    rows = polynomial_rows(value)
    if not rows:
        return "(0 : LaurentPolynomial (Fin 144))"
    terms = [
        f"Finsupp.single {exponent_expr(row['exponent'])} "
        f"({lean_int(row['coefficient'])} : ℤ)"
        for row in rows
    ]
    return "(\n    " + " +\n    ".join(terms) + "\n  )"


def signed_row_expr(row: dict[str, Any]) -> str:
    return (
        "{ exponent := "
        + exponent_expr(row["exponent"])
        + ", signExponent := "
        + lean_int(int(row["signExponent"]))
        + " }"
    )


def vector_expr(values: Sequence[str], *, indent: str = "  ", per_line: int = 6) -> str:
    if not values:
        fail("cannot emit an empty Lean vector")
    chunks = [
        ", ".join(values[index : index + per_line])
        for index in range(0, len(values), per_line)
    ]
    if len(chunks) == 1:
        return "![" + chunks[0] + "]"
    continuation = indent + "  "
    return "![\n" + continuation + (",\n" + continuation).join(chunks) + "\n" + indent + "]"


def implication_expr(
    implication: dict[str, Any], basis_count: int, *, indent: str
) -> str:
    coefficients = [int(value) for value in implication["coeff"]]
    if len(coefficients) != basis_count + 1:
        fail(
            f"implication coefficient arity {len(coefficients)} != {basis_count + 1}"
        )
    basis_vector = vector_expr(
        [lean_int(value) for value in coefficients[:-1]], indent=indent + "  "
    )
    parity = lean_int(coefficients[-1])
    return (
        "{ coeff := fun\n"
        f"{indent}    | .inl i => {basis_vector} i\n"
        f"{indent}    | .inr _ => {parity}\n"
        f"{indent}  combination_eq := by\n"
        f"{indent}    apply SignedCharacterRow.ext <;> decide }}"
    )


def relation_data_file(official_payloads: dict[int, list[dict[str, Any]]]) -> str:
    official_indices = vector_expr([str(row[0]) for row in OFFICIAL_ROWS], per_line=8)
    coloring_codes = vector_expr([str(row[1]) for row in OFFICIAL_ROWS], per_line=8)
    matching_sets = vector_expr(
        ["{" + ", ".join(str(value) for value in row[2]) + "}" for row in OFFICIAL_ROWS],
        per_line=1,
    )
    explicit_relations = vector_expr(
        [polynomial_expr(official_payloads[index]) for index, _code, _active in OFFICIAL_ROWS],
        per_line=1,
    )
    return f'''import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Coordinates
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8

/-!
# Eight official terminal source rows for N8D3

Only the eight coloring codes and their six-to-nine active matching indices
are stored.  Every Laurent monomial is reconstructed from `matchingEdges8`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Official indices in the 1,605-row terminal EqSystem table. -/
def tropicalTerminalOfficialIndex8 : Fin 8 → Fin 1605 :=
  {official_indices}

/-- Little-endian ternary coloring codes of the eight required rows. -/
def tropicalTerminalColoringCode8 : Fin 8 → Fin 6561 :=
  {coloring_codes}

/-- Reconstruct one official terminal coloring from its ternary code. -/
def tropicalTerminalColoring8 (r : Fin 8) : Fin 8 → Fin 3 :=
  tropicalColoringOfCode8 (tropicalTerminalColoringCode8 r)

/-- Precisely the supported official matching columns at each source row. -/
def tropicalTerminalMatchingSet8 : Fin 8 → Finset (Fin 105) :=
  {matching_sets}

/-- A terminal source relation reconstructed from the existing matching table. -/
def tropicalTerminalRelation8 (r : Fin 8) : LaurentPolynomial (Fin 144) :=
  ∑ m ∈ tropicalTerminalMatchingSet8 r,
    Finsupp.single
      (tropicalMatchingLocalExponent8 (tropicalTerminalColoring8 r) m) 1

/-- Independently generated sparse expansions used by the certificate shards. -/
def tropicalTerminalExplicitRelation8 : Fin 8 → LaurentPolynomial (Fin 144) :=
  {explicit_relations}

end

end MonochromaticQuantumGraphs.N8D3
'''


def relation_shard_file(
    shard: int, official_payloads: dict[int, list[dict[str, Any]]]
) -> str:
    start = 4 * shard
    rows = []
    for local in range(4):
        index = start + local
        official_index, code, active = OFFICIAL_ROWS[index]
        payloads = official_payloads[official_index]
        if tuple(int(term["matching_index"]) for term in payloads) != active:
            fail(f"official row {official_index} replay ordering changed")
        exponent_replays = []
        for term in payloads:
            matching_index = int(term["matching_index"])
            local_coordinates = tuple(int(x) for x in term["local_coordinates"])
            global_coordinates = tuple(int(x) for x in term["global_coordinates"])
            if len(local_coordinates) != 4 or len(global_coordinates) != 4:
                fail(
                    f"official row {official_index} matching {matching_index} "
                    "is not a four-coordinate monomial"
                )
            a0, a1, a2, a3 = local_coordinates
            exponent_replays.append(
                f'''/-- Four-coordinate replay for official row {official_index}, matching {matching_index}. -/
theorem tropicalTerminalMatchingExponent8_row{index}_matching{matching_index} :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 {code}) ({matching_index} : Fin 105) =
      {exponent_expr(term['exponent'])} := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 {code}) ({matching_index} : Fin 105)
    ({a0} : Fin 144) ({a1} : Fin 144) ({a2} : Fin 144) ({a3} : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel
'''
            )
        rows.append(
            f'''theorem tropicalTerminalSupportedMatchingSet8_row{index} :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 {index}) m = true) =
        tropicalTerminalMatchingSet8 {index} := by
  decide

{chr(10).join(exponent_replays)}
'''
        )
    return f'''import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Data

/-! Bounded support-filter replay shard {shard} for the official terminal rows. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

{chr(10).join(rows)}
end

end MonochromaticQuantumGraphs.N8D3
'''


def relation_main_file(official_payloads: dict[int, list[dict[str, Any]]]) -> str:
    aliases = []
    for row_position, (official_index, _code, active) in enumerate(OFFICIAL_ROWS):
        replay_names = "\n    ".join(
            f"tropicalTerminalMatchingExponent8_row{row_position}_matching{matching},"
            for matching in active
        ).rstrip(",")
        aliases.append(
            f'''/-- Official terminal relation {official_index}. -/
def tropicalTerminalRelation{official_index}_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 {row_position}

theorem tropicalTerminalRelation{official_index}_8_explicit :
    tropicalTerminalRelation{official_index}_8 =
      tropicalTerminalExplicitRelation8 {row_position} := by
  classical
  simp [tropicalTerminalRelation{official_index}_8,
    tropicalTerminalRelation8, tropicalTerminalMatchingSet8,
    tropicalTerminalColoring8, tropicalTerminalColoringCode8,
    tropicalTerminalExplicitRelation8,
    {replay_names}]
  <;> abel

theorem tropicalTerminalRelation{official_index}_8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation{official_index}_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq {row_position}
'''
        )
    support_dispatch = "\n".join(
        f"  · exact tropicalTerminalSupportedMatchingSet8_row{index}"
        for index in range(8)
    )
    return f'''import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Shard0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Shard1

/-!
# Official EqSystem adapter for the eight N8D3 terminal sources

This module reconstructs the selected official `pmSumN` equations without a
second 105-column matching table.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalOfficialIndex8_eq :
    tropicalTerminalOfficialIndex8 = ![65, 73, 74, 75, 77, 437, 874, 1213] := by
  rfl

theorem tropicalTerminalColoringCode8_eq :
    tropicalTerminalColoringCode8 = ![733, 756, 758, 759, 761, 1462, 2917, 3646] := by
  rfl

/-- All eight source colorings are nonmonochromatic. -/
theorem tropicalTerminalColoring8_not_allEqual (r : Fin 8) :
    ¬ allEqual (tropicalTerminalColoring8 r) := by
  revert r
  decide

/-- Each row's support filter is exactly its declared six-to-nine columns. -/
theorem tropicalTerminalSupportedMatchingSet8 (r : Fin 8) :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 r) m = true) =
        tropicalTerminalMatchingSet8 r := by
  fin_cases r
{support_dispatch}

theorem tropicalTerminalMatching8_supported
    (r : Fin 8) {{m : Fin 105}} (hm : m ∈ tropicalTerminalMatchingSet8 r) :
    tropicalMatchingSupported8 (tropicalTerminalColoring8 r) m = true := by
  have hmem : m ∈ Finset.univ.filter (fun n : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 r) n = true) := by
    rw [tropicalTerminalSupportedMatchingSet8 r]
    exact hm
  exact (Finset.mem_filter.mp hmem).2

/-- Evaluation is the corresponding sparse part of the official matching sum. -/
theorem eval_tropicalTerminalRelation8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (r : Fin 8) :
    (tropicalTerminalRelation8 r).eval (tropicalSupportWeight8 W) =
      ∑ m ∈ tropicalTerminalMatchingSet8 r,
        pmTerm8 W (tropicalTerminalColoring8 r) m := by
  classical
  unfold tropicalTerminalRelation8
  rw [LaurentPolynomial.eval_finset_sum
    (tropicalSupportWeight8 W) (tropicalTerminalMatchingSet8 r)]
  apply Finset.sum_congr rfl
  intro m hm
  rw [LaurentPolynomial.eval_single, one_zsmul]
  exact laurentEval_tropicalMatchingLocalExponent8 hSupport
    (tropicalTerminalMatching8_supported r hm)

/-- The official EqSystem supplies all eight reconstructed terminal sources. -/
theorem tropicalTerminalRelations8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    ∀ r : Fin 8,
      (tropicalTerminalRelation8 r).Holds (tropicalSupportWeight8 W) := by
  intro r
  have hpm : pmSumN 8 3 W (tropicalTerminalColoring8 r) = 0 := by
    simpa [tropicalTerminalColoring8_not_allEqual r] using
      hEq (tropicalTerminalColoring8 r)
  have hactive :
      (∑ m ∈ tropicalTerminalMatchingSet8 r,
        pmTerm8 W (tropicalTerminalColoring8 r) m) = 0 := by
    rw [← tropicalTerminalSupportedMatchingSet8 r]
    rw [← pmSumN8_eq_sum_tropicalSupportedTerms8
      hSupport (tropicalTerminalColoring8 r)]
    exact hpm
  unfold LaurentPolynomial.Holds
  rw [eval_tropicalTerminalRelation8 hSupport]
  exact hactive

{chr(10).join(aliases)}
end

end MonochromaticQuantumGraphs.N8D3
'''


def component_data_file() -> str:
    return '''import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-!
# Common raw-source nested-face replay for terminal Component A

The historical certificate translates the complete raw right source onto the
eight-term face of the raw left source.  This support-specific structure keeps
that orientation exact while using the generic character-reduction checker.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Exact raw-source convention used by the frozen Component-A terminal data. -/
structure TropicalTerminalRawNestedFaceCertificate8
    {\u03c7 \u03ba : Type*} [Fintype \u03c7] [Fintype \u03ba]
    (chars : \u03c7 \u2192 SignedCharacterRow (Fin 144))
    (leftSource rightSource : LaurentPolynomial (Fin 144)) where
  omittedExponent : LaurentExponent (Fin 144)
  omittedCoefficient : \u2124
  omittedCoefficient_ne_zero : omittedCoefficient \u2260 0
  face : LaurentPolynomial (Fin 144)
  faceScalar : \u2124
  faceScalar_ne_zero : faceScalar \u2260 0
  faceShift : LaurentExponent (Fin 144)
  left_eq :
    leftSource = Finsupp.single omittedExponent omittedCoefficient + face
  pairingSource : LaurentPolynomial (Fin 144)
  pairingSource_eq :
    pairingSource =
      faceScalar \u2022 LaurentPolynomial.translate faceShift rightSource - face
  pairingReduction :
    CharacterReductionCertificate (\u03ba := \u03ba) chars pairingSource 0

/-- A checked raw-source nested face is incompatible with a torus point. -/
theorem false_of_tropicalTerminalRawNestedFaceCertificate8
    {\u03c7 \u03ba : Type*} [Fintype \u03c7] [Fintype \u03ba]
    (x : Fin 144 \u2192 \u2102) (hx : \u2200 i, x i \u2260 0)
    (chars : \u03c7 \u2192 SignedCharacterRow (Fin 144))
    (leftSource rightSource : LaurentPolynomial (Fin 144))
    (cert : TropicalTerminalRawNestedFaceCertificate8
      (\u03ba := \u03ba) chars leftSource rightSource)
    (hchars : \u2200 c, (chars c).Holds x)
    (hleft : leftSource.Holds x)
    (hright : rightSource.Holds x) : False := by
  have hpairing : cert.pairingSource.Holds x := by
    unfold LaurentPolynomial.Holds
    calc
      cert.pairingSource.eval x =
          (0 : LaurentPolynomial (Fin 144)).eval x :=
        eval_eq_of_characterReductionCertificate
          x hx chars cert.pairingSource 0 cert.pairingReduction hchars
      _ = 0 := LaurentPolynomial.eval_zero x
  rw [cert.pairingSource_eq] at hpairing
  have hface : cert.face.eval x = 0 := by
    unfold LaurentPolynomial.Holds at hpairing hright
    rw [LaurentPolynomial.eval_sub, LaurentPolynomial.eval_zsmul,
      LaurentPolynomial.eval_translate x hx, hright, mul_zero,
      smul_zero, zero_sub] at hpairing
    exact neg_eq_zero.mp hpairing
  unfold LaurentPolynomial.Holds at hleft
  rw [cert.left_eq, LaurentPolynomial.eval_add,
    LaurentPolynomial.eval_single, hface, add_zero] at hleft
  simp only [\u2190 Int.cast_smul_eq_zsmul \u2102, smul_eq_mul] at hleft
  have hcoefficient : (cert.omittedCoefficient : \u2102) \u2260 0 :=
    Int.cast_ne_zero.mpr cert.omittedCoefficient_ne_zero
  have homitted : laurentEval x cert.omittedExponent \u2260 0 :=
    laurentEval_ne_zero x hx cert.omittedExponent
  exact (mul_eq_zero.mp hleft).elim hcoefficient homitted

end

end MonochromaticQuantumGraphs.N8D3
'''


def source_relation_name(official_index: int) -> str:
    return f"tropicalTerminalRelation{official_index}_8"


def source_explicit_theorem(official_index: int) -> str:
    return f"tropicalTerminalRelation{official_index}_8_explicit"


def family_module_name(config: dict[str, Any], suffix: str = "") -> str:
    family = "Pair1213_874" if config["left_row"] == 874 else "Pair437_65"
    module = (
        "MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8."
        + family
    )
    return module if not suffix else module + "." + suffix


def family_relative_dir(config: dict[str, Any]) -> Path:
    family = "Pair1213_874" if config["left_row"] == 874 else "Pair437_65"
    return Path(family)


def component_leaf_file(
    imports: Sequence[str], title: str, body: str
) -> str:
    import_text = "\n".join(f"import {module}" for module in imports)
    return f'''{import_text}

/-! {title} -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

{body.rstrip()}

end

end MonochromaticQuantumGraphs.N8D3
'''


def split_reduction_artifacts(
    config: dict[str, Any],
    label: str,
    basis_count: int,
    row_name: str,
    source_name: str,
    target_name: str,
    reduction: dict[str, Any],
    *,
    normalized_unit: int = 0,
    source_explicit: str = "",
) -> dict[Path, str]:
    """Emit one bounded module per use and per aggregate equality."""
    family_dir = family_relative_dir(config)
    data_module = family_module_name(config, "Data")
    uses = reduction["use"]
    if not isinstance(uses, list) or not uses:
        fail(f"{config['json_name']} {label} reduction has no uses")
    use_count = len(uses)
    source_use_rows = [
        {
            "coefficient": int(use["coefficient"]),
            "exponent": use["sourceExponent"],
        }
        for use in uses
    ]
    target_use_rows = [
        {
            "coefficient": (
                int(use["coefficient"])
                if int(use["reduction"]["signExponent"]) % 2 == 0
                else -int(use["coefficient"])
            ),
            "exponent": use["targetExponent"],
        }
        for use in uses
    ]
    source_lhs = sparse_polynomial_map(reduction["source_eq"]["lhs"])
    source_rhs = sparse_polynomial_map(reduction["source_eq"]["rhs"])
    target_lhs = sparse_polynomial_map(reduction["target_eq"]["lhs"])
    target_rhs_checked = sparse_polynomial_map(reduction["target_eq"]["rhs"])
    if sparse_polynomial_map(source_use_rows) != source_lhs or source_lhs != source_rhs:
        fail(f"{config['json_name']} {label} source aggregate changed")
    if sparse_polynomial_map(target_use_rows) != target_lhs or target_lhs != target_rhs_checked:
        fail(f"{config['json_name']} {label} target aggregate changed")
    prefix = f"{config['stem']}{label}Reduction"
    use_vector_name = f"{prefix}Use8"
    source_eq_name = f"{prefix}_source_eq"
    target_eq_name = f"{prefix}_target_eq"
    certificate_name = f"{config['stem']}{label}Reduction8"
    artifacts: dict[Path, str] = {}
    use_names = []

    for index, use in enumerate(uses):
        monomial_name = f"{prefix}Monomial{index:03}8"
        use_name = f"{prefix}Use{index:03}8"
        use_names.append(use_name)
        reduction_payload = use["reduction"]
        implication = implication_expr(
            reduction_payload["implication"], basis_count, indent="    "
        )
        source_exponent = exponent_expr(use["sourceExponent"])
        target_exponent = exponent_expr(use["targetExponent"])
        coefficient = lean_int(int(use["coefficient"]))
        sign_exponent = lean_int(int(reduction_payload["signExponent"]))
        body = f'''/-- Bounded monomial implication {index} for the {label} reduction. -/
def {monomial_name} :
    MonomialReductionCertificate {row_name}
      {source_exponent} {target_exponent} :=
{{ signExponent := {sign_exponent}
  implication :=
    {implication}
}}

/-- The exact coefficient and exponent payload of use {index}. -/
def {use_name} : CharacterReductionUse {row_name} :=
{{ coefficient := {coefficient}
  sourceExponent := {source_exponent}
  targetExponent := {target_exponent}
  reduction := {monomial_name}
}}

@[simp] theorem {use_name}_coefficient :
    {use_name}.coefficient = {coefficient} := rfl

@[simp] theorem {use_name}_sourceExponent :
    {use_name}.sourceExponent = {source_exponent} := rfl

@[simp] theorem {use_name}_targetExponent :
    {use_name}.targetExponent = {target_exponent} := rfl

@[simp] theorem {use_name}_signExponent :
    {use_name}.reduction.signExponent = {sign_exponent} := rfl
'''
        artifacts[
            COMPONENT_DIR / family_dir / label / f"Use{index:03}.lean"
        ] = component_leaf_file(
            [data_module],
            f"Bounded {config['title']} {label} reduction use {index}",
            body,
        )

    use_imports = [
        family_module_name(config, f"{label}.Use{index:03}")
        for index in range(use_count)
    ]
    use_vector = vector_expr(use_names, per_line=3)
    uses_body = f'''/-- Decision-free collection of the bounded {label} uses. -/
def {use_vector_name} : Fin {use_count} → CharacterReductionUse {row_name} :=
  {use_vector}
'''
    artifacts[COMPONENT_DIR / family_dir / label / "Uses.lean"] = component_leaf_file(
        use_imports,
        f"Collected {config['title']} {label} reduction uses",
        uses_body,
    )

    source_proof_lines = []
    source_simp_defs = [use_vector_name, "Fin.sum_univ_succ"]
    if source_explicit:
        source_proof_lines.append(f"  rw [{source_explicit}]")
        source_simp_defs.append("tropicalTerminalExplicitRelation8")
    else:
        source_simp_defs.append(source_name)
    source_proof_lines.extend(
        [
            "  simp [" + ", ".join(source_simp_defs) + "]",
            "  <;> abel",
        ]
    )
    source_body = f'''/-- Structural reconstruction of the {label} reduction source. -/
theorem {source_eq_name} :
    (∑ k : Fin {use_count},
      Finsupp.single ({use_vector_name} k).sourceExponent
        ({use_vector_name} k).coefficient) = {source_name} := by
{chr(10).join(source_proof_lines)}
'''
    artifacts[
        COMPONENT_DIR / family_dir / label / "SourceEq.lean"
    ] = component_leaf_file(
        [family_module_name(config, f"{label}.Uses")],
        f"Structural {config['title']} {label} source equality",
        source_body,
    )

    target_rhs = (
        f"({lean_int(normalized_unit)} : ℤ) • {target_name}"
        if normalized_unit
        else target_name
    )
    target_simp_defs = [
        use_vector_name,
        "Fin.sum_univ_succ",
        "signedCoefficient",
    ]
    if target_name != "0":
        target_simp_defs.append(target_name)
    target_body = f'''/-- Structural reconstruction of the {label} reduction target. -/
theorem {target_eq_name} :
    (∑ k : Fin {use_count},
      Finsupp.single ({use_vector_name} k).targetExponent
        (signedCoefficient ({use_vector_name} k).reduction.signExponent
          ({use_vector_name} k).coefficient)) = {target_rhs} := by
  simp [{", ".join(target_simp_defs)}]
  <;> abel
'''
    artifacts[
        COMPONENT_DIR / family_dir / label / "TargetEq.lean"
    ] = component_leaf_file(
        [family_module_name(config, f"{label}.Uses")],
        f"Structural {config['title']} {label} target equality",
        target_body,
    )

    if normalized_unit:
        certificate_body = f'''/-- Frozen normalized {label} reduction. -/
def {certificate_name} :
    NormalizedCharacterReductionCertificate (κ := Fin {use_count})
      {row_name} {source_name} {target_name} :=
{{ unit := {lean_int(normalized_unit)}
  unit_ne_zero := by norm_num
  reduction :=
  {{ use := {use_vector_name}
    source_eq := {source_eq_name}
    target_eq := {target_eq_name}
  }}
}}
'''
    else:
        certificate_body = f'''/-- Frozen exact {label} character reduction. -/
def {certificate_name} :
    CharacterReductionCertificate (κ := Fin {use_count})
      {row_name} {source_name} {target_name} :=
{{ use := {use_vector_name}
  source_eq := {source_eq_name}
  target_eq := {target_eq_name}
}}
'''
    artifacts[
        COMPONENT_DIR / family_dir / f"{label}.lean"
    ] = component_leaf_file(
        [
            family_module_name(config, f"{label}.SourceEq"),
            family_module_name(config, f"{label}.TargetEq"),
        ],
        f"Collected {config['title']} {label} reduction certificate",
        certificate_body,
    )
    return artifacts


def split_family_artifacts(
    semantics: dict[str, Any], config: dict[str, Any]
) -> dict[Path, str]:
    """Emit one bounded proof tree for a frozen Component-A pair."""
    family = semantics["historical_cover_family_certificates"][config["json_name"]]
    nested = family["nested_face_contradiction"]
    basis = family["initial_basis_sources"]
    basis_count = len(basis)
    raw_sources: list[int] = []
    source_values: list[str] = []
    expected_characters: list[str] = []
    for expected_index, row in enumerate(basis):
        if row.get("character_index") != expected_index:
            fail(f"{config['json_name']} basis ordering changed")
        sources = row.get("sources")
        if not isinstance(sources, list) or len(sources) != 1:
            fail(f"{config['json_name']} basis source is not unique")
        source = sources[0]
        if source.get("kind") == "component_base_character":
            source_values.append(f".base {int(source['base_character_index'])}")
        elif source.get("kind") == "raw_factor_vertex":
            if int(source["class_id"]) != config["class_id"]:
                fail(f"{config['json_name']} raw basis source has the wrong class")
            raw_position = len(raw_sources)
            raw_sources.append(int(source["raw_factor_vertex_id"]))
            source_values.append(f".raw {raw_position}")
        else:
            fail(f"{config['json_name']} has an unknown basis source")
        character = row["character"]
        expected_characters.append(
            "{ exponent := "
            + exponent_expr(character["row"])
            + ", signExponent := "
            + lean_int(int(character["bit"]))
            + " }"
        )
    if source_values[:5] != [f".base {i}" for i in range(5)]:
        fail(f"{config['json_name']} does not begin with the five base characters")
    raw_count = len(raw_sources)
    if raw_count != basis_count - 5 or raw_count == 0:
        fail(f"{config['json_name']} raw basis source count changed")

    stem = config["stem"]
    family_dir = family_relative_dir(config)
    shared_data_module = (
        "MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Data"
    )
    data_module = family_module_name(config, "Data")
    raw_id_name = f"{stem}RawFactorId8"
    source_name = f"{stem}BasisSource8"
    row_name = f"{stem}BasisRow8"
    frozen_row_name = f"{stem}FrozenBasisRow8"
    left_name = source_relation_name(config["left_row"])
    right_name = source_relation_name(config["right_row"])
    left_target_name = f"{stem}LeftReduced8"
    right_target_name = f"{stem}RightReduced8"
    full_target_name = f"{stem}FullDifferenceReduced8"
    face_name = f"{stem}LeftFace8"
    pairing_source_name = f"{stem}PairingSource8"
    full_source_name = f"{stem}FullDifferenceSource8"
    left_target = nested["left_relation_reduction"]["provenance"][
        "normalized_target"
    ]
    right_target = nested["right_relation_reduction"]["provenance"][
        "normalized_target"
    ]
    full_target = nested["left_minus_translated_right_reduction"]["provenance"][
        "normalized_target"
    ]
    pairing_source = nested[
        "translated_right_minus_left_face_reduces_to_zero"
    ]["reduction"]["source_eq"]["rhs"]
    full_source = nested["left_minus_translated_right_reduction"]["reduction"][
        "source_eq"
    ]["rhs"]
    left_source_rows = polynomial_rows(nested["left_relation_source"]["relation"])
    right_source_rows = polynomial_rows(nested["right_relation_source"]["relation"])
    omitted_index = int(nested["omitted_source_term_index"])
    face_rows = [
        row for index, row in enumerate(left_source_rows) if index != omitted_index
    ]
    omitted_exponent = nested["omitted_exponent"]
    omitted_coefficient = int(nested["omitted_coefficient"][0])
    shift = nested["right_to_left_face_translation_shift"]
    scalar = int(nested["face_integer_scalar"])
    if len(right_source_rows) != 8:
        fail(f"{config['json_name']} right source is not eight terms")
    reduction_keys = (
        "left_relation_reduction",
        "right_relation_reduction",
        "translated_right_minus_left_face_reduces_to_zero",
        "left_minus_translated_right_reduction",
    )
    for key in reduction_keys:
        wrapper = nested[key]
        if wrapper.get("unit_ne_zero") is not True or int(wrapper["unit"]) == 0:
            fail(f"{config['json_name']} {key} normalization unit is zero")

    left_map = sparse_polynomial_map(left_source_rows)
    right_map = sparse_polynomial_map(right_source_rows)
    face_map = sparse_polynomial_map(face_rows)
    pairing_map = sparse_polynomial_map(pairing_source)
    full_map = sparse_polynomial_map(full_source)
    translated_right_map = translate_polynomial_map(right_map, shift)
    omitted_row_map = sparse_polynomial_map([left_source_rows[omitted_index]])
    omitted_expected_map = sparse_polynomial_map(
        [{"coefficient": omitted_coefficient, "exponent": omitted_exponent}]
    )
    if omitted_row_map != omitted_expected_map:
        fail(f"{config['json_name']} omitted monomial payload changed")
    if left_map != add_polynomial_maps((1, omitted_expected_map), (1, face_map)):
        fail(f"{config['json_name']} left face decomposition changed")
    if pairing_map != add_polynomial_maps(
        (scalar, translated_right_map), (-1, face_map)
    ):
        fail(f"{config['json_name']} pairing raw-source identity changed")
    if full_map != add_polynomial_maps(
        (1, left_map), (-scalar, translated_right_map)
    ):
        fail(f"{config['json_name']} full raw-source identity changed")

    raw_ids = vector_expr([str(value) for value in raw_sources], per_line=10)
    basis_sources = vector_expr(source_values, per_line=6)
    expected_rows = vector_expr(expected_characters, per_line=1)
    data_body = f'''/-- Raw-factor IDs appearing in the frozen basis provenance. -/
def {raw_id_name} : Fin {raw_count} → Fin 59 :=
  {raw_ids}

/-- Explicit base/raw source tag of every frozen normalized basis row. -/
def {source_name} :
    Fin {basis_count} → FactorBasisSource (Fin 5) (Fin {raw_count}) :=
  {basis_sources}

/-- Interpret the basis provenance through the official Factor-A rows. -/
def {row_name} : Fin {basis_count} → SignedCharacterRow (Fin 144) :=
  fun i ↦ ({source_name} i).row
    tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 ({raw_id_name} r))

/-- Frozen signed rows, separated from their bounded equality replays. -/
def {frozen_row_name} : Fin {basis_count} → SignedCharacterRow (Fin 144) :=
  {expected_rows}

/-- Frozen normalized left target. -/
def {left_target_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(left_target)}

/-- Frozen normalized right target. -/
def {right_target_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(right_target)}

/-- Frozen one-monomial target of the full source subtraction. -/
def {full_target_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(full_target)}

/-- Raw left-source face after omitting source term {omitted_index}. -/
def {face_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(face_rows)}

/-- Raw translated-right-minus-left-face polynomial. -/
def {pairing_source_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(pairing_source)}

/-- Raw left-minus-translated-right polynomial. -/
def {full_source_name} : LaurentPolynomial (Fin 144) :=
  {polynomial_expr(full_source)}
'''
    artifacts: dict[Path, str] = {
        COMPONENT_DIR / family_dir / "Data.lean": component_leaf_file(
            [shared_data_module],
            f"Frozen Component-A terminal data for {config['title']}",
            data_body,
        )
    }

    basis_row_theorems = []
    raw_mem_theorems = []
    for index in range(basis_count):
        row_theorem = f"{row_name}_eq_frozen_row{index:03}"
        basis_row_theorems.append(row_theorem)
        raw_body = ""
        if index >= 5:
            raw_position = index - 5
            raw_theorem = f"{raw_id_name}_mem_row{raw_position:03}"
            raw_mem_theorems.append(raw_theorem)
            raw_body = f'''

/-- Bounded class-membership replay for raw basis row {raw_position}. -/
theorem {raw_theorem} :
    {raw_id_name} ({raw_position} : Fin {raw_count}) ∈
      tropicalComponentAClassMembers8 {config["class_id"]} := by
  decide
'''
        basis_body = f'''/-- Bounded frozen-basis replay for row {index}. -/
theorem {row_theorem} :
    {row_name} ({index} : Fin {basis_count}) =
      {frozen_row_name} ({index} : Fin {basis_count}) := by
  apply SignedCharacterRow.ext <;> decide{raw_body}
'''
        artifacts[
            COMPONENT_DIR / family_dir / "Basis" / f"Row{index:03}.lean"
        ] = component_leaf_file(
            [data_module],
            f"Bounded {config['title']} frozen basis row {index}",
            basis_body,
        )

    basis_imports = [
        family_module_name(config, f"Basis.Row{index:03}")
        for index in range(basis_count)
    ]
    basis_dispatch = "\n".join(
        f"  · exact {theorem}" for theorem in basis_row_theorems
    )
    raw_dispatch = "\n".join(
        f"  · exact {theorem}" for theorem in raw_mem_theorems
    )
    basis_body = f'''/-- Decision-free collection of all frozen basis rows. -/
theorem {row_name}_eq_frozen (i : Fin {basis_count}) :
    {row_name} i = {expected_rows} i := by
  change {row_name} i = {frozen_row_name} i
  fin_cases i
{basis_dispatch}

/-- Every provenance-tagged raw row is a member of class {config["class_id"]}. -/
theorem {raw_id_name}_mem (r : Fin {raw_count}) :
    {raw_id_name} r ∈ tropicalComponentAClassMembers8 {config["class_id"]} := by
  fin_cases r
{raw_dispatch}

/-- An all-zero class supplies exactly the declared terminal basis. -/
theorem {row_name}_holds
    {{W : WeightsN 8 3 ℂ}}
    (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) {config["class_id"]}) :
    ∀ i, ({row_name} i).Holds (tropicalSupportWeight8 W) := by
  have hraw : ∀ r : Fin {raw_count},
      (tropicalComponentARawFactor8 ({raw_id_name} r)).Holds
        (tropicalSupportWeight8 W) := by
    intro r
    exact rawCharacter_holds_of_allZeroInClass
      (tropicalSupportWeight8 W) tropicalComponentAClassMembers8
      tropicalComponentARawFactor8 hzero ({raw_id_name}_mem r)
  intro i
  exact FactorBasisSource.row_holds
    (tropicalSupportWeight8 W) tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 ({raw_id_name} r))
    hChars hraw ({source_name} i)
'''
    artifacts[COMPONENT_DIR / family_dir / "Basis.lean"] = component_leaf_file(
        basis_imports,
        f"Decision-free {config['title']} basis collector",
        basis_body,
    )

    reduction_specs = [
        (
            "Left",
            left_name,
            left_target_name,
            nested["left_relation_reduction"]["reduction"],
            int(nested["left_relation_reduction"]["unit"]),
            source_explicit_theorem(config["left_row"]),
        ),
        (
            "Right",
            right_name,
            right_target_name,
            nested["right_relation_reduction"]["reduction"],
            int(nested["right_relation_reduction"]["unit"]),
            source_explicit_theorem(config["right_row"]),
        ),
        (
            "Pairing",
            pairing_source_name,
            "0",
            nested["translated_right_minus_left_face_reduces_to_zero"][
                "reduction"
            ],
            0,
            "",
        ),
        (
            "FullDifference",
            full_source_name,
            full_target_name,
            nested["left_minus_translated_right_reduction"]["reduction"],
            int(nested["left_minus_translated_right_reduction"]["unit"]),
            "",
        ),
    ]
    for label, reduction_source, reduction_target, reduction, unit, explicit in reduction_specs:
        artifacts.update(
            split_reduction_artifacts(
                config,
                label,
                basis_count,
                row_name,
                reduction_source,
                reduction_target,
                reduction,
                normalized_unit=unit,
                source_explicit=explicit,
            )
        )

    translated_imports = []
    for index, row in enumerate(right_source_rows):
        theorem_name = f"{stem}TranslatedRightExponent8_term{index:03}"
        translated_imports.append(
            family_module_name(config, f"Algebra.TranslatedRight.Term{index:03}")
        )
        translated_exponent = add_exponent_rows(shift, row["exponent"])
        translated_body = f'''/-- Bounded shifted-exponent identity for right-source term {index}. -/
@[simp] theorem {theorem_name} :
    {exponent_expr(shift)} + {exponent_expr(row["exponent"])} =
      {exponent_expr(translated_exponent)} := by
  abel
'''
        artifacts[
            COMPONENT_DIR
            / family_dir
            / "Algebra"
            / "TranslatedRight"
            / f"Term{index:03}.lean"
        ] = component_leaf_file(
            [data_module],
            f"Bounded {config['title']} shifted exponent {index}",
            translated_body,
        )
    artifacts[
        COMPONENT_DIR / family_dir / "Algebra" / "TranslatedRight.lean"
    ] = component_leaf_file(
        translated_imports,
        f"Decision-free {config['title']} shifted-exponent collector",
        "/-- All eight shifted-exponent leaves are available from this module. -/",
    )

    algebra_import = family_module_name(config, "Algebra.TranslatedRight")
    pairing_eq_name = f"{pairing_source_name}_eq"
    pairing_eq_body = f'''/-- Structural raw-source interpretation of the pairing polynomial. -/
theorem {pairing_eq_name} :
    {pairing_source_name} =
      ({scalar} : ℤ) • LaurentPolynomial.translate {exponent_expr(shift)}
        {right_name} - {face_name} := by
  rw [{source_explicit_theorem(config["right_row"])}]
  simp [tropicalTerminalExplicitRelation8, {pairing_source_name}, {face_name},
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]
  <;> abel
'''
    artifacts[
        COMPONENT_DIR / family_dir / "Algebra" / "PairingSourceEq.lean"
    ] = component_leaf_file(
        [algebra_import],
        f"Structural {config['title']} pairing-source equality",
        pairing_eq_body,
    )

    full_eq_name = f"{full_source_name}_eq"
    full_eq_body = f'''/-- Structural raw-source interpretation of the full subtraction. -/
theorem {full_eq_name} :
    {full_source_name} = {left_name} -
      ({scalar} : ℤ) • LaurentPolynomial.translate {exponent_expr(shift)}
        {right_name} := by
  rw [{source_explicit_theorem(config["left_row"])},
    {source_explicit_theorem(config["right_row"])}]
  simp [tropicalTerminalExplicitRelation8, {full_source_name},
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]
  <;> abel
'''
    artifacts[
        COMPONENT_DIR / family_dir / "Algebra" / "FullDifferenceSourceEq.lean"
    ] = component_leaf_file(
        [algebra_import],
        f"Structural {config['title']} full-source equality",
        full_eq_body,
    )

    left_eq_name = f"{stem}LeftSource8_eq"
    left_eq_body = f'''/-- Structural decomposition into the omitted monomial and left face. -/
theorem {left_eq_name} :
    {left_name} =
      Finsupp.single {exponent_expr(omitted_exponent)}
        ({lean_int(omitted_coefficient)} : ℤ) + {face_name} := by
  rw [{source_explicit_theorem(config["left_row"])}]
  simp [tropicalTerminalExplicitRelation8, {face_name}]
  <;> abel
'''
    artifacts[
        COMPONENT_DIR / family_dir / "Algebra" / "LeftSourceEq.lean"
    ] = component_leaf_file(
        [data_module],
        f"Structural {config['title']} omitted-face equality",
        left_eq_body,
    )

    artifacts[COMPONENT_DIR / family_dir / "Algebra.lean"] = component_leaf_file(
        [
            family_module_name(config, "Algebra.PairingSourceEq"),
            family_module_name(config, "Algebra.FullDifferenceSourceEq"),
            family_module_name(config, "Algebra.LeftSourceEq"),
        ],
        f"Decision-free {config['title']} algebra collector",
        "/-- The three structural polynomial identities are exported here. -/",
    )

    pair_use_count = len(
        nested["translated_right_minus_left_face_reduces_to_zero"]["reduction"][
            "use"
        ]
    )
    pair_body = f'''/-- Complete frozen raw-source nested-face certificate. -/
def {stem}NestedFace8 :
    TropicalTerminalRawNestedFaceCertificate8 (κ := Fin {pair_use_count})
      {row_name} {left_name} {right_name} :=
{{ omittedExponent := {exponent_expr(omitted_exponent)}
  omittedCoefficient := {lean_int(omitted_coefficient)}
  omittedCoefficient_ne_zero := by norm_num
  face := {face_name}
  faceScalar := {lean_int(scalar)}
  faceScalar_ne_zero := by norm_num
  faceShift := {exponent_expr(shift)}
  left_eq := {left_eq_name}
  pairingSource := {pairing_source_name}
  pairingSource_eq := {pairing_eq_name}
  pairingReduction := {stem}PairingReduction8
}}

/-- The selected all-zero class triggers this historical nested-face family. -/
theorem {stem}_impossible8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) {config["class_id"]}) : False := by
  exact false_of_tropicalTerminalRawNestedFaceCertificate8
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    {row_name} {left_name} {right_name} {stem}NestedFace8
    ({row_name}_holds hChars hzero)
    (tropicalTerminalRelation{config["left_row"]}_8_hold hSupport hEq)
    (tropicalTerminalRelation{config["right_row"]}_8_hold hSupport hEq)
'''
    pair_imports = [
        family_module_name(config, "Basis"),
        family_module_name(config, "Left"),
        family_module_name(config, "Right"),
        family_module_name(config, "Pairing"),
        family_module_name(config, "FullDifference"),
        family_module_name(config, "Algebra"),
    ]
    pair_filename = "Pair1213_874.lean" if config["left_row"] == 874 else "Pair437_65.lean"
    artifacts[COMPONENT_DIR / pair_filename] = component_leaf_file(
        pair_imports,
        f"Frozen Component-A terminal family {config['title']}",
        pair_body,
    )
    return artifacts


def component_main_file() -> str:
    return '''import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65

/-!
# Complete 27+27 terminal replay for Component A

The exact 54-row factor cover is retained.  Its checked `{2,7}` exclusive-or
dispatches each listed row to the corresponding historical nested-face pair.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Component A is impossible on the canonical support under EqSystem. -/
theorem tropicalComponentACharacters_impossible8
    {W : WeightsN 8 3 \u2102} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) : False := by
  obtain \u27e8i, hcover\u27e9 :=
    tropicalComponentA_allZero_class_cover8 hSupport hEq hChars
  rcases componentACover8_two_xor_seven i with h2 | h7
  \u00b7 exact terminalA1213_874_impossible8 hSupport hEq hChars
      (hcover 2 h2.1)
  \u00b7 exact terminalA437_65_impossible8 hSupport hEq hChars
      (hcover 7 h7.1)

end

end MonochromaticQuantumGraphs.N8D3
'''


def generated_artifacts(
    semantics: dict[str, Any], official_payloads: dict[int, list[dict[str, Any]]]
) -> dict[Path, str]:
    artifacts = {
        RELATIONS_DIR / "Data.lean": relation_data_file(official_payloads),
        RELATIONS_DIR / "Shard0.lean": relation_shard_file(0, official_payloads),
        RELATIONS_DIR / "Shard1.lean": relation_shard_file(1, official_payloads),
        RELATIONS_MAIN: relation_main_file(official_payloads),
        COMPONENT_DIR / "Data.lean": component_data_file(),
        COMPONENT_MAIN: component_main_file(),
    }
    for config in FAMILY_CONFIGS:
        artifacts.update(split_family_artifacts(semantics, config))
    return artifacts


def write_or_check(artifacts: dict[Path, str], check: bool) -> None:
    mismatches = []
    for path, text in sorted(artifacts.items(), key=lambda item: str(item[0])):
        raw = text.encode()
        if check:
            if not path.exists() or path.read_bytes() != raw:
                mismatches.append(str(path.relative_to(ROOT)))
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(raw)
    if mismatches:
        fail("generated terminal Lean files differ: " + ", ".join(mismatches))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check", action="store_true", help="byte-compare checked-in generated files"
    )
    args = parser.parse_args()

    semantics = checked_json(SEMANTICS_PATH, SEMANTICS_SHA256)
    support = read_support()
    official_payloads = official_relation_payloads(support)
    validate_semantics(semantics, official_payloads)
    artifacts = generated_artifacts(semantics, official_payloads)
    write_or_check(artifacts, args.check)
    action = "checked" if args.check else "wrote"
    print(
        f"{action} Component-A terminal Lean: official=8 covers=27+27 "
        f"families=2 files={len(artifacts)}"
    )
    for path, text in sorted(artifacts.items(), key=lambda item: str(item[0])):
        print(f"{sha256(text.encode())}  {path.relative_to(ROOT)}")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Generate the kernel-replayed Component-B tropical factor semantics.

The input JSON is a finite certificate payload, not a proof oracle.  This
translator pins the complete input by SHA-256, validates its exact dimensions
and cross references, and emits Lean declarations which replay every Laurent
polynomial equality, signed-character implication, shifted combination,
factorization, false-twin membership, and complete-bipartite quotient claim.

The output is intentionally highly sharded.  In particular, every normalized
source reduction, quotient row, and factor edge gets its own module, while the
small equality obligations inside those modules are separate declarations.
No generated declaration has a heartbeat limit above ten million.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import tempfile
from typing import Any, Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
INPUT = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics/"
    "component_B_factor_semantics.json"
)
OUTPUT = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorB8"
UMBRELLA = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorB8.lean"

INPUT_SHA256 = "0a7f6e69bbfbec83fcfac348d399c87430f33af9361950ebc38f4622af0dc6cb"
SCHEMA_VERSION = 2
BASE_CHARACTER_COUNT = 2
SOURCE_COUNT = 147
QUOTIENT_COUNT = 88
RAW_VERTEX_COUNT = 49
RAW_EDGE_COUNT = 59
CLASS_COUNT = 23
COVER_COUNT = 288

# This is the already checked class graph in TropicalNonattainmentComponentB8.
EXPECTED_CLASS_EDGES = {
    (0, 5), (0, 19), (0, 20), (0, 21),
    (1, 5), (1, 14), (1, 15), (1, 16),
    (2, 6), (2, 18), (3, 6),
    (4, 7), (4, 13), (7, 17), (8, 22),
    (9, 14), (9, 16), (10, 14),
    (11, 19), (11, 21), (12, 19),
}

EXPECTED_BASE_CHARACTERS = (
    (((69, 1), (70, -1), (127, -1), (130, 1)), 0),
    (((75, 1), (76, -1), (127, -1), (130, 1)), 0),
)


def fail(message: str) -> None:
    raise SystemExit(message)


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def integer(value: Any, context: str) -> int:
    if isinstance(value, bool) or not isinstance(value, int):
        fail(f"{context} is not an integer: {value!r}")
    return value


def fraction(value: Any, context: str) -> int:
    if not isinstance(value, list) or len(value) != 2:
        fail(f"{context} is not a rational pair")
    numerator = integer(value[0], f"{context} numerator")
    denominator = integer(value[1], f"{context} denominator")
    if denominator != 1:
        fail(f"{context} is not integral: {value!r}")
    return numerator


def check_index(value: Any, bound: int, context: str) -> int:
    value = integer(value, context)
    if not 0 <= value < bound:
        fail(f"{context} outside Fin {bound}: {value}")
    return value


def check_sparse_exponent(rows: Any, context: str) -> list[dict[str, int]]:
    if not isinstance(rows, list):
        fail(f"{context} is not a sparse exponent list")
    result: list[dict[str, int]] = []
    seen: set[int] = set()
    previous = -1
    for position, row in enumerate(rows):
        if not isinstance(row, dict):
            fail(f"{context}[{position}] is not an object")
        local = check_index(row.get("local"), 144, f"{context}[{position}].local")
        exponent = integer(row.get("exp"), f"{context}[{position}].exp")
        global_coordinate = integer(
            row.get("global"), f"{context}[{position}].global"
        )
        if exponent == 0:
            fail(f"{context}[{position}] stores a zero exponent")
        if local in seen or local <= previous:
            fail(f"{context} is not strictly sorted by distinct local coordinate")
        seen.add(local)
        previous = local
        result.append(
            {"local": local, "global": global_coordinate, "exp": exponent}
        )
    return result


def polynomial_entries(payload: Any, context: str) -> list[tuple[int, list[dict[str, int]]]]:
    if not isinstance(payload, list):
        fail(f"{context} is not a polynomial list")
    result: list[tuple[int, list[dict[str, int]]]] = []
    for position, term in enumerate(payload):
        if not isinstance(term, dict):
            fail(f"{context}[{position}] is not an object")
        if "coefficient" in term:
            coefficient = integer(
                term["coefficient"], f"{context}[{position}].coefficient"
            )
            exponent_rows = term.get("exponent")
        else:
            coefficient = fraction(term.get("coef"), f"{context}[{position}].coef")
            exponent_rows = term.get("monomial")
        if coefficient == 0:
            fail(f"{context}[{position}] has zero coefficient")
        result.append(
            (
                coefficient,
                check_sparse_exponent(exponent_rows, f"{context}[{position}].exponent"),
            )
        )
    return result


def canonical_polynomial(payload: Any, context: str) -> tuple[tuple[tuple[tuple[int, int], ...], int], ...]:
    aggregate: dict[tuple[tuple[int, int], ...], int] = {}
    for coefficient, exponent_rows in polynomial_entries(payload, context):
        exponent = tuple((row["local"], row["exp"]) for row in exponent_rows)
        aggregate[exponent] = aggregate.get(exponent, 0) + coefficient
    return tuple(sorted((exponent, coefficient) for exponent, coefficient in aggregate.items() if coefficient))


def check_polynomial_equality(payload: Any, context: str) -> None:
    if not isinstance(payload, dict) or set(payload) != {"lhs", "rhs"}:
        fail(f"{context} is not an explicit two-sided polynomial equality")
    if canonical_polynomial(payload["lhs"], f"{context}.lhs") != canonical_polynomial(
        payload["rhs"], f"{context}.rhs"
    ):
        fail(f"{context} is unequal even before Lean replay")


def check_row_equality(payload: Any, context: str) -> None:
    if not isinstance(payload, dict) or set(payload) != {"lhs", "rhs"}:
        fail(f"{context} is not an explicit signed-row equality")
    normalized = []
    for side in ("lhs", "rhs"):
        row = payload[side]
        if not isinstance(row, dict):
            fail(f"{context}.{side} is not an object")
        normalized.append(
            (
                tuple(
                    (item["local"], item["exp"])
                    for item in check_sparse_exponent(
                        row.get("exponent"), f"{context}.{side}.exponent"
                    )
                ),
                integer(row.get("signExponent"), f"{context}.{side}.signExponent"),
            )
        )
    if normalized[0] != normalized[1]:
        fail(f"{context} is unequal even before Lean replay")


def check_reduction(reduction: Any, use_count: int, basis_count: int, context: str) -> None:
    if not isinstance(reduction, dict):
        fail(f"{context} is not a CharacterReductionCertificate object")
    uses = reduction.get("use")
    if not isinstance(uses, list) or len(uses) != use_count:
        fail(f"{context}.use count changed")
    for use_index, use in enumerate(uses):
        use_context = f"{context}.use[{use_index}]"
        integer(use.get("coefficient"), f"{use_context}.coefficient")
        check_sparse_exponent(use.get("sourceExponent"), f"{use_context}.sourceExponent")
        check_sparse_exponent(use.get("targetExponent"), f"{use_context}.targetExponent")
        monomial = use.get("reduction")
        integer(monomial.get("signExponent"), f"{use_context}.signExponent")
        implication = monomial.get("implication")
        coeff = implication.get("coeff")
        if not isinstance(coeff, list) or len(coeff) != basis_count + 1:
            fail(f"{use_context}.implication coefficient count changed")
        for coefficient_index, coefficient in enumerate(coeff):
            integer(coefficient, f"{use_context}.implication.coeff[{coefficient_index}]")
        check_row_equality(
            implication.get("combination_eq"),
            f"{use_context}.implication.combination_eq",
        )
    check_polynomial_equality(reduction.get("source_eq"), f"{context}.source_eq")
    check_polynomial_equality(reduction.get("target_eq"), f"{context}.target_eq")


def normalized_certificate(payload: Any, use_count: int, context: str) -> None:
    if not isinstance(payload, dict):
        fail(f"{context} is not a normalized certificate")
    unit = integer(payload.get("unit"), f"{context}.unit")
    if unit == 0 or payload.get("unit_ne_zero") is not True:
        fail(f"{context} has an invalid normalization unit")
    provenance = payload.get("provenance")
    if provenance.get("basis_character_count") != BASE_CHARACTER_COUNT:
        fail(f"{context} basis character count changed")
    polynomial_entries(provenance.get("normalized_target"), f"{context}.normalized_target")
    check_reduction(
        payload.get("reduction"), use_count, BASE_CHARACTER_COUNT,
        f"{context}.reduction",
    )


def factor_certificate(payload: Any, context: str) -> None:
    if not isinstance(payload, dict):
        fail(f"{context} is not a factor certificate")
    unit = integer(payload.get("unit"), f"{context}.unit")
    if unit == 0 or payload.get("unit_ne_zero") is not True:
        fail(f"{context} has an invalid factor unit")
    check_sparse_exponent(payload.get("shift"), f"{context}.shift")
    provenance = payload.get("provenance")
    if provenance.get("basis_character_count") != BASE_CHARACTER_COUNT:
        fail(f"{context} basis count changed")
    check_reduction(
        payload.get("reduction"), 4, BASE_CHARACTER_COUNT,
        f"{context}.reduction",
    )


def load_and_validate(path: Path) -> dict[str, Any]:
    actual = digest(path)
    if actual != INPUT_SHA256:
        fail(f"Component-B factor JSON SHA-256 mismatch: {actual} != {INPUT_SHA256}")
    data = json.loads(path.read_text())
    if data.get("schema_version") != SCHEMA_VERSION or data.get("component") != "B":
        fail("Component-B factor schema identity changed")
    pipeline = data.get("pipeline", {})
    if pipeline.get("retained_relation_count") != 560:
        fail("retained relation count changed")
    if pipeline.get("factor_input_count") != 648:
        fail("factor input count changed")
    if pipeline.get("unused_second_overlap_relations_in_factor_input") != 0:
        fail("the unused second overlap leaked into the factor input")
    if len(data.get("base_characters", [])) != BASE_CHARACTER_COUNT:
        fail("Component-B base-character count changed")
    actual_base_characters = tuple(
        (
            tuple(
                (entry["local"], entry["exp"])
                for entry in check_sparse_exponent(
                    row.get("row"), f"base character {index}",
                )
            ),
            integer(row.get("bit"), f"base character {index} bit"),
        )
        for index, row in enumerate(data["base_characters"])
    )
    if actual_base_characters != EXPECTED_BASE_CHARACTERS:
        fail("JSON base characters differ from tropicalComponentBCharacter8")

    quotient = data.get("quotient", {})
    source_reductions = quotient.get("source_reductions")
    rows = quotient.get("rows")
    if quotient.get("count") != QUOTIENT_COUNT or len(rows) != QUOTIENT_COUNT:
        fail("Component-B quotient count changed")
    if quotient.get("unique_source_reduction_count") != SOURCE_COUNT or len(source_reductions) != SOURCE_COUNT:
        fail("Component-B source-reduction count changed")
    for reduction_id, source in enumerate(source_reductions):
        if source.get("reduction_id") != reduction_id:
            fail(f"source reduction {reduction_id} is out of order")
        combined = check_index(
            source.get("relation_source", {}).get("combined_index"),
            560,
            f"source reduction {reduction_id} relation index",
        )
        if combined != source["relation_source"].get("index") + (
            200 if source["relation_source"].get("kind") == "first_overlap" else 0
        ):
            fail(f"source reduction {reduction_id} source tag is inconsistent")
        normalized_certificate(source.get("certificate"), 6, f"source reduction {reduction_id}")

    for row_index, row in enumerate(rows):
        if row.get("row_index") != row_index:
            fail(f"quotient row {row_index} is out of order")
        relation = canonical_polynomial(row.get("quotient_relation"), f"quotient row {row_index}")
        if len(relation) != 4:
            fail(f"quotient row {row_index} is not an exact tetranomial")
        source_ids = row.get("source_reduction_ids")
        uses = row.get("exact_source_uses")
        if not isinstance(source_ids, list) or len(source_ids) != 2:
            fail(f"quotient row {row_index} source ids changed")
        if not isinstance(uses, list) or len(uses) != 2:
            fail(f"quotient row {row_index} shifted-use count changed")
        for use_index, use in enumerate(uses):
            source_id = check_index(
                use.get("source_reduction_id"), SOURCE_COUNT,
                f"quotient row {row_index} source use {use_index}",
            )
            if source_id != source_ids[use_index]:
                fail(f"quotient row {row_index} source ids disagree")
            integer(use.get("integer_scale"), f"quotient row {row_index} source scale")
            check_sparse_exponent(use.get("shift"), f"quotient row {row_index} source shift")
        normalized_certificate(
            row.get("combination_reduction"), 12,
            f"quotient row {row_index} combination reduction",
        )
        target = canonical_polynomial(
            row["combination_reduction"]["provenance"]["normalized_target"],
            f"quotient row {row_index} normalized target",
        )
        if target != relation:
            fail(f"quotient row {row_index} normalized target differs from its public row")

    factor = data.get("factor", {})
    vertices = factor.get("vertices")
    raw_edges = factor.get("raw_edges")
    witnesses = factor.get("edge_witnesses")
    classes = factor.get("classes")
    if len(vertices) != RAW_VERTEX_COUNT or len(raw_edges) != RAW_EDGE_COUNT:
        fail("Component-B raw factor dimensions changed")
    if len(witnesses) != RAW_EDGE_COUNT or len(classes) != CLASS_COUNT:
        fail("Component-B witness/class dimensions changed")
    for vertex_id, vertex in enumerate(vertices):
        if vertex.get("id") != vertex_id:
            fail(f"raw factor vertex {vertex_id} is out of order")
        check_sparse_exponent(vertex.get("row"), f"raw factor vertex {vertex_id}")
        integer(vertex.get("bit"), f"raw factor vertex {vertex_id} bit")
    seen_edges: set[tuple[int, int]] = set()
    for edge_index, (edge, witness) in enumerate(zip(raw_edges, witnesses)):
        if not isinstance(edge, list) or len(edge) != 2:
            fail(f"raw edge {edge_index} is malformed")
        left = check_index(edge[0], RAW_VERTEX_COUNT, f"raw edge {edge_index} left")
        right = check_index(edge[1], RAW_VERTEX_COUNT, f"raw edge {edge_index} right")
        if left >= right or (left, right) in seen_edges:
            fail(f"raw edge {edge_index} is not a new ordered simple edge")
        seen_edges.add((left, right))
        if witness.get("left_vertex") != left or witness.get("right_vertex") != right:
            fail(f"raw edge {edge_index} witness endpoints disagree")
        quotient_index = check_index(
            witness.get("source_quotient_index"), QUOTIENT_COUNT,
            f"raw edge {edge_index} quotient source",
        )
        if witness.get("relation_index") != 560 + quotient_index:
            fail(f"raw edge {edge_index} relation index disagrees")
        if canonical_polynomial(
            witness.get("reduced_relation"), f"raw edge {edge_index} reduced relation"
        ) != canonical_polynomial(
            rows[quotient_index]["quotient_relation"],
            f"raw edge {edge_index} quotient relation",
        ):
            fail(f"raw edge {edge_index} source is not its exact quotient row")
        factor_certificate(witness.get("factor_certificate"), f"raw edge {edge_index}")

    owner: dict[int, int] = {}
    for class_id, class_row in enumerate(classes):
        if class_row.get("class_id") != class_id:
            fail(f"false-twin class {class_id} is out of order")
        members = class_row.get("vertex_ids")
        if not isinstance(members, list) or not members:
            fail(f"false-twin class {class_id} is empty")
        for member in members:
            member = check_index(member, RAW_VERTEX_COUNT, f"class {class_id} member")
            if member in owner:
                fail(f"raw factor {member} appears in two false-twin classes")
            owner[member] = class_id
    if set(owner) != set(range(RAW_VERTEX_COUNT)):
        fail("false-twin classes do not partition all raw factors")
    class_edges = {tuple(edge) for edge in factor.get("class_edges", [])}
    if class_edges != EXPECTED_CLASS_EDGES:
        fail("JSON class edges differ from componentBFactorEdges8")
    for audit in factor.get("class_edge_complete_bipartite_audit", []):
        left = check_index(audit.get("left_class"), CLASS_COUNT, "class audit left")
        right = check_index(audit.get("right_class"), CLASS_COUNT, "class audit right")
        if (left, right) not in EXPECTED_CLASS_EDGES:
            fail("complete-bipartite audit contains a nonedge")
        expected_count = len(classes[left]["vertex_ids"]) * len(classes[right]["vertex_ids"])
        if audit.get("complete_bipartite_raw_edges") != expected_count:
            fail("complete-bipartite audit cardinality changed")
    if len(factor.get("class_edge_complete_bipartite_audit", [])) != len(
        EXPECTED_CLASS_EDGES
    ):
        fail("complete-bipartite audit row count changed")
    if len(factor.get("global_covers", [])) != COVER_COUNT:
        fail("Component-B cover count changed")
    return data


def z(value: int) -> str:
    return f"({value} : ℤ)"


def exponent(rows: Sequence[dict[str, Any]], context: str = "exponent") -> str:
    checked = check_sparse_exponent(list(rows), context)
    if not checked:
        return "(0 : LaurentExponent (Fin 144))"
    terms = [f"Pi.single ({row['local']} : Fin 144) {z(row['exp'])}" for row in checked]
    return "(" + " +\n        ".join(terms) + ")"


def polynomial(payload: Any, context: str) -> str:
    entries = polynomial_entries(payload, context)
    if not entries:
        return "(0 : LaurentPolynomial (Fin 144))"
    terms = [
        f"Finsupp.single {exponent(rows, context + '.exponent')} {z(coefficient)}"
        for coefficient, rows in entries
    ]
    return "(" + " +\n      ".join(terms) + ")"


def signed_row(payload: dict[str, Any], context: str) -> str:
    return (
        "{ exponent := "
        + exponent(payload["row"], context + ".row")
        + f", signExponent := {z(integer(payload['bit'], context + '.bit'))} }}"
    )


def vector(items: Sequence[str], indent: str = "  ") -> str:
    if not items:
        fail("Lean vectors must be nonempty in this generator")
    separator = ",\n" + indent
    return "![\n" + indent + separator.join(items) + "\n]"


def finset(items: Sequence[int]) -> str:
    return "{" + ", ".join(map(str, items)) + "}"


def module_header(imports: Iterable[str], doc: str) -> str:
    return "".join(f"import {name}\n" for name in imports) + f'''\n/-!\n{doc}\n-/\n\nnamespace MonochromaticQuantumGraphs.N8D3\n\nopen MonochromaticQuantumGraph\nopen MonochromaticQuantumGraphs\nopen MonochromaticQuantumGraphs.FactorCoverCertificate\nopen scoped BigOperators\n\nnoncomputable section\n\nset_option maxRecDepth 100000\nset_option maxHeartbeats 8000000\n\n'''


FOOTER = "\nend\n\nend MonochromaticQuantumGraphs.N8D3\n"


def write(path: Path, contents: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(contents)


def reduction_use_name(prefix: str, use_index: int) -> str:
    return f"{prefix}Monomial{use_index:02d}8"


def emit_monomial_defs(prefix: str, uses: Sequence[dict[str, Any]]) -> str:
    chunks: list[str] = []
    for use_index, use in enumerate(uses):
        source = exponent(use["sourceExponent"], f"{prefix} use {use_index} source")
        target = exponent(use["targetExponent"], f"{prefix} use {use_index} target")
        reduction = use["reduction"]
        coeffs = [z(integer(value, f"{prefix} use {use_index} coeff")) for value in reduction["implication"]["coeff"]]
        chunks.append(f'''private def {reduction_use_name(prefix, use_index)} :
    MonomialReductionCertificate tropicalComponentBCharacter8
      {source} {target} where
  signExponent := {z(integer(reduction["signExponent"], f"{prefix} use {use_index} sign"))}
  implication := {{
    coeff := tropicalComponentBWithParityCoefficients8 {vector(coeffs, "      ")}
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide
  }}
''')
    return "\n".join(chunks)


def emit_use_vector(prefix: str, uses: Sequence[dict[str, Any]], name: str) -> str:
    items = []
    for use_index, use in enumerate(uses):
        items.append(f'''{{ coefficient := {z(integer(use["coefficient"], prefix + " coefficient"))}
      sourceExponent := {exponent(use["sourceExponent"], prefix + " source")}
      targetExponent := {exponent(use["targetExponent"], prefix + " target")}
      reduction := {reduction_use_name(prefix, use_index)} }}''')
    return f'''private def {name} :
    Fin {len(uses)} → CharacterReductionUse tropicalComponentBCharacter8 :=
{vector(items, "  ")}
'''


def emit_reduction_equalities(
    use_name: str,
    use_count: int,
    source: str,
    target: str,
    unit: int,
    theorem_prefix: str,
) -> str:
    return f'''private theorem {theorem_prefix}_source_eq :
    (∑ k : Fin {use_count},
      Finsupp.single ({use_name} k).sourceExponent
        ({use_name} k).coefficient) = {source} := by
  decide

private theorem {theorem_prefix}_target_eq :
    (∑ k : Fin {use_count},
      Finsupp.single ({use_name} k).targetExponent
        (signedCoefficient ({use_name} k).reduction.signExponent
          ({use_name} k).coefficient)) =
      {z(unit)} • {target} := by
  decide
'''


def emit_data(data: dict[str, Any]) -> str:
    sources = data["quotient"]["source_reductions"]
    rows = data["quotient"]["rows"]
    factor = data["factor"]
    source_indices = [str(item["relation_source"]["combined_index"]) for item in sources]
    reduced = [
        polynomial(
            item["certificate"]["provenance"]["normalized_target"],
            f"source {i} normalized target",
        )
        for i, item in enumerate(sources)
    ]
    intermediates = [
        polynomial(
            row["combination_reduction"]["reduction"]["source_eq"]["rhs"],
            f"quotient {i} intermediate",
        )
        for i, row in enumerate(rows)
    ]
    quotients = [
        polynomial(row["quotient_relation"], f"quotient {i}")
        for i, row in enumerate(rows)
    ]
    raw_factors = [
        signed_row(vertex, f"raw factor {i}")
        for i, vertex in enumerate(factor["vertices"])
    ]
    edge_pairs = [f"({edge[0]}, {edge[1]})" for edge in factor["raw_edges"]]
    edge_sources = [str(witness["source_quotient_index"]) for witness in factor["edge_witnesses"]]
    class_of = [None] * RAW_VERTEX_COUNT
    member_sets = []
    for class_row in factor["classes"]:
        members = class_row["vertex_ids"]
        member_sets.append(finset(members))
        for member in members:
            class_of[member] = class_row["class_id"]
    return module_header(
        [
            "MonochromaticQuantumGraphs.LaurentPolynomialCertificate",
            "MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8",
            "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8",
            "MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentB8",
        ],
        "# Generated Component-B factor data\n\nExact finite data from the pinned factor-semantics artifact.  No audit Boolean\nis imported as a proposition.",
    ) + f'''/-- Adapt a three-entry coefficient vector to the two Component-B rows plus
the universally valid parity generator used by monomial certificates. -/
def tropicalComponentBWithParityCoefficients8
    (coeff : Fin 3 → ℤ) : Sum (Fin 2) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 2)

/-- The retained row behind each of the {SOURCE_COUNT} unique quotient source reductions. -/
def tropicalComponentBQuotientSourceIndex8 : Fin {SOURCE_COUNT} → Fin 560 :=
{vector(source_indices, "  ")}

/-- Exact normalized target of each retained source reduction. -/
def tropicalComponentBQuotientReducedSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(reduced, "  ")}

/-- Exact shifted two-source aggregate before the final quotient reduction. -/
def tropicalComponentBQuotientIntermediate8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(intermediates, "  ")}

/-- The exact {QUOTIENT_COUNT} normalized Component-B quotient relations. -/
def tropicalComponentBQuotientRelation8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(quotients, "  ")}

/-- The exact {RAW_VERTEX_COUNT} raw signed-character factors. -/
def tropicalComponentBRawFactor8 :
    Fin {RAW_VERTEX_COUNT} → SignedCharacterRow (Fin 144) :=
{vector(raw_factors, "  ")}

/-- The exact {RAW_EDGE_COUNT} unordered raw-factor edges, in certificate order. -/
def tropicalComponentBRawFactorEdgePair8 :
    Fin {RAW_EDGE_COUNT} → Fin {RAW_VERTEX_COUNT} × Fin {RAW_VERTEX_COUNT} :=
{vector(edge_pairs, "  ")}

/-- The quotient row supplying each raw factor edge. -/
def tropicalComponentBRawFactorEdgeQuotient8 : Fin {RAW_EDGE_COUNT} → Fin {QUOTIENT_COUNT} :=
{vector(edge_sources, "  ")}

/-- Exact symmetric adjacency generated by the {RAW_EDGE_COUNT} certified raw edges. -/
def tropicalComponentBRawFactorEdge8
    (r s : Fin {RAW_VERTEX_COUNT}) : Prop :=
  ∃ e : Fin {RAW_EDGE_COUNT},
    tropicalComponentBRawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentBRawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentBRawFactorClass8 : Fin {RAW_VERTEX_COUNT} → Fin {CLASS_COUNT} :=
{vector([str(value) for value in class_of], "  ")}

/-- Exact member set of every one of the {CLASS_COUNT} false-twin classes. -/
def tropicalComponentBClassMembers8 : Fin {CLASS_COUNT} → Finset (Fin {RAW_VERTEX_COUNT}) :=
{vector(member_sets, "  ")}
''' + FOOTER


def emit_source_module(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    payload = source["certificate"]
    reduction = payload["reduction"]
    prefix = f"tropicalComponentBSourceReduction{source_id:03d}"
    use_name = f"{prefix}Use8"
    cert_name = f"tropicalComponentBSourceReductionCertificate8_{source_id:03d}"
    hold_name = f"tropicalComponentBSourceReduced8_{source_id:03d}_hold"
    result = module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Data"],
        f"# Component-B normalized source reduction {source_id}\n\nAll six termwise character implications and both polynomial equalities are\nreplayed by Lean.",
    )
    result += emit_monomial_defs(prefix, reduction["use"])
    result += "\n" + emit_use_vector(prefix, reduction["use"], use_name)
    result += "\n" + emit_reduction_equalities(
        use_name,
        6,
        f"tropicalRetainedRelation8 (tropicalComponentBQuotientSourceIndex8 {source_id})",
        f"tropicalComponentBQuotientReducedSource8 {source_id}",
        payload["unit"],
        prefix,
    )
    result += f'''\n/-- Exact normalized reduction of retained source {source_id}. -/
def {cert_name} :
    NormalizedCharacterReductionCertificate (\u03ba := Fin 6)
      tropicalComponentBCharacter8
      (tropicalRetainedRelation8 (tropicalComponentBQuotientSourceIndex8 {source_id}))
      (tropicalComponentBQuotientReducedSource8 {source_id}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := {use_name}
    source_eq := {prefix}_source_eq
    target_eq := {prefix}_target_eq
  }}

theorem {hold_name}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBQuotientReducedSource8 {source_id}).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8
    (tropicalRetainedRelation8 (tropicalComponentBQuotientSourceIndex8 {source_id}))
    (tropicalComponentBQuotientReducedSource8 {source_id})
    {cert_name} hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentBQuotientSourceIndex8 {source_id}))
'''
    return result + FOOTER


def emit_source_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S{i:03d}"
        for i in range(SOURCE_COUNT)
    ]
    cases = "\n".join(
        f"  · exact tropicalComponentBSourceReduced8_{i:03d}_hold hSupport hEq hChars"
        for i in range(SOURCE_COUNT)
    )
    return module_header(
        imports,
        f"# All {SOURCE_COUNT} Component-B normalized source reductions",
    ) + f'''theorem tropicalComponentBQuotientReducedSources8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ s : Fin {SOURCE_COUNT},
      (tropicalComponentBQuotientReducedSource8 s).Holds
        (tropicalSupportWeight8 W) := by
  intro s
  fin_cases s
{cases}
''' + FOOTER


def emit_quotient_module(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    payload = row["combination_reduction"]
    reduction = payload["reduction"]
    prefix = f"tropicalComponentBQuotient{quotient_id:03d}"
    shifted_use_name = f"{prefix}ShiftedUse8"
    reduction_use = f"{prefix}ReductionUse8"
    shifted_items = []
    for use in row["exact_source_uses"]:
        shifted_items.append(f'''{{ source := {use["source_reduction_id"]}
      scale := {z(use["integer_scale"])}
      shift := {exponent(use["shift"], prefix + " shifted use")} }}''')
    result = module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source"],
        f"# Component-B quotient row {quotient_id}\n\nThis module separately replays its exact shifted combination, twelve monomial\nimplications, and normalized quotient reduction.",
    )
    result += f'''private def {shifted_use_name} :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin {SOURCE_COUNT}) (Fin 144) :=
{vector(shifted_items, "  ")}

private theorem {prefix}_shifted_eq :
    (∑ k : Fin 2, ({shifted_use_name} k).scale •
      LaurentPolynomial.translate ({shifted_use_name} k).shift
        (tropicalComponentBQuotientReducedSource8
          ({shifted_use_name} k).source)) =
      tropicalComponentBQuotientIntermediate8 {quotient_id} := by
  decide

/-- Exact two-source shifted combination for quotient row {quotient_id}. -/
def tropicalComponentBQuotientShiftedCertificate8_{quotient_id:03d} :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentBQuotientReducedSource8
      (tropicalComponentBQuotientIntermediate8 {quotient_id}) where
  use := {shifted_use_name}
  combination_eq := {prefix}_shifted_eq

'''
    result += emit_monomial_defs(prefix, reduction["use"])
    result += "\n" + emit_use_vector(prefix, reduction["use"], reduction_use)
    result += "\n" + emit_reduction_equalities(
        reduction_use,
        12,
        f"tropicalComponentBQuotientIntermediate8 {quotient_id}",
        f"tropicalComponentBQuotientRelation8 {quotient_id}",
        payload["unit"],
        prefix,
    )
    result += f'''\n/-- Exact normalized character reduction for quotient row {quotient_id}. -/
def tropicalComponentBQuotientReductionCertificate8_{quotient_id:03d} :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentBCharacter8
      (tropicalComponentBQuotientIntermediate8 {quotient_id})
      (tropicalComponentBQuotientRelation8 {quotient_id}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := {reduction_use}
    source_eq := {prefix}_source_eq
    target_eq := {prefix}_target_eq
  }}

theorem tropicalComponentBQuotientRelation8_{quotient_id:03d}_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBQuotientRelation8 {quotient_id}).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentBQuotientIntermediate8 {quotient_id}).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentBQuotientReducedSource8
      (tropicalComponentBQuotientIntermediate8 {quotient_id})
      tropicalComponentBQuotientShiftedCertificate8_{quotient_id:03d}
      (tropicalComponentBQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8
    (tropicalComponentBQuotientIntermediate8 {quotient_id})
    (tropicalComponentBQuotientRelation8 {quotient_id})
    tropicalComponentBQuotientReductionCertificate8_{quotient_id:03d}
    hChars hintermediate
'''
    return result + FOOTER


def emit_quotient_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q{i:03d}"
        for i in range(QUOTIENT_COUNT)
    ]
    cases = "\n".join(
        f"  · exact tropicalComponentBQuotientRelation8_{i:03d}_hold hSupport hEq hChars"
        for i in range(QUOTIENT_COUNT)
    )
    return module_header(
        imports,
        f"# All {QUOTIENT_COUNT} Component-B quotient relations",
    ) + f'''/-- All exact Component-B quotient relations hold under the two component
characters and the official retained relation system. -/
theorem tropicalComponentBQuotientRelations8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ q : Fin {QUOTIENT_COUNT},
      (tropicalComponentBQuotientRelation8 q).Holds
        (tropicalSupportWeight8 W) := by
  intro q
  fin_cases q
{cases}
''' + FOOTER


def emit_factor_module(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    reduction = payload["reduction"]
    left, right = data["factor"]["raw_edges"][edge_id]
    quotient_id = witness["source_quotient_index"]
    prefix = f"tropicalComponentBFactorEdge{edge_id:03d}"
    use_name = f"{prefix}Use8"
    cert_name = f"tropicalComponentBFactorCertificate8_{edge_id:03d}"
    result = module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient"],
        f"# Component-B raw factor edge {edge_id}\n\nThe four source terms are reduced to the exact translated product of raw\nfactors {left} and {right}.",
    )
    result += emit_monomial_defs(prefix, reduction["use"])
    result += "\n" + emit_use_vector(prefix, reduction["use"], use_name)
    factor_target = (
        f"{z(payload['unit'])} • LaurentPolynomial.translate "
        f"{exponent(payload['shift'], prefix + ' shift')} "
        f"((tropicalComponentBRawFactor8 {left}).factorProductPolynomial "
        f"(tropicalComponentBRawFactor8 {right}))"
    )
    # LaurentFactorCertificate's reduction target already includes the unit;
    # emit the equality directly rather than route through the normalized helper.
    result += f'''\nprivate theorem {prefix}_source_eq :
    (∑ k : Fin 4,
      Finsupp.single ({use_name} k).sourceExponent
        ({use_name} k).coefficient) =
      tropicalComponentBQuotientRelation8 {quotient_id} := by
  decide

private theorem {prefix}_target_eq :
    (∑ k : Fin 4,
      Finsupp.single ({use_name} k).targetExponent
        (signedCoefficient ({use_name} k).reduction.signExponent
          ({use_name} k).coefficient)) =
      {factor_target} := by
  decide

/-- Exact Laurent factor certificate for raw edge {edge_id}. -/
def {cert_name} :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentBCharacter8
      (tropicalComponentBQuotientRelation8 {quotient_id})
      (tropicalComponentBRawFactor8 {left})
      (tropicalComponentBRawFactor8 {right}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  shift := {exponent(payload["shift"], prefix + " shift")}
  reduction := {{
    use := {use_name}
    source_eq := {prefix}_source_eq
    target_eq := {prefix}_target_eq
  }}

theorem tropicalComponentBRawFactorEdgeProduct8_{edge_id:03d}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 {left}).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 {right}).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8
    (tropicalComponentBQuotientRelation8 {quotient_id})
    (tropicalComponentBRawFactor8 {left})
    (tropicalComponentBRawFactor8 {right})
    {cert_name} hChars
    (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars {quotient_id})
'''
    return result + FOOTER


def emit_factor_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E{i:03d}"
        for i in range(RAW_EDGE_COUNT)
    ]
    cases = "\n".join(
        f"  · simpa [tropicalComponentBRawFactorEdgePair8] using\n"
        f"      tropicalComponentBRawFactorEdgeProduct8_{i:03d} hSupport hEq hChars"
        for i in range(RAW_EDGE_COUNT)
    )
    return module_header(
        imports,
        f"# All {RAW_EDGE_COUNT} Component-B raw factor products",
    ) + f'''/-- Product vanishing for every explicitly indexed raw edge. -/
theorem tropicalComponentBRawFactorEdgeProductsByIndex8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ e : Fin {RAW_EDGE_COUNT},
      (tropicalComponentBRawFactor8
          (tropicalComponentBRawFactorEdgePair8 e).1).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentBRawFactor8
          (tropicalComponentBRawFactorEdgePair8 e).2).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro e
  fin_cases e
{cases}

/-- Product vanishing for the exact symmetric raw adjacency relation. -/
theorem tropicalComponentBRawFactorProducts8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ ⦃r s⦄, tropicalComponentBRawFactorEdge8 r s →
      (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentBRawFactor8 s).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro r s hrs
  rcases hrs with ⟨e, hpair | hpair⟩
  · simpa [hpair] using
      tropicalComponentBRawFactorEdgeProductsByIndex8 hSupport hEq hChars e
  · simpa [hpair, mul_comm] using
      tropicalComponentBRawFactorEdgeProductsByIndex8 hSupport hEq hChars e
''' + FOOTER


def emit_graph_exact() -> str:
    row_theorems = []
    for raw in range(RAW_VERTEX_COUNT):
        row_theorems.append(f'''private theorem tropicalComponentBRawFactorEdge8_row{raw:02d}
    (s : Fin {RAW_VERTEX_COUNT}) :
    tropicalComponentBRawFactorEdge8 {raw} s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 {raw})
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide
''')
    cases = "\n".join(
        f"  · exact tropicalComponentBRawFactorEdge8_row{raw:02d} s"
        for raw in range(RAW_VERTEX_COUNT)
    )
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor"],
        f"# Exact raw/class graph quotient\n\nEach row is checked separately so the {RAW_VERTEX_COUNT}-by-{RAW_VERTEX_COUNT} finite equality is not one\nmonolithic kernel reduction.",
    ) + "\n".join(row_theorems) + f'''\n/-- The class graph is the exact adjacency quotient of the {RAW_EDGE_COUNT} raw edges. -/
theorem tropicalComponentBRawFactorEdge8_iff_classEdge
    (r s : Fin {RAW_VERTEX_COUNT}) :
    tropicalComponentBRawFactorEdge8 r s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 r)
        (tropicalComponentBRawFactorClass8 s) := by
  fin_cases r
{cases}
''' + FOOTER


def emit_graph() -> str:
    membership = []
    for class_id in range(CLASS_COUNT):
        membership.append(f'''private theorem tropicalComponentBClassMembers8_class{class_id:02d}
    (r : Fin {RAW_VERTEX_COUNT}) :
    r ∈ tropicalComponentBClassMembers8 {class_id} ↔
      tropicalComponentBRawFactorClass8 r = {class_id} := by
  revert r
  decide
''')
    member_cases = "\n".join(
        f"  · exact tropicalComponentBClassMembers8_class{class_id:02d} r"
        for class_id in range(CLASS_COUNT)
    )
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.GraphExact"],
        "# Component-B false-twin classes and cover dispatch",
    ) + "\n".join(membership) + f'''\n/-- Exact membership characterization for all {CLASS_COUNT} false-twin classes. -/
theorem tropicalComponentBClassMembers8_iff
    (c : Fin {CLASS_COUNT}) (r : Fin {RAW_VERTEX_COUNT}) :
    r ∈ tropicalComponentBClassMembers8 c ↔
      tropicalComponentBRawFactorClass8 r = c := by
  fin_cases c
{member_cases}

/-- Every existing class edge expands to a complete bipartite raw graph, with
membership and adjacency both checked from their exact finite tables. -/
theorem tropicalComponentBCompleteBipartiteQuotient8 :
    IsCompleteBipartiteQuotient
      tropicalComponentBRawFactorEdge8 componentBFactorEdge8
      tropicalComponentBClassMembers8 := by
  intro c d hcd r s hrc hsd
  have hrc' : tropicalComponentBRawFactorClass8 r = c :=
    (tropicalComponentBClassMembers8_iff c r).mp hrc
  have hsd' : tropicalComponentBRawFactorClass8 s = d :=
    (tropicalComponentBClassMembers8_iff d s).mp hsd
  rw [tropicalComponentBRawFactorEdge8_iff_classEdge]
  simpa [hrc', hsd'] using hcd

/-- Exact Component-B dispatch to the already checked {COVER_COUNT}-row class-cover
table.  The cover table is imported and is not duplicated here. -/
theorem tropicalComponentB_allZero_class_cover8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∃ i : Fin {COVER_COUNT}, ∀ c ∈ componentBCover8 i,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c :=
  exists_listed_allZero_cover
    tropicalComponentBRawFactorEdge8 componentBFactorEdge8
    tropicalComponentBClassMembers8
    (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
      (tropicalSupportWeight8 W))
    componentBCover8 componentBCover8_complete
    tropicalComponentBCompleteBipartiteQuotient8
    (tropicalComponentBRawFactorProducts8 hSupport hEq hChars)
''' + FOOTER


def emit_umbrella() -> str:
    return f'''import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Graph

/-!
# Complete Component-B tropical factor semantics

This umbrella exports the {QUOTIENT_COUNT} quotient relations,
{RAW_VERTEX_COUNT} raw factors, {RAW_EDGE_COUNT} exact factor certificates,
{CLASS_COUNT} false-twin member sets, the exact raw/class graph quotient, and
the sound all-zero dispatch through the existing {COVER_COUNT}-cover table.
-/
'''


def generate(data: dict[str, Any], output: Path, umbrella: Path) -> list[Path]:
    generated: list[Path] = []

    def put(relative: str, contents: str) -> None:
        path = output / relative
        write(path, contents)
        generated.append(path)

    put("Data.lean", emit_data(data))
    for source_id in range(SOURCE_COUNT):
        put(f"Source/S{source_id:03d}.lean", emit_source_module(data, source_id))
    put("Source.lean", emit_source_aggregator())
    for quotient_id in range(QUOTIENT_COUNT):
        put(f"Quotient/Q{quotient_id:03d}.lean", emit_quotient_module(data, quotient_id))
    put("Quotient.lean", emit_quotient_aggregator())
    for edge_id in range(RAW_EDGE_COUNT):
        put(f"Factor/E{edge_id:03d}.lean", emit_factor_module(data, edge_id))
    put("Factor.lean", emit_factor_aggregator())
    put("GraphExact.lean", emit_graph_exact())
    put("Graph.lean", emit_graph())
    write(umbrella, emit_umbrella())
    generated.append(umbrella)
    return generated


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=INPUT)
    parser.add_argument("--output", type=Path, default=OUTPUT)
    parser.add_argument("--umbrella", type=Path, default=UMBRELLA)
    parser.add_argument(
        "--check", action="store_true",
        help="validate that existing generated files exactly match fresh output",
    )
    args = parser.parse_args()
    data = load_and_validate(args.input)
    if args.check:
        with tempfile.TemporaryDirectory(prefix="factor_b_lean_check_", dir="/tmp") as raw:
            temporary_root = Path(raw)
            temporary = temporary_root / "TropicalFactorB8"
            temporary_umbrella = temporary_root / "TropicalFactorB8.lean"
            generated = generate(data, temporary, temporary_umbrella)
            expected = {
                path.relative_to(temporary): path.read_text()
                for path in generated
                if path != temporary_umbrella
            }
            actual_paths = sorted(args.output.rglob("*.lean"))
            actual = {
                path.relative_to(args.output): path.read_text()
                for path in actual_paths
            }
            if (
                expected != actual
                or temporary_umbrella.read_text() != args.umbrella.read_text()
            ):
                fail("generated Component-B Lean files are stale")
        print("Component-B generated Lean files are current")
        return
    generated = generate(data, args.output, args.umbrella)
    print(f"generated {len(generated)} Component-B Lean modules")


if __name__ == "__main__":
    main()

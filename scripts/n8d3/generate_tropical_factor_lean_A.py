#!/usr/bin/env python3
"""Generate the kernel-replayed Component-A tropical factor semantics.

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
    "component_A_factor_semantics.json"
)
OUTPUT = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorA8"
UMBRELLA = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorA8.lean"

INPUT_SHA256 = "f59912bea5b8c36421f80173d50ef37fb5bd64fc8d330ae96ff91a221ac6ec25"
SCHEMA_VERSION = 2
SOURCE_COUNT = 116
QUOTIENT_COUNT = 70
RAW_VERTEX_COUNT = 59
RAW_EDGE_COUNT = 68
CLASS_COUNT = 15

# This is the already checked class graph in TropicalNonattainmentComponentA8.
EXPECTED_CLASS_EDGES = {
    (0, 5), (0, 13), (0, 14), (1, 5), (1, 10), (1, 11),
    (2, 7), (3, 6), (3, 12), (4, 6), (8, 10), (9, 13),
}


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
    if provenance.get("basis_character_count") != 5:
        fail(f"{context} basis character count changed")
    polynomial_entries(provenance.get("normalized_target"), f"{context}.normalized_target")
    check_reduction(payload.get("reduction"), use_count, 5, f"{context}.reduction")


def factor_certificate(payload: Any, context: str) -> None:
    if not isinstance(payload, dict):
        fail(f"{context} is not a factor certificate")
    unit = integer(payload.get("unit"), f"{context}.unit")
    if unit == 0 or payload.get("unit_ne_zero") is not True:
        fail(f"{context} has an invalid factor unit")
    check_sparse_exponent(payload.get("shift"), f"{context}.shift")
    provenance = payload.get("provenance")
    if provenance.get("basis_character_count") != 5:
        fail(f"{context} basis count changed")
    check_reduction(payload.get("reduction"), 4, 5, f"{context}.reduction")


def load_and_validate(path: Path) -> dict[str, Any]:
    actual = digest(path)
    if actual != INPUT_SHA256:
        fail(f"Component-A factor JSON SHA-256 mismatch: {actual} != {INPUT_SHA256}")
    data = json.loads(path.read_text())
    if data.get("schema_version") != SCHEMA_VERSION or data.get("component") != "A":
        fail("Component-A factor schema identity changed")
    pipeline = data.get("pipeline", {})
    if pipeline.get("retained_relation_count") != 560:
        fail("retained relation count changed")
    if pipeline.get("factor_input_count") != 630:
        fail("factor input count changed")
    if pipeline.get("unused_second_overlap_relations_in_factor_input") != 0:
        fail("the unused second overlap leaked into the factor input")
    if len(data.get("base_characters", [])) != 5:
        fail("Component-A base-character count changed")

    quotient = data.get("quotient", {})
    source_reductions = quotient.get("source_reductions")
    rows = quotient.get("rows")
    if quotient.get("count") != QUOTIENT_COUNT or len(rows) != QUOTIENT_COUNT:
        fail("Component-A quotient count changed")
    if quotient.get("unique_source_reduction_count") != SOURCE_COUNT or len(source_reductions) != SOURCE_COUNT:
        fail("Component-A source-reduction count changed")
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
        fail("Component-A raw factor dimensions changed")
    if len(witnesses) != RAW_EDGE_COUNT or len(classes) != CLASS_COUNT:
        fail("Component-A witness/class dimensions changed")
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
        fail("JSON class edges differ from componentAFactorEdges8")
    for audit in factor.get("class_edge_complete_bipartite_audit", []):
        left = check_index(audit.get("left_class"), CLASS_COUNT, "class audit left")
        right = check_index(audit.get("right_class"), CLASS_COUNT, "class audit right")
        if (left, right) not in EXPECTED_CLASS_EDGES:
            fail("complete-bipartite audit contains a nonedge")
        expected_count = len(classes[left]["vertex_ids"]) * len(classes[right]["vertex_ids"])
        if audit.get("complete_bipartite_raw_edges") != expected_count:
            fail("complete-bipartite audit cardinality changed")
    if len(factor.get("class_edge_complete_bipartite_audit", [])) != 12:
        fail("complete-bipartite audit row count changed")
    if len(factor.get("global_covers", [])) != 54:
        fail("Component-A cover count changed")
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


def internal_namespace(kind: str, row_id: int) -> str:
    return f"TropicalFactorA8.Internal.{kind}{row_id:03d}"


def internal_begin(kind: str, row_id: int) -> str:
    return f"namespace {internal_namespace(kind, row_id)}\n\n"


def internal_end(kind: str, row_id: int) -> str:
    return f"\nend {internal_namespace(kind, row_id)}\n"


MONOMIAL_SIMP = """SignedCharacterRow.linearCombination,
        Fintype.sum_sum_type, Fin.sum_univ_succ,
        tropicalComponentAWithParityCoefficients8,
        SignedCharacterRow.withParityGenerator,
        SignedCharacterRow.parityGenerator,
        tropicalComponentACharacter8, tropicalBinomialCharacter8,
        differenceRow"""


def emit_monomial_module(
    use: dict[str, Any], kind: str, row_id: int, use_index: int
) -> str:
    context = f"Component-A {kind} {row_id} use {use_index}"
    source = exponent(use["sourceExponent"], context + " source")
    target = exponent(use["targetExponent"], context + " target")
    reduction = use["reduction"]
    coeffs = [
        z(integer(value, context + " coefficient"))
        for value in reduction["implication"]["coeff"]
    ]
    name = f"monomial{use_index:02d}"
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data"],
        f"# Component-A {kind.lower()} {row_id}, monomial {use_index}\n\n"
        "One algebraic signed-character implication, isolated as its own bounded "
        "compiler target.",
    ) + internal_begin(kind, row_id) + f'''def {name} :
    MonomialReductionCertificate tropicalComponentACharacter8
      {source} {target} where
  signExponent := {z(integer(reduction["signExponent"], context + " sign"))}
  implication := {{
    coeff := tropicalComponentAWithParityCoefficients8 {vector(coeffs, "      ")}
    combination_eq := by
      apply SignedCharacterRow.ext
      · simp [{MONOMIAL_SIMP}] <;> abel
      · norm_num [{MONOMIAL_SIMP}]
  }}
''' + internal_end(kind, row_id) + FOOTER


def emit_use_vector(uses: Sequence[dict[str, Any]], name: str, context: str) -> str:
    items = []
    for use_index, use in enumerate(uses):
        use_context = f"{context} use {use_index}"
        items.append(f'''{{ coefficient := {z(integer(use["coefficient"], use_context + " coefficient"))}
      sourceExponent := {exponent(use["sourceExponent"], use_context + " source")}
      targetExponent := {exponent(use["targetExponent"], use_context + " target")}
      reduction := monomial{use_index:02d} }}''')
    return f'''def {name} :
    Fin {len(uses)} → CharacterReductionUse tropicalComponentACharacter8 :=
{vector(items, "  ")}
'''


def emit_data(data: dict[str, Any]) -> str:
    sources = data["quotient"]["source_reductions"]
    rows = data["quotient"]["rows"]
    factor = data["factor"]
    source_indices = [str(item["relation_source"]["combined_index"]) for item in sources]
    originals = [
        polynomial(
            item["certificate"]["reduction"]["source_eq"]["rhs"],
            f"source {i} original",
        )
        for i, item in enumerate(sources)
    ]
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
            "MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentA8",
        ],
        "# Generated Component-A factor data\n\nExact finite data from the pinned factor-semantics artifact.  No audit Boolean\nis imported as a proposition.",
    ) + f'''/-- Adapt a six-entry coefficient vector to the five Component-A rows plus
the universally valid parity generator used by monomial certificates. -/
def tropicalComponentAWithParityCoefficients8
    (coeff : Fin 6 → ℤ) : Sum (Fin 5) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 5)

/-- The retained row behind each of the 116 unique quotient source reductions. -/
def tropicalComponentAQuotientSourceIndex8 : Fin {SOURCE_COUNT} → Fin 560 :=
{vector(source_indices, "  ")}

/-- Exact original polynomial of each of the 116 source reductions.  Keeping
this finite data independent of the retained-relation semantic development
lets each algebraic certificate compile as a genuinely small target. -/
def tropicalComponentAQuotientOriginalSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(originals, "  ")}

/-- Exact normalized target of each retained source reduction. -/
def tropicalComponentAQuotientReducedSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(reduced, "  ")}

/-- Exact shifted two-source aggregate before the final quotient reduction. -/
def tropicalComponentAQuotientIntermediate8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(intermediates, "  ")}

/-- The exact 70 normalized Component-A quotient relations. -/
def tropicalComponentAQuotientRelation8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(quotients, "  ")}

/-- The exact 59 raw signed-character factors. -/
def tropicalComponentARawFactor8 :
    Fin {RAW_VERTEX_COUNT} → SignedCharacterRow (Fin 144) :=
{vector(raw_factors, "  ")}

/-- The exact 68 unordered raw-factor edges, in certificate order. -/
def tropicalComponentARawFactorEdgePair8 :
    Fin {RAW_EDGE_COUNT} → Fin {RAW_VERTEX_COUNT} × Fin {RAW_VERTEX_COUNT} :=
{vector(edge_pairs, "  ")}

/-- The quotient row supplying each raw factor edge. -/
def tropicalComponentARawFactorEdgeQuotient8 : Fin {RAW_EDGE_COUNT} → Fin {QUOTIENT_COUNT} :=
{vector(edge_sources, "  ")}

/-- Exact symmetric adjacency generated by the 68 certified raw edges. -/
def tropicalComponentARawFactorEdge8
    (r s : Fin {RAW_VERTEX_COUNT}) : Prop :=
  ∃ e : Fin {RAW_EDGE_COUNT},
    tropicalComponentARawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentARawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentARawFactorClass8 : Fin {RAW_VERTEX_COUNT} → Fin {CLASS_COUNT} :=
{vector([str(value) for value in class_of], "  ")}

/-- Exact member set of every one of the 15 false-twin classes. -/
def tropicalComponentAClassMembers8 : Fin {CLASS_COUNT} → Finset (Fin {RAW_VERTEX_COUNT}) :=
{vector(member_sets, "  ")}

/-- Translation is additive over subtraction.  This named algebraic bridge
keeps generated factor equalities away from the implementation of Finsupp
support and `translateLinear`. -/
theorem tropicalComponentATranslate_sub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact LinearMap.map_sub (LaurentPolynomial.translateLinear shift) p q
''' + FOOTER


def source_base(source_id: int) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source."
        f"S{source_id:03d}"
    )


def emit_source_uses(data: dict[str, Any], source_id: int) -> str:
    uses = data["quotient"]["source_reductions"][source_id]["certificate"]["reduction"]["use"]
    imports = [f"{source_base(source_id)}.Monomial.M{i:02d}" for i in range(len(uses))]
    return module_header(
        imports,
        f"# Component-A source reduction {source_id}: use vector",
    ) + internal_begin("Source", source_id) + emit_use_vector(
        uses, "use", f"Component-A source {source_id}"
    ) + internal_end("Source", source_id) + FOOTER


def emit_source_eq(data: dict[str, Any], source_id: int) -> str:
    return module_header(
        [f"{source_base(source_id)}.Uses"],
        f"# Component-A source reduction {source_id}: original polynomial equality",
    ) + internal_begin("Source", source_id) + f'''theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientOriginalSource8 {source_id} := by
  simp [use, tropicalComponentAQuotientOriginalSource8, Fin.sum_univ_succ] <;> abel
''' + internal_end("Source", source_id) + FOOTER


def emit_source_target_eq(data: dict[str, Any], source_id: int) -> str:
    payload = data["quotient"]["source_reductions"][source_id]["certificate"]
    monomials = ", ".join(f"monomial{i:02d}" for i in range(6))
    return module_header(
        [f"{source_base(source_id)}.Uses"],
        f"# Component-A source reduction {source_id}: normalized target equality",
    ) + internal_begin("Source", source_id) + f'''theorem target_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • tropicalComponentAQuotientReducedSource8 {source_id} := by
  simp [use, {monomials}, tropicalComponentAQuotientReducedSource8,
    signedCoefficient, Fin.sum_univ_succ] <;> abel
''' + internal_end("Source", source_id) + FOOTER


def emit_source_certificate(data: dict[str, Any], source_id: int) -> str:
    payload = data["quotient"]["source_reductions"][source_id]["certificate"]
    return module_header(
        [f"{source_base(source_id)}.SourceEq", f"{source_base(source_id)}.TargetEq"],
        f"# Component-A source reduction {source_id}: algebraic certificate",
    ) + internal_begin("Source", source_id) + f'''/-- Lightweight exact
certificate against the explicit source polynomial. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientOriginalSource8 {source_id})
      (tropicalComponentAQuotientReducedSource8 {source_id}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := use
    source_eq := source_eq
    target_eq := target_eq
  }}
''' + internal_end("Source", source_id) + FOOTER


def emit_source_hold(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    overlap_id = source["relation_source"]["index"]
    row_name = f"tropicalOverlapRelation8Row{overlap_id}"
    cert_name = f"tropicalComponentASourceReductionCertificate8_{source_id:03d}"
    hold_name = f"tropicalComponentASourceReduced8_{source_id:03d}_hold"
    ns = internal_namespace("Source", source_id)
    result = module_header(
        [f"{source_base(source_id)}.Certificate",
         "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8"],
        f"# Component-A source reduction {source_id}: semantic hold",
    )
    result += f'''private theorem tropicalComponentASourceOriginal8_{source_id:03d}_eq_retained :
    tropicalComponentAQuotientOriginalSource8 {source_id} =
      tropicalRetainedRelation8
        (tropicalComponentAQuotientSourceIndex8 {source_id}) := by
  change tropicalComponentAQuotientOriginalSource8 {source_id} = {row_name}
  simp [tropicalComponentAQuotientOriginalSource8, {row_name},
    tropicalOverlapDegreeFiveExponent8] <;> abel

/-- Exact normalized reduction of retained source {source_id}, preserving the
public type of the original monolithic certificate. -/
def {cert_name} :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 {source_id}))
      (tropicalComponentAQuotientReducedSource8 {source_id}) where
  unit := {ns}.certificate.unit
  unit_ne_zero := {ns}.certificate.unit_ne_zero
  reduction := {{
    use := {ns}.use
    source_eq := {ns}.source_eq.trans
      tropicalComponentASourceOriginal8_{source_id:03d}_eq_retained
    target_eq := {ns}.target_eq
  }}

theorem {hold_name}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientReducedSource8 {source_id}).Holds
      (tropicalSupportWeight8 W) :=
  holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalRetainedRelation8 (tropicalComponentAQuotientSourceIndex8 {source_id}))
    (tropicalComponentAQuotientReducedSource8 {source_id})
    {cert_name} hChars
    (tropicalRetainedRelations8_hold hSupport hEq
      (tropicalComponentAQuotientSourceIndex8 {source_id}))
'''
    return result + FOOTER


def emit_source_collector(source_id: int) -> str:
    return (f"import {source_base(source_id)}.Hold\n\n"
            f"/-! Public collector for Component-A source reduction {source_id}. -/\n")


def emit_source_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S{i:03d}"
        for i in range(SOURCE_COUNT)
    ]
    cases = "\n".join(
        f"  · exact tropicalComponentASourceReduced8_{i:03d}_hold hSupport hEq hChars"
        for i in range(SOURCE_COUNT)
    )
    return module_header(
        imports,
        "# All 116 Component-A normalized source reductions",
    ) + f'''theorem tropicalComponentAQuotientReducedSources8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∀ s : Fin {SOURCE_COUNT},
      (tropicalComponentAQuotientReducedSource8 s).Holds
        (tropicalSupportWeight8 W) := by
  intro s
  fin_cases s
{cases}
''' + FOOTER


def quotient_base(quotient_id: int) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient."
        f"Q{quotient_id:03d}"
    )


def emit_quotient_uses(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    uses = row["combination_reduction"]["reduction"]["use"]
    imports = [
        f"{quotient_base(quotient_id)}.Monomial.M{i:02d}"
        for i in range(len(uses))
    ]
    shifted_items = []
    for use_index, use in enumerate(row["exact_source_uses"]):
        shifted_items.append(f'''{{ source := {use["source_reduction_id"]}
      scale := {z(use["integer_scale"])}
      shift := {exponent(use["shift"], f"quotient {quotient_id} shifted use {use_index}")} }}''')
    return module_header(
        imports,
        f"# Component-A quotient row {quotient_id}: use vectors",
    ) + internal_begin("Quotient", quotient_id) + f'''def shiftedUse :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin {SOURCE_COUNT}) (Fin 144) :=
{vector(shifted_items, "  ")}

''' + emit_use_vector(
        uses, "use", f"Component-A quotient {quotient_id}"
    ) + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_source_eq(data: dict[str, Any], quotient_id: int) -> str:
    return module_header(
        [f"{quotient_base(quotient_id)}.Uses"],
        f"# Component-A quotient row {quotient_id}: intermediate source equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientIntermediate8 {quotient_id} := by
  simp [use, tropicalComponentAQuotientIntermediate8, Fin.sum_univ_succ] <;> abel
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_target_eq(data: dict[str, Any], quotient_id: int) -> str:
    payload = data["quotient"]["rows"][quotient_id]["combination_reduction"]
    monomials = ", ".join(f"monomial{i:02d}" for i in range(12))
    return module_header(
        [f"{quotient_base(quotient_id)}.Uses"],
        f"# Component-A quotient row {quotient_id}: normalized target equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem target_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • tropicalComponentAQuotientRelation8 {quotient_id} := by
  simp [use, {monomials}, tropicalComponentAQuotientRelation8,
    signedCoefficient, Fin.sum_univ_succ] <;> abel
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_shifted_eq(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    reduction_uses = row["combination_reduction"]["reduction"]["use"]
    have_lines: list[str] = []
    flat_index = 0
    for shifted_index, shifted in enumerate(row["exact_source_uses"]):
        source_id = shifted["source_reduction_id"]
        shift = exponent(shifted["shift"], f"quotient {quotient_id} shift {shifted_index}")
        terms = data["quotient"]["source_reductions"][source_id]["certificate"]["provenance"]["normalized_target"]
        scale = integer(shifted["integer_scale"], f"quotient {quotient_id} scale")
        for term_index, (coefficient, term_rows) in enumerate(
            polynomial_entries(terms, f"quotient {quotient_id} shifted source {shifted_index}")
        ):
            use = reduction_uses[flat_index]
            expected_coefficient = scale * coefficient
            if integer(use["coefficient"], "shifted reduction coefficient") != expected_coefficient:
                fail(f"quotient {quotient_id} shifted coefficient order changed")
            target = exponent(use["sourceExponent"], f"quotient {quotient_id} source use {flat_index}")
            term_exp = exponent(term_rows, f"quotient {quotient_id} reduced term {term_index}")
            have_lines.append(
                f"  have h{flat_index:02d} : {shift} + {term_exp} = {target} := by\n"
                "    abel"
            )
            flat_index += 1
    if flat_index != 12:
        fail(f"quotient {quotient_id} shifted monomial count changed")
    h_names = ", ".join(f"h{i:02d}" for i in range(12))
    return module_header(
        [f"{quotient_base(quotient_id)}.Uses"],
        f"# Component-A quotient row {quotient_id}: shifted-source equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem shifted_eq :
    (∑ k : Fin 2, (shiftedUse k).scale •
      LaurentPolynomial.translate (shiftedUse k).shift
        (tropicalComponentAQuotientReducedSource8
          (shiftedUse k).source)) =
      tropicalComponentAQuotientIntermediate8 {quotient_id} := by
{chr(10).join(have_lines)}
  simp [shiftedUse, tropicalComponentAQuotientReducedSource8,
    tropicalComponentAQuotientIntermediate8, Fin.sum_univ_succ,
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single,
    {h_names}] <;> abel
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_certificate(data: dict[str, Any], quotient_id: int) -> str:
    payload = data["quotient"]["rows"][quotient_id]["combination_reduction"]
    return module_header(
        [f"{quotient_base(quotient_id)}.ShiftedEq",
         f"{quotient_base(quotient_id)}.SourceEq",
         f"{quotient_base(quotient_id)}.TargetEq"],
        f"# Component-A quotient row {quotient_id}: certificates",
    ) + internal_begin("Quotient", quotient_id) + f'''/-- Exact two-source
shifted combination for quotient row {quotient_id}. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 {quotient_id}) where
  use := shiftedUse
  combination_eq := shifted_eq

''' + internal_end("Quotient", quotient_id) + f'''
/-- Exact two-source shifted combination for quotient row {quotient_id}. -/
def tropicalComponentAQuotientShiftedCertificate8_{quotient_id:03d} :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 {quotient_id}) :=
  {internal_namespace("Quotient", quotient_id)}.shiftedCertificate

/-- Exact normalized character reduction for quotient row {quotient_id}. -/
def tropicalComponentAQuotientReductionCertificate8_{quotient_id:03d} :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 {quotient_id})
      (tropicalComponentAQuotientRelation8 {quotient_id}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := {internal_namespace("Quotient", quotient_id)}.use
    source_eq := {internal_namespace("Quotient", quotient_id)}.source_eq
    target_eq := {internal_namespace("Quotient", quotient_id)}.target_eq
  }}
''' + FOOTER


def emit_quotient_hold(quotient_id: int) -> str:
    return module_header(
        [f"{quotient_base(quotient_id)}.Certificate",
         "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source"],
        f"# Component-A quotient row {quotient_id}: semantic hold",
    ) + f'''theorem tropicalComponentAQuotientRelation8_{quotient_id:03d}_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentAQuotientRelation8 {quotient_id}).Holds
      (tropicalSupportWeight8 W) := by
  have hintermediate :
      (tropicalComponentAQuotientIntermediate8 {quotient_id}).Holds
        (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 {quotient_id})
      tropicalComponentAQuotientShiftedCertificate8_{quotient_id:03d}
      (tropicalComponentAQuotientReducedSources8_hold hSupport hEq hChars)
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientIntermediate8 {quotient_id})
    (tropicalComponentAQuotientRelation8 {quotient_id})
    tropicalComponentAQuotientReductionCertificate8_{quotient_id:03d}
    hChars hintermediate
''' + FOOTER


def emit_quotient_collector(quotient_id: int) -> str:
    return (f"import {quotient_base(quotient_id)}.Hold\n\n"
            f"/-! Public collector for Component-A quotient row {quotient_id}. -/\n")


def emit_quotient_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q{i:03d}"
        for i in range(QUOTIENT_COUNT)
    ]
    cases = "\n".join(
        f"  · exact tropicalComponentAQuotientRelation8_{i:03d}_hold hSupport hEq hChars"
        for i in range(QUOTIENT_COUNT)
    )
    return module_header(
        imports,
        "# All 70 Component-A quotient relations",
    ) + f'''/-- All exact Component-A quotient relations hold under the five component
characters and the official retained relation system. -/
theorem tropicalComponentAQuotientRelations8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∀ q : Fin {QUOTIENT_COUNT},
      (tropicalComponentAQuotientRelation8 q).Holds
        (tropicalSupportWeight8 W) := by
  intro q
  fin_cases q
{cases}
''' + FOOTER


def factor_base(edge_id: int) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor."
        f"E{edge_id:03d}"
    )


def emit_factor_uses(data: dict[str, Any], edge_id: int) -> str:
    payload = data["factor"]["edge_witnesses"][edge_id]["factor_certificate"]
    uses = payload["reduction"]["use"]
    imports = [f"{factor_base(edge_id)}.Monomial.M{i:02d}" for i in range(len(uses))]
    return module_header(
        imports,
        f"# Component-A factor edge {edge_id}: use vector and shift",
    ) + internal_begin("Factor", edge_id) + f'''def shift : LaurentExponent (Fin 144) :=
  {exponent(payload["shift"], f"factor edge {edge_id} shift")}

''' + emit_use_vector(
        uses, "use", f"Component-A factor edge {edge_id}"
    ) + internal_end("Factor", edge_id) + FOOTER


def emit_factor_source_eq(data: dict[str, Any], edge_id: int) -> str:
    quotient_id = data["factor"]["edge_witnesses"][edge_id]["source_quotient_index"]
    return module_header(
        [f"{factor_base(edge_id)}.Uses"],
        f"# Component-A factor edge {edge_id}: quotient source equality",
    ) + internal_begin("Factor", edge_id) + f'''theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientRelation8 {quotient_id} := by
  simp [use, tropicalComponentAQuotientRelation8, Fin.sum_univ_succ] <;> abel
''' + internal_end("Factor", edge_id) + FOOTER


def emit_factor_target_eq(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    reduction_uses = payload["reduction"]["use"]
    left, right = data["factor"]["raw_edges"][edge_id]
    left_exp = exponent(data["factor"]["vertices"][left]["row"], f"factor edge {edge_id} left")
    right_exp = exponent(data["factor"]["vertices"][right]["row"], f"factor edge {edge_id} right")
    term_expressions = [
        f"({left_exp} + {right_exp})",
        left_exp,
        right_exp,
        "(0 : LaurentExponent (Fin 144))",
    ]
    permutation = payload["provenance"]["source_to_factor_term_permutation"]
    if sorted(permutation) != list(range(4)):
        fail(f"factor edge {edge_id} term permutation changed")
    factor_terms = payload["provenance"]["factor_polynomial"]
    if [term["term_index"] for term in factor_terms] != list(range(4)):
        fail(f"factor edge {edge_id} factor-term order changed")
    h_lines: list[str] = []
    for term_index in range(4):
        use_index = permutation.index(term_index)
        use = reduction_uses[use_index]
        signed = integer(use["coefficient"], "factor coefficient")
        if integer(use["reduction"]["signExponent"], "factor sign") % 2:
            signed = -signed
        expected = integer(payload["unit"], "factor unit") * integer(
            factor_terms[term_index]["coefficient"], "factor polynomial coefficient"
        )
        if signed != expected:
            fail(f"factor edge {edge_id} signed coefficient permutation changed")
        target = exponent(use["targetExponent"], f"factor edge {edge_id} target {use_index}")
        h_lines.append(
            f"  have h{term_index:02d} : shift + {term_expressions[term_index]} = {target} := by\n"
            "    unfold shift\n"
            "    abel"
        )
    monomials = ", ".join(f"monomial{i:02d}" for i in range(4))
    return module_header(
        [f"{factor_base(edge_id)}.Uses"],
        f"# Component-A factor edge {edge_id}: translated product equality",
    ) + internal_begin("Factor", edge_id) + f'''theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • LaurentPolynomial.translate shift
        ((tropicalComponentARawFactor8 {left}).factorProductPolynomial
          (tropicalComponentARawFactor8 {right})) := by
{chr(10).join(h_lines)}
  simp [use, {monomials}, shift, tropicalComponentARawFactor8,
    SignedCharacterRow.factorProductPolynomial, signedCoefficient,
    tropicalComponentATranslate_sub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, Fin.sum_univ_succ,
    h00, h01, h02, h03] <;> abel
''' + internal_end("Factor", edge_id) + FOOTER


def emit_factor_certificate(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    left, right = data["factor"]["raw_edges"][edge_id]
    quotient_id = witness["source_quotient_index"]
    cert_name = f"tropicalComponentAFactorCertificate8_{edge_id:03d}"
    ns = internal_namespace("Factor", edge_id)
    return module_header(
        [f"{factor_base(edge_id)}.SourceEq", f"{factor_base(edge_id)}.TargetEq"],
        f"# Component-A factor edge {edge_id}: certificate",
    ) + f'''/-- Exact Laurent factor certificate for raw edge {edge_id}. -/
def {cert_name} :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 {quotient_id})
      (tropicalComponentARawFactor8 {left})
      (tropicalComponentARawFactor8 {right}) where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  shift := {ns}.shift
  reduction := {{
    use := {ns}.use
    source_eq := {ns}.source_eq
    target_eq := {ns}.target_eq
  }}
''' + FOOTER


def emit_factor_hold(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    left, right = data["factor"]["raw_edges"][edge_id]
    quotient_id = witness["source_quotient_index"]
    cert_name = f"tropicalComponentAFactorCertificate8_{edge_id:03d}"
    return module_header(
        [f"{factor_base(edge_id)}.Certificate",
         "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient"],
        f"# Component-A factor edge {edge_id}: semantic hold",
    ) + f'''theorem tropicalComponentARawFactorEdgeProduct8_{edge_id:03d}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentARawFactor8 {left}).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentARawFactor8 {right}).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientRelation8 {quotient_id})
    (tropicalComponentARawFactor8 {left})
    (tropicalComponentARawFactor8 {right})
    {cert_name} hChars
    (tropicalComponentAQuotientRelations8_hold hSupport hEq hChars {quotient_id})
''' + FOOTER


def emit_factor_collector(edge_id: int) -> str:
    return (f"import {factor_base(edge_id)}.Hold\n\n"
            f"/-! Public collector for Component-A factor edge {edge_id}. -/\n")


def emit_factor_aggregator() -> str:
    imports = [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E{i:03d}"
        for i in range(RAW_EDGE_COUNT)
    ]
    cases = "\n".join(
        f"  · simpa [tropicalComponentARawFactorEdgePair8] using\n"
        f"      tropicalComponentARawFactorEdgeProduct8_{i:03d} hSupport hEq hChars"
        for i in range(RAW_EDGE_COUNT)
    )
    return module_header(
        imports,
        "# All 68 Component-A raw factor products",
    ) + f'''/-- Product vanishing for every explicitly indexed raw edge. -/
theorem tropicalComponentARawFactorEdgeProductsByIndex8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∀ e : Fin {RAW_EDGE_COUNT},
      (tropicalComponentARawFactor8
          (tropicalComponentARawFactorEdgePair8 e).1).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentARawFactor8
          (tropicalComponentARawFactorEdgePair8 e).2).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro e
  fin_cases e
{cases}

/-- Product vanishing for the exact symmetric raw adjacency relation. -/
theorem tropicalComponentARawFactorProducts8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∀ ⦃r s⦄, tropicalComponentARawFactorEdge8 r s →
      (tropicalComponentARawFactor8 r).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentARawFactor8 s).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro r s hrs
  rcases hrs with ⟨e, hpair | hpair⟩
  · simpa [hpair] using
      tropicalComponentARawFactorEdgeProductsByIndex8 hSupport hEq hChars e
  · simpa [hpair, mul_comm] using
      tropicalComponentARawFactorEdgeProductsByIndex8 hSupport hEq hChars e
''' + FOOTER


def emit_graph_exact() -> str:
    row_theorems = []
    for raw in range(RAW_VERTEX_COUNT):
        row_theorems.append(f'''private theorem tropicalComponentARawFactorEdge8_row{raw:02d}
    (s : Fin {RAW_VERTEX_COUNT}) :
    tropicalComponentARawFactorEdge8 {raw} s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 {raw})
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide
''')
    cases = "\n".join(
        f"  · exact tropicalComponentARawFactorEdge8_row{raw:02d} s"
        for raw in range(RAW_VERTEX_COUNT)
    )
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data"],
        "# Exact raw/class graph quotient\n\nEach row is checked separately so the 59-by-59 finite equality is not one\nmonolithic kernel reduction.",
    ) + "\n".join(row_theorems) + f'''\n/-- The class graph is the exact adjacency quotient of the 68 raw edges. -/
theorem tropicalComponentARawFactorEdge8_iff_classEdge
    (r s : Fin {RAW_VERTEX_COUNT}) :
    tropicalComponentARawFactorEdge8 r s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 r)
        (tropicalComponentARawFactorClass8 s) := by
  fin_cases r
{cases}
''' + FOOTER


def emit_graph() -> str:
    membership = []
    for class_id in range(CLASS_COUNT):
        membership.append(f'''private theorem tropicalComponentAClassMembers8_class{class_id:02d}
    (r : Fin {RAW_VERTEX_COUNT}) :
    r ∈ tropicalComponentAClassMembers8 {class_id} ↔
      tropicalComponentARawFactorClass8 r = {class_id} := by
  revert r
  decide
''')
    member_cases = "\n".join(
        f"  · exact tropicalComponentAClassMembers8_class{class_id:02d} r"
        for class_id in range(CLASS_COUNT)
    )
    return module_header(
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphExact",
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor",
        ],
        "# Component-A false-twin classes and cover dispatch",
    ) + "\n".join(membership) + f'''\n/-- Exact membership characterization for all 15 false-twin classes. -/
theorem tropicalComponentAClassMembers8_iff
    (c : Fin {CLASS_COUNT}) (r : Fin {RAW_VERTEX_COUNT}) :
    r ∈ tropicalComponentAClassMembers8 c ↔
      tropicalComponentARawFactorClass8 r = c := by
  fin_cases c
{member_cases}

/-- Every existing class edge expands to a complete bipartite raw graph, with
membership and adjacency both checked from their exact finite tables. -/
theorem tropicalComponentACompleteBipartiteQuotient8 :
    IsCompleteBipartiteQuotient
      tropicalComponentARawFactorEdge8 componentAFactorEdge8
      tropicalComponentAClassMembers8 := by
  intro c d hcd r s hrc hsd
  have hrc' : tropicalComponentARawFactorClass8 r = c :=
    (tropicalComponentAClassMembers8_iff c r).mp hrc
  have hsd' : tropicalComponentARawFactorClass8 s = d :=
    (tropicalComponentAClassMembers8_iff d s).mp hsd
  rw [tropicalComponentARawFactorEdge8_iff_classEdge]
  simpa [hrc', hsd'] using hcd

/-- Exact Component-A dispatch to the already checked 54-row class-cover
table.  The cover table is imported and is not duplicated here. -/
theorem tropicalComponentA_allZero_class_cover8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∃ i : Fin 54, ∀ c ∈ componentACover8 i,
      AllZeroInClass tropicalComponentAClassMembers8
        (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c :=
  exists_listed_allZero_cover
    tropicalComponentARawFactorEdge8 componentAFactorEdge8
    tropicalComponentAClassMembers8
    (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
      (tropicalSupportWeight8 W))
    componentACover8 componentACover8_complete
    tropicalComponentACompleteBipartiteQuotient8
    (tropicalComponentARawFactorProducts8 hSupport hEq hChars)
''' + FOOTER


def emit_umbrella() -> str:
    return '''import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Graph

/-!
# Complete Component-A tropical factor semantics

This umbrella exports the 70 quotient relations, 59 raw factors, 68 exact
factor certificates, 15 false-twin member sets, the exact raw/class graph
quotient, and the sound all-zero dispatch through the existing 54-cover table.
-/
'''


def validate_generated_layout(
    generated: Sequence[Path], output: Path, umbrella: Path
) -> None:
    expected_total = (
        1
        + SOURCE_COUNT * (6 + 6)
        + 1
        + QUOTIENT_COUNT * (12 + 7)
        + 1
        + RAW_EDGE_COUNT * (4 + 6)
        + 1
        + 2
        + 1
    )
    if len(generated) != expected_total:
        fail(
            f"generated module count changed: {len(generated)} != {expected_total}"
        )
    if len(set(generated)) != len(generated):
        fail("generated Component-A module paths are not unique")
    expected_paths = {path for path in generated if path != umbrella}
    actual_paths = set(output.rglob("*.lean"))
    if actual_paths != expected_paths:
        missing = sorted(str(path) for path in expected_paths - actual_paths)
        stale = sorted(str(path) for path in actual_paths - expected_paths)
        fail(f"generated Component-A layout mismatch; missing={missing}, stale={stale}")

    algebraic_paths = [
        path for path in expected_paths
        if path.relative_to(output).parts[0] in {"Source", "Quotient", "Factor"}
    ]
    forbidden = {
        "decide": "finite decision procedure leaked into an algebraic leaf",
        "Finsupp.support": "Finsupp support inspection leaked into an algebraic leaf",
        "Quot.": "quotient representation inspection leaked into an algebraic leaf",
        "apply SignedCharacterRow.ext <;>": "whole-row decision proof leaked into a monomial leaf",
    }
    for path in algebraic_paths:
        contents = path.read_text()
        for needle, message in forbidden.items():
            if needle in contents:
                fail(f"{message}: {path}")
        relative = path.relative_to(output)
        is_hold = relative.name == "Hold.lean"
        if "TropicalRetainedRelations8" in contents and not (
            relative.parts[0] == "Source" and is_hold
        ):
            fail(f"retained semantic dependency escaped a source Hold leaf: {path}")
        if "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source\n" in contents and not (
            relative.parts[0] == "Quotient" and is_hold
        ):
            fail(f"full Source fan-in escaped a quotient Hold leaf: {path}")
        if "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient\n" in contents and not (
            relative.parts[0] == "Factor" and is_hold
        ):
            fail(f"full Quotient fan-in escaped a factor Hold leaf: {path}")

    stage_counts = {
        "source monomial": len(list(output.glob("Source/S*/Monomial/M*.lean"))),
        "source equality": len(list(output.glob("Source/S*/*Eq.lean"))),
        "quotient monomial": len(list(output.glob("Quotient/Q*/Monomial/M*.lean"))),
        "quotient equality": len(list(output.glob("Quotient/Q*/*Eq.lean"))),
        "factor monomial": len(list(output.glob("Factor/E*/Monomial/M*.lean"))),
        "factor equality": len(list(output.glob("Factor/E*/*Eq.lean"))),
    }
    expected_stage_counts = {
        "source monomial": SOURCE_COUNT * 6,
        "source equality": SOURCE_COUNT * 2,
        "quotient monomial": QUOTIENT_COUNT * 12,
        "quotient equality": QUOTIENT_COUNT * 3,
        "factor monomial": RAW_EDGE_COUNT * 4,
        "factor equality": RAW_EDGE_COUNT * 2,
    }
    if stage_counts != expected_stage_counts:
        fail(
            f"generated algebraic-stage counts changed: "
            f"{stage_counts} != {expected_stage_counts}"
        )
    for family, prefix, count in (
        ("Source", "S", SOURCE_COUNT),
        ("Quotient", "Q", QUOTIENT_COUNT),
        ("Factor", "E", RAW_EDGE_COUNT),
    ):
        for row_id in range(count):
            collector = output / family / f"{prefix}{row_id:03d}.lean"
            text = collector.read_text()
            if "decide" in text or text.count("import ") != 1:
                fail(f"collector is not a decision-free single import: {collector}")

    data_text = (output / "Data.lean").read_text()
    if "TropicalRetainedRelations8" in data_text:
        fail("Data.lean regained the full retained-relation dependency")
    graph_exact = (output / "GraphExact.lean").read_text().splitlines()
    if graph_exact[0] != "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data":
        fail("GraphExact.lean is not data-only")
    graph_imports = (output / "Graph.lean").read_text().splitlines()[:2]
    if graph_imports != [
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphExact",
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor",
    ]:
        fail("Graph.lean dependency split changed")


def generate(data: dict[str, Any], output: Path, umbrella: Path) -> list[Path]:
    generated: list[Path] = []

    def put(relative: str, contents: str) -> None:
        path = output / relative
        write(path, contents)
        generated.append(path)

    put("Data.lean", emit_data(data))
    for source_id in range(SOURCE_COUNT):
        uses = data["quotient"]["source_reductions"][source_id]["certificate"]["reduction"]["use"]
        for use_index, use in enumerate(uses):
            put(
                f"Source/S{source_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Source", source_id, use_index),
            )
        put(f"Source/S{source_id:03d}/Uses.lean", emit_source_uses(data, source_id))
        put(f"Source/S{source_id:03d}/SourceEq.lean", emit_source_eq(data, source_id))
        put(f"Source/S{source_id:03d}/TargetEq.lean", emit_source_target_eq(data, source_id))
        put(f"Source/S{source_id:03d}/Certificate.lean", emit_source_certificate(data, source_id))
        put(f"Source/S{source_id:03d}/Hold.lean", emit_source_hold(data, source_id))
        put(f"Source/S{source_id:03d}.lean", emit_source_collector(source_id))
    put("Source.lean", emit_source_aggregator())
    for quotient_id in range(QUOTIENT_COUNT):
        uses = data["quotient"]["rows"][quotient_id]["combination_reduction"]["reduction"]["use"]
        for use_index, use in enumerate(uses):
            put(
                f"Quotient/Q{quotient_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Quotient", quotient_id, use_index),
            )
        put(f"Quotient/Q{quotient_id:03d}/Uses.lean", emit_quotient_uses(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/SourceEq.lean", emit_quotient_source_eq(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/TargetEq.lean", emit_quotient_target_eq(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/ShiftedEq.lean", emit_quotient_shifted_eq(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/Certificate.lean", emit_quotient_certificate(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/Hold.lean", emit_quotient_hold(quotient_id))
        put(f"Quotient/Q{quotient_id:03d}.lean", emit_quotient_collector(quotient_id))
    put("Quotient.lean", emit_quotient_aggregator())
    for edge_id in range(RAW_EDGE_COUNT):
        uses = data["factor"]["edge_witnesses"][edge_id]["factor_certificate"]["reduction"]["use"]
        for use_index, use in enumerate(uses):
            put(
                f"Factor/E{edge_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Factor", edge_id, use_index),
            )
        put(f"Factor/E{edge_id:03d}/Uses.lean", emit_factor_uses(data, edge_id))
        put(f"Factor/E{edge_id:03d}/SourceEq.lean", emit_factor_source_eq(data, edge_id))
        put(f"Factor/E{edge_id:03d}/TargetEq.lean", emit_factor_target_eq(data, edge_id))
        put(f"Factor/E{edge_id:03d}/Certificate.lean", emit_factor_certificate(data, edge_id))
        put(f"Factor/E{edge_id:03d}/Hold.lean", emit_factor_hold(data, edge_id))
        put(f"Factor/E{edge_id:03d}.lean", emit_factor_collector(edge_id))
    put("Factor.lean", emit_factor_aggregator())
    put("GraphExact.lean", emit_graph_exact())
    put("Graph.lean", emit_graph())
    write(umbrella, emit_umbrella())
    generated.append(umbrella)
    validate_generated_layout(generated, output, umbrella)
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
        with tempfile.TemporaryDirectory(prefix="factor_a_lean_check_", dir="/tmp") as raw:
            temporary_root = Path(raw)
            temporary = temporary_root / "TropicalFactorA8"
            temporary_umbrella = temporary_root / "TropicalFactorA8.lean"
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
                fail("generated Component-A Lean files are stale")
        print("Component-A generated Lean files are current")
        return
    generated = generate(data, args.output, args.umbrella)
    print(f"generated {len(generated)} Component-A Lean modules")


if __name__ == "__main__":
    main()

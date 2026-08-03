#!/usr/bin/env python3
"""Generate the kernel-replayed Component-B tropical factor semantics.

The input JSON is a finite certificate payload, not a proof oracle.  This
translator pins the complete input by SHA-256, validates its exact dimensions
and cross references, and emits Lean declarations which replay every Laurent
polynomial equality, signed-character implication, shifted combination,
factorization, false-twin membership, and complete-bipartite quotient claim.

The output is intentionally highly sharded.  Every normalized source,
quotient row, and factor edge has row-local data; every monomial implication
and polynomial equality is a separate bounded leaf module.  Quotient holds
import only their two source holds, and factor holds import only their one
quotient hold.  No generated declaration has a heartbeat limit above eight
million, and no Laurent-polynomial equality is delegated to `decide`.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
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

# The Component-B source slice uses exactly base rows 100--139.  Pin their
# already-authoritative ternary coloring codes here so a row-local exponent
# replay never has to reduce the 200-entry base-color vector.
BASE_COLORING_CODE_100_TO_139 = (
    2972, 2975, 2990, 2993, 3051, 3053, 3054, 3056, 3069, 3071,
    3072, 3074, 3132, 3134, 3135, 3137, 3150, 3152, 3153, 3155,
    3215, 3218, 3233, 3236, 3294, 3296, 3297, 3299, 3312, 3314,
    3315, 3317, 3375, 3377, 3378, 3380, 3393, 3395, 3396, 3398,
)

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


def add_sparse_exponent_tuples(
    left: tuple[tuple[int, int], ...],
    right: tuple[tuple[int, int], ...],
) -> tuple[tuple[int, int], ...]:
    values: dict[int, int] = {}
    for local, value in (*left, *right):
        values[local] = values.get(local, 0) + value
    return tuple(sorted((local, value) for local, value in values.items() if value))


def translated_canonical_polynomial(
    canonical: tuple[tuple[tuple[tuple[int, int], ...], int], ...],
    shift_rows: Any,
    scale: int,
) -> tuple[tuple[tuple[tuple[int, int], ...], int], ...]:
    shift = tuple(
        (row["local"], row["exp"])
        for row in check_sparse_exponent(shift_rows, "translated polynomial shift")
    )
    aggregate: dict[tuple[tuple[int, int], ...], int] = {}
    for term_exponent, coefficient in canonical:
        translated = add_sparse_exponent_tuples(shift, term_exponent)
        aggregate[translated] = aggregate.get(translated, 0) + scale * coefficient
    return tuple(sorted((term, coefficient) for term, coefficient in aggregate.items() if coefficient))


def add_canonical_polynomials(
    *polynomials: tuple[tuple[tuple[tuple[int, int], ...], int], ...],
) -> tuple[tuple[tuple[tuple[int, int], ...], int], ...]:
    aggregate: dict[tuple[tuple[int, int], ...], int] = {}
    for polynomial_ in polynomials:
        for term, coefficient in polynomial_:
            aggregate[term] = aggregate.get(term, 0) + coefficient
    return tuple(sorted((term, coefficient) for term, coefficient in aggregate.items() if coefficient))


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
        translated_sources = []
        for use in uses:
            source_id = use["source_reduction_id"]
            source_target = canonical_polynomial(
                source_reductions[source_id]["certificate"]["provenance"]
                    ["normalized_target"],
                f"quotient row {row_index} shifted source {source_id}",
            )
            translated_sources.append(
                translated_canonical_polynomial(
                    source_target, use["shift"], use["integer_scale"]
                )
            )
        shifted_aggregate = add_canonical_polynomials(*translated_sources)
        expected_intermediate = canonical_polynomial(
            row["combination_reduction"]["reduction"]["source_eq"]["rhs"],
            f"quotient row {row_index} expected shifted aggregate",
        )
        if shifted_aggregate != expected_intermediate:
            fail(f"quotient row {row_index} shifted aggregate is inconsistent")
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
        payload = witness["factor_certificate"]
        left_exponent = tuple(
            (row["local"], row["exp"])
            for row in check_sparse_exponent(
                vertices[left]["row"], f"raw edge {edge_index} left factor"
            )
        )
        right_exponent = tuple(
            (row["local"], row["exp"])
            for row in check_sparse_exponent(
                vertices[right]["row"], f"raw edge {edge_index} right factor"
            )
        )
        left_sign = 1 if vertices[left]["bit"] % 2 == 0 else -1
        right_sign = 1 if vertices[right]["bit"] % 2 == 0 else -1
        raw_product = add_canonical_polynomials(
            ((add_sparse_exponent_tuples(left_exponent, right_exponent), 1),),
            ((left_exponent, -right_sign),),
            ((right_exponent, -left_sign),),
            (((), left_sign * right_sign),),
        )
        translated_product = translated_canonical_polynomial(
            raw_product, payload["shift"], payload["unit"]
        )
        expected_product = canonical_polynomial(
            payload["reduction"]["target_eq"]["rhs"],
            f"raw edge {edge_index} expected translated product",
        )
        if translated_product != expected_product:
            fail(f"raw edge {edge_index} translated factor product is inconsistent")

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
    return "".join(f"import {name}\n" for name in imports) + f'''\n/-!\n{doc}\n-/\n\nnamespace MonochromaticQuantumGraphs.N8D3\n\nopen MonochromaticQuantumGraph\nopen MonochromaticQuantumGraphs\nopen scoped BigOperators\n\nnoncomputable section\n\nset_option maxRecDepth 100000\nset_option maxHeartbeats 8000000\n\n'''


FOOTER = "\nend\n\nend MonochromaticQuantumGraphs.N8D3\n"


def write(path: Path, contents: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(contents)


def normalize_exponent_rows(
    *groups: Sequence[dict[str, Any]],
) -> list[dict[str, int]]:
    """Add sparse exponents without involving the Lean `Finsupp` quotient."""
    values: dict[int, int] = {}
    for group in groups:
        for row in group:
            local = integer(row["local"], "combined exponent local")
            values[local] = values.get(local, 0) + integer(
                row["exp"], "combined exponent value"
            )
    return [
        {"local": local, "global": local, "exp": value}
        for local, value in sorted(values.items())
        if value
    ]


def stage_namespace(stage: str, index: int) -> str:
    return f"TropicalFactorB8.Internal.{stage}{index:03d}"


def stage_module(stage: str, index: int) -> str:
    letter = {"Source": "S", "Quotient": "Q", "Factor": "E"}[stage]
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8."
        f"{stage}.{letter}{index:03d}"
    )


def namespace_block(namespace: str, body: str) -> str:
    return f"namespace {namespace}\n\n{body}\nend {namespace}\n"


def monomial_names(use_count: int) -> str:
    return ",\n    ".join(f"monomial{i:02d}" for i in range(use_count))


def emit_core() -> str:
    return module_header(
        [
            "MonochromaticQuantumGraphs.LaurentPolynomialCertificate",
            "MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8",
        ],
        "# Lightweight common definitions for Component-B factor replay",
    ) + '''/-- Adapt three coefficients to the two Component-B characters and the
universal parity generator. -/
def tropicalComponentBWithParityCoefficients8
    (coeff : Fin 3 → ℤ) : Sum (Fin 2) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 2)

/-- Translation is additive over subtraction.  This structural lemma avoids
unfolding the quotient-backed `Finsupp` implementation in factor leaves. -/
theorem tropicalComponentBTranslateSub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact LinearMap.map_sub (LaurentPolynomial.translateLinear shift) p q
''' + FOOTER


def emit_graph_data(data: dict[str, Any]) -> str:
    factor = data["factor"]
    edge_pairs = [f"({edge[0]}, {edge[1]})" for edge in factor["raw_edges"]]
    edge_sources = [
        str(witness["source_quotient_index"])
        for witness in factor["edge_witnesses"]
    ]
    class_of: list[int | None] = [None] * RAW_VERTEX_COUNT
    member_sets: list[str] = []
    for class_row in factor["classes"]:
        members = class_row["vertex_ids"]
        member_sets.append(finset(members))
        for member in members:
            class_of[member] = class_row["class_id"]
    if any(value is None for value in class_of):
        fail("false-twin class dispatch is incomplete")
    return module_header(
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core",
            "MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentB8",
        ],
        "# Lightweight Component-B graph tables",
    ) + f'''/-- Exact unordered raw-factor edges in certificate order. -/
def tropicalComponentBRawFactorEdgePair8 :
    Fin {RAW_EDGE_COUNT} → Fin {RAW_VERTEX_COUNT} × Fin {RAW_VERTEX_COUNT} :=
{vector(edge_pairs, "  ")}

/-- Quotient row supplying each raw edge. -/
def tropicalComponentBRawFactorEdgeQuotient8 :
    Fin {RAW_EDGE_COUNT} → Fin {QUOTIENT_COUNT} :=
{vector(edge_sources, "  ")}

/-- Exact symmetric raw adjacency. -/
def tropicalComponentBRawFactorEdge8
    (r s : Fin {RAW_VERTEX_COUNT}) : Prop :=
  ∃ e : Fin {RAW_EDGE_COUNT},
    tropicalComponentBRawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentBRawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentBRawFactorClass8 :
    Fin {RAW_VERTEX_COUNT} → Fin {CLASS_COUNT} :=
{vector([str(value) for value in class_of], "  ")}

/-- Exact members of every false-twin class. -/
def tropicalComponentBClassMembers8 :
    Fin {CLASS_COUNT} → Finset (Fin {RAW_VERTEX_COUNT}) :=
{vector(member_sets, "  ")}
''' + FOOTER


def emit_public_data(data: dict[str, Any]) -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.GraphData"]
    imports += [
        f"{stage_module('Source', i)}.Data" for i in range(SOURCE_COUNT)
    ]
    imports += [
        f"{stage_module('Quotient', i)}.Data" for i in range(QUOTIENT_COUNT)
    ]
    imports += [
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8."
        f"Factor.Vertex.V{i:03d}" for i in range(RAW_VERTEX_COUNT)
    ]
    source_indices = [
        f"{stage_namespace('Source', i)}.retainedIndex"
        for i in range(SOURCE_COUNT)
    ]
    reduced = [
        f"{stage_namespace('Source', i)}.reduced"
        for i in range(SOURCE_COUNT)
    ]
    intermediate = [
        f"{stage_namespace('Quotient', i)}.intermediate"
        for i in range(QUOTIENT_COUNT)
    ]
    quotient = [
        f"{stage_namespace('Quotient', i)}.relation"
        for i in range(QUOTIENT_COUNT)
    ]
    factors = [
        f"TropicalFactorB8.Internal.Vertex{i:03d}.row"
        for i in range(RAW_VERTEX_COUNT)
    ]
    return module_header(
        imports,
        "# Public dispatch over row-local Component-B data\n\nEntries are declaration names, not repeated polynomial syntax. Certificate\nleaves never import this all-row collector.",
    ) + f'''/-- Retained row behind each unique quotient source reduction. -/
def tropicalComponentBQuotientSourceIndex8 : Fin {SOURCE_COUNT} → Fin 560 :=
{vector(source_indices, "  ")}

/-- Exact normalized target of each retained source reduction. -/
def tropicalComponentBQuotientReducedSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(reduced, "  ")}

/-- Exact shifted aggregate before each quotient reduction. -/
def tropicalComponentBQuotientIntermediate8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(intermediate, "  ")}

/-- The exact normalized Component-B quotient relations. -/
def tropicalComponentBQuotientRelation8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(quotient, "  ")}

/-- The exact raw signed-character factors. -/
def tropicalComponentBRawFactor8 :
    Fin {RAW_VERTEX_COUNT} → SignedCharacterRow (Fin 144) :=
{vector(factors, "  ")}
''' + FOOTER


def emit_monomial_leaf(
    stage: str,
    index: int,
    use_index: int,
    use: dict[str, Any],
) -> str:
    namespace = stage_namespace(stage, index)
    module = stage_module(stage, index)
    reduction = use["reduction"]
    coeffs = [
        z(integer(value, f"{stage} {index} monomial {use_index} coefficient"))
        for value in reduction["implication"]["coeff"]
    ]
    source = exponent(
        use["sourceExponent"], f"{stage} {index} monomial {use_index} source"
    )
    target = exponent(
        use["targetExponent"], f"{stage} {index} monomial {use_index} target"
    )
    body = f'''/-- Algebraic signed-character replay for monomial {use_index}. -/
def monomial{use_index:02d} :
    MonomialReductionCertificate tropicalComponentBCharacter8
      {source} {target} where
  signExponent := {z(integer(reduction["signExponent"], "monomial sign"))}
  implication := {{
    coeff := tropicalComponentBWithParityCoefficients8 {vector(coeffs, "      ")}
    combination_eq := by
      apply SignedCharacterRow.ext
      · simp [SignedCharacterRow.linearCombination,
          Fintype.sum_sum_type, Fin.sum_univ_succ,
          tropicalComponentBWithParityCoefficients8,
          SignedCharacterRow.withParityGenerator,
          SignedCharacterRow.parityGenerator,
          tropicalComponentBCharacter8, tropicalBinomialCharacter8,
          differenceRow] <;> abel
      · norm_num [SignedCharacterRow.linearCombination,
          Fintype.sum_sum_type, Fin.sum_univ_succ,
          tropicalComponentBWithParityCoefficients8,
          SignedCharacterRow.withParityGenerator,
          SignedCharacterRow.parityGenerator,
          tropicalComponentBCharacter8, tropicalBinomialCharacter8,
          differenceRow]
  }}
'''
    return module_header(
        [f"{module}.Data"],
        f"# {stage} {index}, monomial implication {use_index}",
    ) + namespace_block(namespace, body) + FOOTER


def emit_uses_module(
    stage: str,
    index: int,
    uses: Sequence[dict[str, Any]],
) -> str:
    namespace = stage_namespace(stage, index)
    module = stage_module(stage, index)
    imports = [f"{module}.Monomial.M{i:02d}" for i in range(len(uses))]
    items = []
    for use_index, use in enumerate(uses):
        items.append(f'''{{ coefficient := {z(integer(use["coefficient"], "use coefficient"))}
      sourceExponent := {exponent(use["sourceExponent"], "use source")}
      targetExponent := {exponent(use["targetExponent"], "use target")}
      reduction := monomial{use_index:02d} }}''')
    body = f'''/-- Decision-free collector of row-local monomial certificates. -/
def uses : Fin {len(uses)} →
    CharacterReductionUse tropicalComponentBCharacter8 :=
{vector(items, "  ")}
'''
    return module_header(
        imports, f"# {stage} {index} reduction-use collector"
    ) + namespace_block(namespace, body) + FOOTER


def source_data_import_and_expression(
    source: dict[str, Any],
) -> tuple[str, str]:
    relation = source["relation_source"]
    if relation["kind"] == "base":
        return (
            "MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8",
            f"tropicalBaseRelation8 {relation['index']}",
        )
    overlap = relation["index"]
    shard, row = divmod(overlap, 5)
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8."
        f"Shard{shard}.Row{row}.Data",
        f"tropicalOverlapRelation8Row{overlap}",
    )


def emit_source_data(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    payload = source["certificate"]
    namespace = stage_namespace("Source", source_id)
    extra_import, source_expression = source_data_import_and_expression(source)
    body = f'''/-- Global retained index represented by this row-local shard. -/
def retainedIndex : Fin 560 := {source["relation_source"]["combined_index"]}

/-- Exact semantic source polynomial without an all-row dispatcher. -/
def sourcePolynomial : LaurentPolynomial (Fin 144) :=
  {source_expression}

/-- Exact normalized target for source reduction {source_id}. -/
def reduced : LaurentPolynomial (Fin 144) :=
  {polynomial(payload["provenance"]["normalized_target"], f"source {source_id} reduced")}
'''
    return module_header(
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core",
            extra_import,
        ],
        f"# Row-local data for Component-B source reduction {source_id}",
    ) + namespace_block(namespace, body) + FOOTER


def emit_source_source_eq(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    reduction = source["certificate"]["reduction"]
    namespace = stage_namespace("Source", source_id)
    module = stage_module("Source", source_id)
    relation = source["relation_source"]
    proof_prefix = ""
    extra_imports: list[str] = []
    extra_simp = ""
    if relation["kind"] == "base":
        base_index = relation["index"]
        if not 100 <= base_index <= 139:
            fail(f"unexpected Component-B base source index {base_index}")
        code = BASE_COLORING_CODE_100_TO_139[base_index - 100]
        rhs_terms = polynomial_entries(
            reduction["source_eq"]["rhs"], f"source {source_id} base rhs"
        )
        if len(rhs_terms) != 6 or any(
            coefficient != 1 or len(rows) != 4
            for coefficient, rows in rhs_terms
        ):
            fail(f"base source {source_id} is not six squarefree monomials")
        extra_imports.append(
            "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data"
        )
        replay_chunks = [
            f"  have hcolor : tropicalBaseColoring8 {base_index} =\n"
            f"      tropicalColoringOfCode8 {code} := by rfl"
        ]
        matching_indices = (0, 1, 6, 21, 24, 40)
        for term_index, ((_, rows), matching) in enumerate(
            zip(rhs_terms, matching_indices)
        ):
            locals_ = " ".join(str(row["local"]) for row in rows)
            replay_chunks.append(f'''  have hexp{term_index} :
      tropicalMatchingLocalExponent8 (tropicalColoringOfCode8 {code}) {matching} =
        {exponent(rows, f"source {source_id} base exponent {term_index}")} := by
    rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
      (tropicalColoringOfCode8 {code}) {matching} {locals_}
      (by decide) (by decide) (by decide) (by decide)]
    abel''')
        proof_prefix = "\n".join(replay_chunks) + "\n"
        extra_simp = ", hcolor, " + ", ".join(
            f"hexp{i}" for i in range(6)
        ) + ", tropicalBaseMatching8"
    else:
        extra_simp = f", tropicalOverlapRelation8Row{relation['index']}"
    body = f'''/-- Sparse source-polynomial equality for source reduction {source_id}. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
{proof_prefix}  simp [uses, {monomial_names(6)}, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ{extra_simp}] <;> abel
'''
    return module_header(
        [f"{module}.Uses", *extra_imports],
        f"# Source {source_id} sparse source equality",
    ) + namespace_block(namespace, body) + FOOTER


def emit_target_eq(
    stage: str,
    index: int,
    use_count: int,
    unit: int,
    target: str,
) -> str:
    namespace = stage_namespace(stage, index)
    module = stage_module(stage, index)
    body = f'''/-- Sparse signed target-polynomial equality. -/
theorem target_eq :
    (∑ k : Fin {use_count},
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      {z(unit)} • {target} := by
  simp [uses, {monomial_names(use_count)}, {target},
    signedCoefficient, Fin.sum_univ_succ] <;> abel
'''
    return module_header(
        [f"{module}.Uses"], f"# {stage} {index} sparse target equality"
    ) + namespace_block(namespace, body) + FOOTER


def emit_source_certificate(data: dict[str, Any], source_id: int) -> str:
    payload = data["quotient"]["source_reductions"][source_id]["certificate"]
    namespace = stage_namespace("Source", source_id)
    module = stage_module("Source", source_id)
    body = f'''/-- Exact normalized reduction of row-local retained source {source_id}. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentBCharacter8 sourcePolynomial reduced where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{ use := uses, source_eq := source_eq, target_eq := target_eq }}
'''
    alias = f'''\n/-- Public source-certificate API for row {source_id}. -/
def tropicalComponentBSourceReductionCertificate8_{source_id:03d} :=
  {namespace}.certificate
'''
    return module_header(
        [f"{module}.SourceEq", f"{module}.TargetEq"],
        f"# Source {source_id} decision-free certificate assembly",
    ) + namespace_block(namespace, body) + alias + FOOTER


def emit_source_hold(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    namespace = stage_namespace("Source", source_id)
    module = stage_module("Source", source_id)
    relation = source["relation_source"]
    if relation["kind"] == "base":
        source_hold = (
            "  have hsource := tropicalBaseRelations8_hold hSupport hEq "
            f"({relation['index']} : Fin 200)\n"
        )
    else:
        overlap = relation["index"]
        source_hold = f'''  have hi := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row{overlap}.sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row{overlap}.sourceJ
  have hsource : sourcePolynomial.Holds (tropicalSupportWeight8 W) := by
    rw [sourcePolynomial, tropicalOverlapRelation8_provenance_row{overlap}]
    unfold tropicalOverlapProvenancePolynomial8
    unfold LaurentPolynomial.Holds at hi hj ⊢
    rw [LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_sub,
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport),
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport), hi, hj]
    simp
'''
    body = f'''/-- Semantic hold for the row-local normalized source. -/
theorem hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
{source_hold}  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 sourcePolynomial reduced
    tropicalComponentBSourceReductionCertificate8_{source_id:03d}
    hChars hsource
'''
    return module_header(
        [
            f"{module}.Certificate",
            "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8",
        ],
        f"# Source {source_id} semantic hold (the only retained aggregate import)",
    ) + namespace_block(namespace, body) + FOOTER


def emit_source_row_collector(source_id: int) -> str:
    module = stage_module("Source", source_id)
    return module_header(
        [f"{module}.Hold"],
        f"# Complete row-local Component-B source reduction {source_id}",
    ) + FOOTER


def emit_source_aggregator() -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S{i:03d}"
        for i in range(SOURCE_COUNT)
    ]
    individual = []
    for i in range(SOURCE_COUNT):
        individual.append(f'''theorem tropicalComponentBSourceReduced8_{i:03d}_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBQuotientReducedSource8 {i}).Holds
      (tropicalSupportWeight8 W) := by
  simpa [tropicalComponentBQuotientReducedSource8] using
    {stage_namespace("Source", i)}.hold hSupport hEq hChars
''')
    cases = "\n".join(
        f"  · exact tropicalComponentBSourceReduced8_{i:03d}_hold "
        "hSupport hEq hChars"
        for i in range(SOURCE_COUNT)
    )
    return module_header(
        imports, f"# Public collector for all {SOURCE_COUNT} source reductions"
    ) + "\n".join(individual) + f'''\n/-- All normalized Component-B quotient sources hold. -/
theorem tropicalComponentBQuotientReducedSources8_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ s : Fin {SOURCE_COUNT},
      (tropicalComponentBQuotientReducedSource8 s).Holds
        (tropicalSupportWeight8 W) := by
  intro s
  fin_cases s
{cases}
''' + FOOTER


def emit_quotient_data(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    payload = row["combination_reduction"]
    namespace = stage_namespace("Quotient", quotient_id)
    source_ids = row["source_reduction_ids"]
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core"]
    imports += [
        f"{stage_module('Source', source_id)}.Data"
        for source_id in source_ids
    ]
    source_items = [
        f"{stage_namespace('Source', source_id)}.reduced"
        for source_id in source_ids
    ]
    shifted_items = []
    for local_index, use in enumerate(row["exact_source_uses"]):
        if use["source_reduction_id"] != source_ids[local_index]:
            fail(f"quotient {quotient_id} shifted source order changed")
        shifted_items.append(f'''{{ source := {local_index}
      scale := {z(use["integer_scale"])}
      shift := {exponent(use["shift"], f"quotient {quotient_id} shift") } }}''')
    body = f'''/-- The two row-local normalized source polynomials. -/
def shiftedSources : Fin 2 → LaurentPolynomial (Fin 144) :=
{vector(source_items, "  ")}

/-- Exact two-source shifted-combination data. -/
def shiftedUse :
    Fin 2 → LaurentPolynomial.ShiftedUse (Fin 2) (Fin 144) :=
{vector(shifted_items, "  ")}

/-- Exact aggregate before the final character reduction. -/
def intermediate : LaurentPolynomial (Fin 144) :=
  {polynomial(payload["reduction"]["source_eq"]["rhs"], f"quotient {quotient_id} intermediate")}

/-- Exact normalized quotient relation. -/
def relation : LaurentPolynomial (Fin 144) :=
  {polynomial(row["quotient_relation"], f"quotient {quotient_id} relation")}
'''
    return module_header(
        imports, f"# Row-local data for Component-B quotient {quotient_id}"
    ) + namespace_block(namespace, body) + FOOTER


def emit_quotient_shifted_eq(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    namespace = stage_namespace("Quotient", quotient_id)
    module = stage_module("Quotient", quotient_id)
    source_ids = row["source_reduction_ids"]
    exponent_lemmas: list[str] = []
    lemma_names: list[str] = []
    for local_index, use in enumerate(row["exact_source_uses"]):
        source_id = use["source_reduction_id"]
        source_payload = data["quotient"]["source_reductions"][source_id]
        source_terms = polynomial_entries(
            source_payload["certificate"]["provenance"]["normalized_target"],
            f"quotient {quotient_id} shifted source {local_index}",
        )
        for term_index, (_, term_rows) in enumerate(source_terms):
            name = f"hexp{local_index}_{term_index}"
            lemma_names.append(name)
            combined = normalize_exponent_rows(use["shift"], term_rows)
            exponent_lemmas.append(f'''  have {name} :
      {exponent(use["shift"], f"quotient {quotient_id} shift {local_index}")} +
        {exponent(term_rows, f"quotient {quotient_id} source exponent")} =
      {exponent(combined, f"quotient {quotient_id} translated exponent")} := by
    abel''')
    source_simp = ",\n    ".join(
        f"{stage_namespace('Source', source_id)}.reduced"
        for source_id in source_ids
    )
    body = f'''/-- Explicit sparse replay of the two-source shifted aggregate. -/
theorem shifted_eq :
    (∑ k : Fin 2, (shiftedUse k).scale •
      LaurentPolynomial.translate (shiftedUse k).shift
        (shiftedSources (shiftedUse k).source)) = intermediate := by
{chr(10).join(exponent_lemmas)}
  simp [shiftedUse, shiftedSources, {source_simp}, intermediate,
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single,
    Fin.sum_univ_succ, {', '.join(lemma_names)}] <;> abel
'''
    return module_header(
        [f"{module}.Data"],
        f"# Quotient {quotient_id} sparse shifted-combination equality",
    ) + namespace_block(namespace, body) + FOOTER


def emit_quotient_source_eq(data: dict[str, Any], quotient_id: int) -> str:
    namespace = stage_namespace("Quotient", quotient_id)
    module = stage_module("Quotient", quotient_id)
    body = f'''/-- Sparse source equality for the quotient character reduction. -/
theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      intermediate := by
  simp [uses, {monomial_names(12)}, intermediate,
    Fin.sum_univ_succ] <;> abel
'''
    return module_header(
        [f"{module}.Uses"], f"# Quotient {quotient_id} sparse source equality"
    ) + namespace_block(namespace, body) + FOOTER


def emit_quotient_certificate(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    payload = row["combination_reduction"]
    namespace = stage_namespace("Quotient", quotient_id)
    module = stage_module("Quotient", quotient_id)
    body = f'''/-- Exact shifted combination for quotient row {quotient_id}. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row {quotient_id}. -/
def reductionCertificate :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentBCharacter8 intermediate relation where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{ use := uses, source_eq := source_eq, target_eq := target_eq }}
'''
    aliases = f'''\n/-- Public shifted-certificate API for quotient row {quotient_id}. -/
def tropicalComponentBQuotientShiftedCertificate8_{quotient_id:03d} :=
  {namespace}.shiftedCertificate

/-- Public reduction-certificate API for quotient row {quotient_id}. -/
def tropicalComponentBQuotientReductionCertificate8_{quotient_id:03d} :=
  {namespace}.reductionCertificate
'''
    return module_header(
        [
            f"{module}.ShiftedEq",
            f"{module}.SourceEq",
            f"{module}.TargetEq",
        ],
        f"# Quotient {quotient_id} decision-free certificate assembly",
    ) + namespace_block(namespace, body) + aliases + FOOTER


def emit_quotient_hold(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    source_ids = row["source_reduction_ids"]
    namespace = stage_namespace("Quotient", quotient_id)
    module = stage_module("Quotient", quotient_id)
    imports = [f"{module}.Certificate"]
    imports += [
        f"{stage_module('Source', source_id)}.Hold"
        for source_id in source_ids
    ]
    source_cases = "\n".join(
        f"    · simpa [shiftedSources] using\n"
        f"        {stage_namespace('Source', source_id)}.hold "
        "hSupport hEq hChars"
        for source_id in source_ids
    )
    body = f'''/-- Row-local semantic hold for quotient relation {quotient_id}. -/
theorem hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    relation.Holds (tropicalSupportWeight8 W) := by
  have hsources : ∀ s : Fin 2,
      (shiftedSources s).Holds (tropicalSupportWeight8 W) := by
    intro s
    fin_cases s
{source_cases}
  have hintermediate :
      intermediate.Holds (tropicalSupportWeight8 W) :=
    LaurentPolynomial.holds_of_shiftedCombinationCertificate
      (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
      shiftedSources intermediate
      tropicalComponentBQuotientShiftedCertificate8_{quotient_id:03d}
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 intermediate relation
    tropicalComponentBQuotientReductionCertificate8_{quotient_id:03d}
    hChars hintermediate
'''
    return module_header(
        imports,
        f"# Quotient {quotient_id} local hold from exactly two source rows",
    ) + namespace_block(namespace, body) + FOOTER


def emit_quotient_row_collector(quotient_id: int) -> str:
    module = stage_module("Quotient", quotient_id)
    return module_header(
        [f"{module}.Hold"],
        f"# Complete row-local Component-B quotient {quotient_id}",
    ) + FOOTER


def emit_quotient_aggregator() -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q{i:03d}"
        for i in range(QUOTIENT_COUNT)
    ]
    individual = []
    for i in range(QUOTIENT_COUNT):
        individual.append(f'''theorem tropicalComponentBQuotientRelation8_{i:03d}_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBQuotientRelation8 {i}).Holds
      (tropicalSupportWeight8 W) := by
  simpa [tropicalComponentBQuotientRelation8] using
    {stage_namespace("Quotient", i)}.hold hSupport hEq hChars
''')
    cases = "\n".join(
        f"  · exact tropicalComponentBQuotientRelation8_{i:03d}_hold "
        "hSupport hEq hChars"
        for i in range(QUOTIENT_COUNT)
    )
    return module_header(
        imports, f"# Public collector for all {QUOTIENT_COUNT} quotient rows"
    ) + "\n".join(individual) + f'''\n/-- All exact Component-B quotient relations hold. -/
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


def emit_vertex(data: dict[str, Any], vertex_id: int) -> str:
    vertex = data["factor"]["vertices"][vertex_id]
    namespace = f"TropicalFactorB8.Internal.Vertex{vertex_id:03d}"
    body = f'''/-- Exact row-local raw factor {vertex_id}. -/
def row : SignedCharacterRow (Fin 144) :=
  {signed_row(vertex, f"raw factor {vertex_id}")}
'''
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core"],
        f"# Row-local raw Component-B factor {vertex_id}",
    ) + namespace_block(namespace, body) + FOOTER


def emit_factor_data(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    left, right = data["factor"]["raw_edges"][edge_id]
    quotient_id = witness["source_quotient_index"]
    namespace = stage_namespace("Factor", edge_id)
    imports = [
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core",
        f"{stage_module('Quotient', quotient_id)}.Data",
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8."
        f"Factor.Vertex.V{left:03d}",
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8."
        f"Factor.Vertex.V{right:03d}",
    ]
    body = f'''/-- Exact row-local quotient source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  {stage_namespace("Quotient", quotient_id)}.relation

/-- Left raw factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex{left:03d}.row

/-- Right raw factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorB8.Internal.Vertex{right:03d}.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  {exponent(payload["shift"], f"factor edge {edge_id} shift")}
'''
    return module_header(
        imports, f"# Row-local data for Component-B factor edge {edge_id}"
    ) + namespace_block(namespace, body) + FOOTER


def emit_factor_source_eq(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    quotient_id = witness["source_quotient_index"]
    namespace = stage_namespace("Factor", edge_id)
    module = stage_module("Factor", edge_id)
    body = f'''/-- Sparse source equality for factor edge {edge_id}. -/
theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourceRelation := by
  simp [uses, {monomial_names(4)}, sourceRelation,
    {stage_namespace("Quotient", quotient_id)}.relation,
    Fin.sum_univ_succ] <;> abel
'''
    return module_header(
        [f"{module}.Uses"], f"# Factor edge {edge_id} sparse source equality"
    ) + namespace_block(namespace, body) + FOOTER


def emit_factor_target_eq(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    left, right = data["factor"]["raw_edges"][edge_id]
    left_rows = data["factor"]["vertices"][left]["row"]
    right_rows = data["factor"]["vertices"][right]["row"]
    shift_rows = payload["shift"]
    structural = [
        normalize_exponent_rows(left_rows, right_rows),
        list(left_rows),
        list(right_rows),
        [],
    ]
    exponent_lemmas: list[str] = []
    for term_index, term_rows in enumerate(structural):
        combined = normalize_exponent_rows(shift_rows, term_rows)
        exponent_lemmas.append(f'''  have hexp{term_index} :
      shift + {exponent(term_rows, f"factor {edge_id} product exponent")} =
        {exponent(combined, f"factor {edge_id} translated exponent")} := by
    unfold shift
    abel''')
    namespace = stage_namespace("Factor", edge_id)
    module = stage_module("Factor", edge_id)
    body = f'''/-- Sparse translated-product equality for factor edge {edge_id}. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      {z(payload["unit"])} • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
{chr(10).join(exponent_lemmas)}
  simp [uses, {monomial_names(4)}, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex{left:03d}.row,
    TropicalFactorB8.Internal.Vertex{right:03d}.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel
'''
    return module_header(
        [f"{module}.Uses"],
        f"# Factor edge {edge_id} sparse translated-product equality",
    ) + namespace_block(namespace, body) + FOOTER


def emit_factor_certificate(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    namespace = stage_namespace("Factor", edge_id)
    module = stage_module("Factor", edge_id)
    body = f'''/-- Exact Laurent factor certificate for raw edge {edge_id}. -/
def certificate :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentBCharacter8
      sourceRelation leftFactor rightFactor where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  shift := shift
  reduction := {{ use := uses, source_eq := source_eq, target_eq := target_eq }}
'''
    alias = f'''\n/-- Public factor-certificate API for raw edge {edge_id}. -/
def tropicalComponentBFactorCertificate8_{edge_id:03d} :=
  {namespace}.certificate
'''
    return module_header(
        [f"{module}.SourceEq", f"{module}.TargetEq"],
        f"# Factor edge {edge_id} decision-free certificate assembly",
    ) + namespace_block(namespace, body) + alias + FOOTER


def emit_factor_hold(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    quotient_id = witness["source_quotient_index"]
    namespace = stage_namespace("Factor", edge_id)
    module = stage_module("Factor", edge_id)
    body = f'''/-- Row-local product vanishing for raw factor edge {edge_id}. -/
theorem product
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    leftFactor.factorValue (tropicalSupportWeight8 W) *
      rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 sourceRelation leftFactor rightFactor
    tropicalComponentBFactorCertificate8_{edge_id:03d} hChars
    (by
      simpa [sourceRelation] using
        {stage_namespace("Quotient", quotient_id)}.hold
          hSupport hEq hChars)
'''
    return module_header(
        [
            f"{module}.Certificate",
            f"{stage_module('Quotient', quotient_id)}.Hold",
        ],
        f"# Factor edge {edge_id} hold from exactly quotient row {quotient_id}",
    ) + namespace_block(namespace, body) + FOOTER


def emit_factor_row_collector(edge_id: int) -> str:
    module = stage_module("Factor", edge_id)
    return module_header(
        [f"{module}.Hold"],
        f"# Complete row-local Component-B factor edge {edge_id}",
    ) + FOOTER


def emit_factor_aggregator(data: dict[str, Any]) -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E{i:03d}"
        for i in range(RAW_EDGE_COUNT)
    ]
    individual: list[str] = []
    for i, (left, right) in enumerate(data["factor"]["raw_edges"]):
        individual.append(f'''theorem tropicalComponentBRawFactorEdgeProduct8_{i:03d}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 {left}).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 {right}).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    {stage_namespace("Factor", i)}.leftFactor,
    {stage_namespace("Factor", i)}.rightFactor] using
    {stage_namespace("Factor", i)}.product hSupport hEq hChars
''')
    cases = "\n".join(
        f"  · simpa [tropicalComponentBRawFactorEdgePair8] using\n"
        f"      tropicalComponentBRawFactorEdgeProduct8_{i:03d} "
        "hSupport hEq hChars"
        for i in range(RAW_EDGE_COUNT)
    )
    return module_header(
        imports, f"# Public collector for all {RAW_EDGE_COUNT} factor edges"
    ) + "\n".join(individual) + f'''\n/-- Product vanishing for every explicitly indexed raw edge. -/
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
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.GraphData"],
        "# Exact raw/class graph quotient over lightweight tables",
    ) + "\n".join(row_theorems) + f'''\n/-- The class graph is the exact adjacency quotient of the raw edges. -/
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
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.GraphExact",
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor",
        ],
        "# Component-B false-twin classes and cover dispatch",
    ) + '''open MonochromaticQuantumGraphs.FactorCoverCertificate

''' + "\n".join(membership) + f'''\n/-- Exact membership characterization for all false-twin classes. -/
theorem tropicalComponentBClassMembers8_iff
    (c : Fin {CLASS_COUNT}) (r : Fin {RAW_VERTEX_COUNT}) :
    r ∈ tropicalComponentBClassMembers8 c ↔
      tropicalComponentBRawFactorClass8 r = c := by
  fin_cases c
{member_cases}

/-- Every class edge expands to a complete bipartite raw graph. -/
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

/-- Exact dispatch to the existing {COVER_COUNT}-row class-cover table. -/
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
    return f'''import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Graph

/-!
# Complete Component-B tropical factor semantics

This umbrella exports the {QUOTIENT_COUNT} quotient relations,
{RAW_VERTEX_COUNT} raw factors, {RAW_EDGE_COUNT} exact factor certificates,
{CLASS_COUNT} false-twin member sets, the exact raw/class graph quotient, and
the sound all-zero dispatch through the existing {COVER_COUNT}-cover table.
-/
'''


def audit_generated(
    output: Path, umbrella: Path, generated: Sequence[Path]
) -> None:
    lean_paths = [path for path in generated if path != umbrella]
    expected_count = (
        SOURCE_COUNT * 13
        + QUOTIENT_COUNT * 20
        + RAW_VERTEX_COUNT
        + RAW_EDGE_COUNT * 11
        + 8
    )
    if len(lean_paths) != expected_count:
        fail(
            f"Component-B generated module count changed: "
            f"{len(lean_paths)} != {expected_count}"
        )

    contents = {path.relative_to(output): path.read_text() for path in lean_paths}
    proof_tree = {
        path: text
        for path, text in contents.items()
        if path.parts[0] in {"Source", "Quotient", "Factor"}
    }
    forbidden = (
        "apply SignedCharacterRow.ext <;> decide",
        "Quot.lift",
        ".support.val",
        "\n  decide\n",
        "native_decide",
    )
    for path, text in proof_tree.items():
        for token in forbidden:
            if token in text:
                fail(f"forbidden resource-heavy proof token {token!r} in {path}")
        for heartbeat in re.findall(r"set_option maxHeartbeats (\d+)", text):
            if int(heartbeat) > 8_000_000:
                fail(f"heartbeat ceiling exceeded in {path}")

    source_umbrella = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source\n"
    )
    quotient_umbrella = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient\n"
    )
    for path, text in contents.items():
        if path.parts[0] == "Quotient" and source_umbrella in text:
            fail(f"quotient leaf imports the full source collector: {path}")
        if path.parts[0] == "Factor" and quotient_umbrella in text:
            fail(f"factor leaf imports the full quotient collector: {path}")

    for quotient_id in range(QUOTIENT_COUNT):
        data_path = Path(f"Quotient/Q{quotient_id:03d}/Data.lean")
        hold_path = Path(f"Quotient/Q{quotient_id:03d}/Hold.lean")
        data_imports = re.findall(
            r"^import .*TropicalFactorB8\.Source\.S\d{3}\.Data$",
            contents[data_path], re.MULTILINE,
        )
        hold_imports = re.findall(
            r"^import .*TropicalFactorB8\.Source\.S\d{3}\.Hold$",
            contents[hold_path], re.MULTILINE,
        )
        if len(data_imports) != 2 or len(hold_imports) != 2:
            fail(f"quotient {quotient_id} does not have exactly two local sources")

    for edge_id in range(RAW_EDGE_COUNT):
        data_path = Path(f"Factor/E{edge_id:03d}/Data.lean")
        hold_path = Path(f"Factor/E{edge_id:03d}/Hold.lean")
        data_imports = re.findall(
            r"^import .*TropicalFactorB8\.Quotient\.Q\d{3}\.Data$",
            contents[data_path], re.MULTILINE,
        )
        hold_imports = re.findall(
            r"^import .*TropicalFactorB8\.Quotient\.Q\d{3}\.Hold$",
            contents[hold_path], re.MULTILINE,
        )
        if len(data_imports) != 1 or len(hold_imports) != 1:
            fail(f"factor edge {edge_id} does not have one local quotient source")

    retained_aggregate = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8\n"
    )
    for path, text in contents.items():
        if retained_aggregate in text and not (
            len(path.parts) == 3
            and path.parts[0] == "Source"
            and path.parts[2] == "Hold.lean"
        ):
            fail(f"retained aggregate escaped a source Hold leaf: {path}")
    if "TropicalFactorB8.Factor" in contents[Path("GraphExact.lean")]:
        fail("GraphExact imports the heavy factor collector")

    required_public = {
        Path("Data.lean"): (
            "def tropicalComponentBQuotientRelation8",
            "def tropicalComponentBRawFactor8",
        ),
        Path("Quotient.lean"): (
            "theorem tropicalComponentBQuotientRelations8_hold",
        ),
        Path("Factor.lean"): (
            "theorem tropicalComponentBRawFactorProducts8",
        ),
        Path("GraphExact.lean"): (
            "theorem tropicalComponentBRawFactorEdge8_iff_classEdge",
        ),
        Path("Graph.lean"): (
            "theorem tropicalComponentBClassMembers8_iff",
            "theorem tropicalComponentBCompleteBipartiteQuotient8",
            "theorem tropicalComponentB_allZero_class_cover8",
        ),
    }
    for path, declarations in required_public.items():
        for declaration in declarations:
            if declaration not in contents[path]:
                fail(f"missing public declaration {declaration!r} in {path}")


def generate(data: dict[str, Any], output: Path, umbrella: Path) -> list[Path]:
    generated: list[Path] = []

    def put(relative: str, contents: str) -> None:
        path = output / relative
        write(path, contents)
        generated.append(path)

    put("Core.lean", emit_core())
    put("GraphData.lean", emit_graph_data(data))

    for source_id in range(SOURCE_COUNT):
        source = data["quotient"]["source_reductions"][source_id]
        uses = source["certificate"]["reduction"]["use"]
        base = f"Source/S{source_id:03d}"
        put(f"{base}/Data.lean", emit_source_data(data, source_id))
        for use_index, use in enumerate(uses):
            put(
                f"{base}/Monomial/M{use_index:02d}.lean",
                emit_monomial_leaf("Source", source_id, use_index, use),
            )
        put(f"{base}/Uses.lean", emit_uses_module("Source", source_id, uses))
        put(f"{base}/SourceEq.lean", emit_source_source_eq(data, source_id))
        put(
            f"{base}/TargetEq.lean",
            emit_target_eq(
                "Source", source_id, 6, source["certificate"]["unit"], "reduced"
            ),
        )
        put(
            f"{base}/Certificate.lean",
            emit_source_certificate(data, source_id),
        )
        put(f"{base}/Hold.lean", emit_source_hold(data, source_id))
        put(f"Source/S{source_id:03d}.lean", emit_source_row_collector(source_id))

    for quotient_id in range(QUOTIENT_COUNT):
        row = data["quotient"]["rows"][quotient_id]
        payload = row["combination_reduction"]
        uses = payload["reduction"]["use"]
        base = f"Quotient/Q{quotient_id:03d}"
        put(f"{base}/Data.lean", emit_quotient_data(data, quotient_id))
        put(
            f"{base}/ShiftedEq.lean",
            emit_quotient_shifted_eq(data, quotient_id),
        )
        for use_index, use in enumerate(uses):
            put(
                f"{base}/Monomial/M{use_index:02d}.lean",
                emit_monomial_leaf("Quotient", quotient_id, use_index, use),
            )
        put(
            f"{base}/Uses.lean",
            emit_uses_module("Quotient", quotient_id, uses),
        )
        put(
            f"{base}/SourceEq.lean",
            emit_quotient_source_eq(data, quotient_id),
        )
        put(
            f"{base}/TargetEq.lean",
            emit_target_eq(
                "Quotient", quotient_id, 12, payload["unit"], "relation"
            ),
        )
        put(
            f"{base}/Certificate.lean",
            emit_quotient_certificate(data, quotient_id),
        )
        put(f"{base}/Hold.lean", emit_quotient_hold(data, quotient_id))
        put(
            f"Quotient/Q{quotient_id:03d}.lean",
            emit_quotient_row_collector(quotient_id),
        )

    for vertex_id in range(RAW_VERTEX_COUNT):
        put(f"Factor/Vertex/V{vertex_id:03d}.lean", emit_vertex(data, vertex_id))

    for edge_id in range(RAW_EDGE_COUNT):
        witness = data["factor"]["edge_witnesses"][edge_id]
        uses = witness["factor_certificate"]["reduction"]["use"]
        base = f"Factor/E{edge_id:03d}"
        put(f"{base}/Data.lean", emit_factor_data(data, edge_id))
        for use_index, use in enumerate(uses):
            put(
                f"{base}/Monomial/M{use_index:02d}.lean",
                emit_monomial_leaf("Factor", edge_id, use_index, use),
            )
        put(f"{base}/Uses.lean", emit_uses_module("Factor", edge_id, uses))
        put(
            f"{base}/SourceEq.lean", emit_factor_source_eq(data, edge_id)
        )
        put(
            f"{base}/TargetEq.lean", emit_factor_target_eq(data, edge_id)
        )
        put(
            f"{base}/Certificate.lean",
            emit_factor_certificate(data, edge_id),
        )
        put(f"{base}/Hold.lean", emit_factor_hold(data, edge_id))
        put(f"Factor/E{edge_id:03d}.lean", emit_factor_row_collector(edge_id))

    put("Data.lean", emit_public_data(data))
    put("Source.lean", emit_source_aggregator())
    put("Quotient.lean", emit_quotient_aggregator())
    put("Factor.lean", emit_factor_aggregator(data))
    put("GraphExact.lean", emit_graph_exact())
    put("Graph.lean", emit_graph())
    write(umbrella, emit_umbrella())
    generated.append(umbrella)

    audit_generated(output, umbrella, generated)
    expected = {path.resolve() for path in generated if path != umbrella}
    for stale in output.rglob("*.lean"):
        if stale.resolve() not in expected:
            stale.unlink()
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

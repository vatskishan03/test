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
import re
import tempfile
from typing import Any, Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
INPUT = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics/"
    "component_A_factor_semantics.json"
)
GLOBAL_RELATIONS_INPUT = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/factor_semantics/"
    "global_relations.json"
)
OUTPUT = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorA8"
UMBRELLA = ROOT / "MonochromaticQuantumGraphs/N8D3/TropicalFactorA8.lean"

INPUT_SHA256 = "f59912bea5b8c36421f80173d50ef37fb5bd64fc8d330ae96ff91a221ac6ec25"
GLOBAL_RELATIONS_SHA256 = (
    "f4f5657bf80c11f3a50c223d60bbc084d52a632a4d8be30db2d1af732008326a"
)
SCHEMA_VERSION = 2
SOURCE_COUNT = 116
FIRST_OVERLAP_COUNT = 360
QUOTIENT_COUNT = 70
RAW_VERTEX_COUNT = 59
RAW_EDGE_COUNT = 68
CLASS_COUNT = 15
MONOMIAL_REPLAY_COUNT = (
    SOURCE_COUNT * 6 + QUOTIENT_COUNT * 12 + RAW_EDGE_COUNT * 4
)
SHIFTED_EXPONENT_REPLAY_COUNT = QUOTIENT_COUNT * 12
FACTOR_SHIFTED_EXPONENT_REPLAY_COUNT = RAW_EDGE_COUNT * 4

# These are the five exponent rows unfolded by
# `tropicalComponentACharacter8`.  Keeping the local-coordinate shapes here
# lets the generator replay every implication coefficient vector before Lean
# sees it, independently of the equality row copied into the certificate JSON.
COMPONENT_A_CHARACTER_EXPONENTS = (
    ((48, 1), (49, -1), (139, -1), (142, 1)),
    ((51, 1), (52, -1), (139, -1), (142, 1)),
    ((48, 1), (49, -1), (108, -1), (109, 1)),
    ((48, 1), (49, -1), (111, -1), (112, 1)),
    ((48, 1), (49, -1), (114, -1), (115, 1)),
)

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


def canonical_local_exponent(
    rows: Any, context: str,
) -> tuple[tuple[int, int], ...]:
    """Canonical sparse exponent in the local coordinates emitted to Lean."""
    return tuple(
        (row["local"], row["exp"])
        for row in check_sparse_exponent(rows, context)
    )


def linear_combination_exponent(
    terms: Iterable[tuple[int, Sequence[tuple[int, int]]]],
) -> tuple[tuple[int, int], ...]:
    """Normalize a finite integer combination of sparse exponent rows."""
    values: dict[int, int] = {}
    for coefficient, exponent_row in terms:
        for local, value in exponent_row:
            values[local] = values.get(local, 0) + coefficient * value
    return tuple(sorted((local, value) for local, value in values.items() if value))


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


def canonical_coordinate_polynomial(
    payload: Any, context: str,
) -> tuple[tuple[tuple[tuple[int, int, int], ...], int], ...]:
    """Canonical polynomial retaining both local and global coordinates."""
    aggregate: dict[tuple[tuple[int, int, int], ...], int] = {}
    for coefficient, exponent_rows in polynomial_entries(payload, context):
        exponent = tuple(
            (row["local"], row["global"], row["exp"])
            for row in exponent_rows
        )
        aggregate[exponent] = aggregate.get(exponent, 0) + coefficient
    return tuple(sorted(
        (exponent, coefficient)
        for exponent, coefficient in aggregate.items()
        if coefficient
    ))


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


def check_reduction(reduction: Any, use_count: int, basis_count: int, context: str) -> int:
    if not isinstance(reduction, dict):
        fail(f"{context} is not a CharacterReductionCertificate object")
    if basis_count != len(COMPONENT_A_CHARACTER_EXPONENTS):
        fail(f"{context} has an unsupported Component-A character basis")
    uses = reduction.get("use")
    if not isinstance(uses, list) or len(uses) != use_count:
        fail(f"{context}.use count changed")
    for use_index, use in enumerate(uses):
        use_context = f"{context}.use[{use_index}]"
        integer(use.get("coefficient"), f"{use_context}.coefficient")
        source_exponent = canonical_local_exponent(
            use.get("sourceExponent"), f"{use_context}.sourceExponent"
        )
        target_exponent = canonical_local_exponent(
            use.get("targetExponent"), f"{use_context}.targetExponent"
        )
        monomial = use.get("reduction")
        if not isinstance(monomial, dict):
            fail(f"{use_context}.reduction is not a monomial certificate")
        sign_exponent = integer(
            monomial.get("signExponent"), f"{use_context}.signExponent"
        )
        implication = monomial.get("implication")
        if not isinstance(implication, dict):
            fail(f"{use_context}.implication is not an implication certificate")
        coeff = implication.get("coeff")
        if not isinstance(coeff, list) or len(coeff) != basis_count + 1:
            fail(f"{use_context}.implication coefficient count changed")
        coefficients = tuple(
            integer(
                coefficient,
                f"{use_context}.implication.coeff[{coefficient_index}]",
            )
            for coefficient_index, coefficient in enumerate(coeff)
        )
        expected_from_coefficients = linear_combination_exponent(
            zip(coefficients[:basis_count], COMPONENT_A_CHARACTER_EXPONENTS)
        )
        expected_from_difference = linear_combination_exponent(
            ((1, source_exponent), (-1, target_exponent))
        )
        if expected_from_coefficients != expected_from_difference:
            fail(
                f"{use_context}.implication coefficients do not replay the "
                "emitted source-target exponent"
            )
        expected_sign = 2 * coefficients[-1]
        if expected_sign != sign_exponent:
            fail(
                f"{use_context}.implication parity coefficient does not replay "
                "the emitted sign exponent"
            )
        combination_eq = implication.get("combination_eq")
        check_row_equality(
            combination_eq,
            f"{use_context}.implication.combination_eq",
        )
        for side in ("lhs", "rhs"):
            row = combination_eq[side]
            actual_exponent = canonical_local_exponent(
                row.get("exponent"),
                f"{use_context}.implication.combination_eq.{side}.exponent",
            )
            actual_sign = integer(
                row.get("signExponent"),
                f"{use_context}.implication.combination_eq.{side}.signExponent",
            )
            if actual_exponent != expected_from_coefficients:
                fail(
                    f"{use_context}.implication.combination_eq.{side} does not "
                    "match the coefficient-replayed exponent"
                )
            if actual_sign != expected_sign:
                fail(
                    f"{use_context}.implication.combination_eq.{side} does not "
                    "match the coefficient-replayed sign exponent"
                )
    check_polynomial_equality(reduction.get("source_eq"), f"{context}.source_eq")
    check_polynomial_equality(reduction.get("target_eq"), f"{context}.target_eq")
    return len(uses)


def normalized_certificate(payload: Any, use_count: int, context: str) -> int:
    if not isinstance(payload, dict):
        fail(f"{context} is not a normalized certificate")
    unit = integer(payload.get("unit"), f"{context}.unit")
    if unit == 0 or payload.get("unit_ne_zero") is not True:
        fail(f"{context} has an invalid normalization unit")
    provenance = payload.get("provenance")
    if provenance.get("basis_character_count") != 5:
        fail(f"{context} basis character count changed")
    polynomial_entries(provenance.get("normalized_target"), f"{context}.normalized_target")
    return check_reduction(
        payload.get("reduction"), use_count, 5, f"{context}.reduction"
    )


def factor_certificate(payload: Any, context: str) -> int:
    if not isinstance(payload, dict):
        fail(f"{context} is not a factor certificate")
    unit = integer(payload.get("unit"), f"{context}.unit")
    if unit == 0 or payload.get("unit_ne_zero") is not True:
        fail(f"{context} has an invalid factor unit")
    check_sparse_exponent(payload.get("shift"), f"{context}.shift")
    provenance = payload.get("provenance")
    if provenance.get("basis_character_count") != 5:
        fail(f"{context} basis count changed")
    return check_reduction(payload.get("reduction"), 4, 5, f"{context}.reduction")


def load_first_overlap_rows() -> list[dict[str, Any]]:
    """Load the independently pinned exact rows used by source Data leaves."""
    actual = digest(GLOBAL_RELATIONS_INPUT)
    if actual != GLOBAL_RELATIONS_SHA256:
        fail(
            "global-relations JSON SHA-256 mismatch: "
            f"{actual} != {GLOBAL_RELATIONS_SHA256}"
        )
    data = json.loads(GLOBAL_RELATIONS_INPUT.read_text())
    if data.get("schema_version") != SCHEMA_VERSION:
        fail("global-relations schema identity changed")
    overlap = data.get("first_overlap", {})
    rows = overlap.get("rows")
    if (
        overlap.get("count") != FIRST_OVERLAP_COUNT
        or not isinstance(rows, list)
        or len(rows) != FIRST_OVERLAP_COUNT
    ):
        fail("global first-overlap row count changed")
    for index, row in enumerate(rows):
        if row.get("index") != index or row.get("combined_index") != 200 + index:
            fail(f"global first-overlap row {index} is out of order")
        relation = canonical_coordinate_polynomial(
            row.get("relation"), f"global first-overlap row {index}"
        )
        if len(relation) != 6:
            fail(f"global first-overlap row {index} is not an exact hexanomial")
    return rows


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
    base_characters = data.get("base_characters", [])
    if len(base_characters) != len(COMPONENT_A_CHARACTER_EXPONENTS):
        fail("Component-A base-character count changed")
    for character_index, (character, expected_exponent) in enumerate(
        zip(base_characters, COMPONENT_A_CHARACTER_EXPONENTS)
    ):
        if not isinstance(character, dict):
            fail(f"Component-A base character {character_index} is not an object")
        actual_exponent = canonical_local_exponent(
            character.get("row"), f"Component-A base character {character_index}"
        )
        if actual_exponent != expected_exponent:
            fail(
                f"Component-A base character {character_index} differs from "
                "tropicalComponentACharacter8"
            )
        if integer(
            character.get("bit"), f"Component-A base character {character_index}.bit"
        ) != 0:
            fail(f"Component-A base character {character_index} sign changed")
    first_overlap_rows = load_first_overlap_rows()
    checked_monomial_replays = 0

    quotient = data.get("quotient", {})
    source_reductions = quotient.get("source_reductions")
    rows = quotient.get("rows")
    if quotient.get("count") != QUOTIENT_COUNT or len(rows) != QUOTIENT_COUNT:
        fail("Component-A quotient count changed")
    if quotient.get("unique_source_reduction_count") != SOURCE_COUNT or len(source_reductions) != SOURCE_COUNT:
        fail("Component-A source-reduction count changed")
    checked_source_terms = 0
    for reduction_id, source in enumerate(source_reductions):
        if source.get("reduction_id") != reduction_id:
            fail(f"source reduction {reduction_id} is out of order")
        combined = check_index(
            source.get("relation_source", {}).get("combined_index"),
            560,
            f"source reduction {reduction_id} relation index",
        )
        relation_source = source["relation_source"]
        if relation_source.get("kind") != "first_overlap":
            fail(f"Component-A source reduction {reduction_id} is not first-overlap")
        overlap_index = check_index(
            relation_source.get("index"),
            FIRST_OVERLAP_COUNT,
            f"source reduction {reduction_id} first-overlap index",
        )
        if combined != overlap_index + 200:
            fail(f"source reduction {reduction_id} source tag is inconsistent")
        checked_monomial_replays += normalized_certificate(
            source.get("certificate"), 6, f"source reduction {reduction_id}"
        )
        reduction = source["certificate"]["reduction"]
        exact_row = canonical_coordinate_polynomial(
            first_overlap_rows[overlap_index]["relation"],
            f"source reduction {reduction_id} exact retained row",
        )
        for side in ("lhs", "rhs"):
            replayed = canonical_coordinate_polynomial(
                reduction["source_eq"][side],
                f"source reduction {reduction_id} source_eq.{side}",
            )
            if replayed != exact_row:
                fail(
                    f"source reduction {reduction_id} {side} differs from "
                    f"first-overlap row {overlap_index}"
                )
        checked_source_terms += len(exact_row)
    if checked_source_terms != SOURCE_COUNT * 6:
        fail(
            "Component-A order-independent retained source replay count changed: "
            f"{checked_source_terms} != {SOURCE_COUNT * 6}"
        )

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
        checked_monomial_replays += normalized_certificate(
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
        checked_monomial_replays += factor_certificate(
            witness.get("factor_certificate"), f"raw edge {edge_index}"
        )

    if checked_monomial_replays != MONOMIAL_REPLAY_COUNT:
        fail(
            "Component-A coefficient-replayed monomial count changed: "
            f"{checked_monomial_replays} != {MONOMIAL_REPLAY_COUNT}"
        )

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


def normalize_exponent_rows(
    *groups: Sequence[dict[str, Any]],
) -> list[dict[str, int]]:
    """Add sparse exponents without inspecting Lean's Finsupp representation."""
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
    module = {
        "Source": source_base,
        "Quotient": quotient_base,
        "Factor": factor_base,
    }[kind](row_id)
    return module_header(
        [f"{module}.Data"],
        f"# Component-A {kind.lower()} {row_id}, monomial {use_index}\n\n"
        "One algebraic signed-character implication, isolated as its own bounded "
        "compiler target.",
    ) + internal_begin(kind, row_id) + f'''def {name} :
    MonomialReductionCertificate tropicalComponentACharacter8
      {source} {target} where
  signExponent := {z(integer(reduction["signExponent"], context + " sign"))}
  implication := {{
    coeff := tropicalComponentAWithParityCoefficients8 {vector(coeffs, "      ")},
    combination_eq := by
      apply TropicalFactorA8.Internal.signedCharacterRow_eq_of_fields
      · simp [{MONOMIAL_SIMP}] <;>
          (ext x; simp [Pi.single_apply]; split_ifs <;> omega)
      · norm_num [{MONOMIAL_SIMP}, Fin.last]
  }}
''' + internal_end(kind, row_id) + FOOTER


def emit_use_module(
    use: dict[str, Any], kind: str, row_id: int, use_index: int
) -> str:
    """Emit one bounded dependent record after its monomial has compiled."""
    context = f"Component-A {kind} {row_id} use {use_index}"
    module = {
        "Source": source_base,
        "Quotient": quotient_base,
        "Factor": factor_base,
    }[kind](row_id)
    name = f"use{use_index:02d}"
    return module_header(
        [
            f"{module}.Monomial.M{use_index:02d}",
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.UseCore",
        ],
        f"# Component-A {kind.lower()} {row_id}, reduction use {use_index}\n\n"
        "One dependent reduction-use record, isolated after its monomial proof.",
    ) + internal_begin(kind, row_id) + f'''def {name} :
    CharacterReductionUse tropicalComponentACharacter8 :=
  TropicalFactorA8.Internal.useOfReduction
    {z(integer(use["coefficient"], context + " coefficient"))}
    monomial{use_index:02d}
''' + internal_end(kind, row_id) + FOOTER


def emit_use_dispatch(use_count: int, name: str = "use") -> str:
    """Collect already-compiled uniform use records without rebuilding them."""
    return f'''def {name} :
    Fin {use_count} → CharacterReductionUse tropicalComponentACharacter8 :=
{vector([f"use{i:02d}" for i in range(use_count)], "  ")}
'''


def emit_core() -> str:
    return module_header(
        [
            "MonochromaticQuantumGraphs.LaurentPolynomialCertificate",
            "MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8",
        ],
        "# Lightweight common definitions for Component-A factor replay",
    ) + '''/-- Adapt six coefficients to the five Component-A characters and
the universal parity generator. -/
def tropicalComponentAWithParityCoefficients8
    (coeff : Fin 6 → ℤ) : Sum (Fin 5) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 5)

namespace TropicalFactorA8.Internal

/-- Equality of signed character rows from equality of their two fields.
`SignedCharacterRow` is intentionally a plain structure and does not declare
an `ext` theorem, so certificate leaves use this explicit structural lemma. -/
theorem signedCharacterRow_eq_of_fields {ι : Type*}
    {left right : SignedCharacterRow ι}
    (exponent_eq : left.exponent = right.exponent)
    (sign_eq : left.signExponent = right.signExponent) :
    left = right := by
  cases left with
  | mk leftExponent leftSign =>
      cases right with
      | mk rightExponent rightSign =>
          change leftExponent = rightExponent at exponent_eq
          change leftSign = rightSign at sign_eq
          subst rightExponent
          subst rightSign
          rfl

end TropicalFactorA8.Internal

/-- Translation is additive over subtraction without exposing Finsupp
support or the implementation of `translateLinear`. -/
theorem tropicalComponentATranslate_sub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact LinearMap.map_sub (LaurentPolynomial.translateLinear shift) p q
''' + FOOTER


def emit_use_core() -> str:
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core"],
        "# Lightweight constructor for sharded Component-A reduction uses",
    ) + '''namespace TropicalFactorA8.Internal

/-- Package an already-compiled monomial certificate as one reduction use.
The large source and target exponents are inferred from the certificate type,
so use leaves do not elaborate a second copy of either expression. -/
def useOfReduction
    (coefficient : ℤ)
    {sourceExponent targetExponent : LaurentExponent (Fin 144)}
    (reduction : MonomialReductionCertificate tropicalComponentACharacter8
      sourceExponent targetExponent) :
    CharacterReductionUse tropicalComponentACharacter8 where
  coefficient := coefficient
  sourceExponent := sourceExponent
  targetExponent := targetExponent
  reduction := reduction

end TropicalFactorA8.Internal
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
        fail("Component-A false-twin class dispatch is incomplete")
    return module_header(
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core",
            "MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentA8",
        ],
        "# Lightweight Component-A graph tables",
    ) + f'''/-- Exact unordered raw-factor edges in certificate order. -/
def tropicalComponentARawFactorEdgePair8 :
    Fin {RAW_EDGE_COUNT} → Fin {RAW_VERTEX_COUNT} × Fin {RAW_VERTEX_COUNT} :=
{vector(edge_pairs, "  ")}

/-- Quotient row supplying each raw edge. -/
def tropicalComponentARawFactorEdgeQuotient8 :
    Fin {RAW_EDGE_COUNT} → Fin {QUOTIENT_COUNT} :=
{vector(edge_sources, "  ")}

/-- Exact symmetric raw adjacency. -/
def tropicalComponentARawFactorEdge8
    (r s : Fin {RAW_VERTEX_COUNT}) : Prop :=
  ∃ e : Fin {RAW_EDGE_COUNT},
    tropicalComponentARawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentARawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentARawFactorClass8 :
    Fin {RAW_VERTEX_COUNT} → Fin {CLASS_COUNT} :=
{vector([str(value) for value in class_of], "  ")}

/-- Exact members of every false-twin class. -/
def tropicalComponentAClassMembers8 :
    Fin {CLASS_COUNT} → Finset (Fin {RAW_VERTEX_COUNT}) :=
{vector(member_sets, "  ")}
''' + FOOTER


def emit_public_data(data: dict[str, Any]) -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphData"]
    imports += [f"{source_base(i)}.Data" for i in range(SOURCE_COUNT)]
    imports += [f"{quotient_base(i)}.Data" for i in range(QUOTIENT_COUNT)]
    imports += [
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8."
        f"Factor.Vertex.V{i:03d}" for i in range(RAW_VERTEX_COUNT)
    ]
    source_indices = [
        f"{internal_namespace('Source', i)}.retainedIndex"
        for i in range(SOURCE_COUNT)
    ]
    originals = [
        f"{internal_namespace('Source', i)}.sourcePolynomial"
        for i in range(SOURCE_COUNT)
    ]
    reduced = [
        f"{internal_namespace('Source', i)}.reduced"
        for i in range(SOURCE_COUNT)
    ]
    intermediates = [
        f"{internal_namespace('Quotient', i)}.intermediate"
        for i in range(QUOTIENT_COUNT)
    ]
    relations = [
        f"{internal_namespace('Quotient', i)}.relation"
        for i in range(QUOTIENT_COUNT)
    ]
    factors = [
        f"TropicalFactorA8.Internal.Vertex{i:03d}.row"
        for i in range(RAW_VERTEX_COUNT)
    ]
    return module_header(
        imports,
        "# Public dispatch over row-local Component-A data\n\nEntries are "
        "declaration names rather than repeated sparse syntax. Proof leaves "
        "never import this all-row collector.",
    ) + f'''/-- Retained row behind each quotient source reduction. -/
def tropicalComponentAQuotientSourceIndex8 : Fin {SOURCE_COUNT} → Fin 560 :=
{vector(source_indices, "  ")}

/-- Exact original polynomial of every source reduction. -/
def tropicalComponentAQuotientOriginalSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(originals, "  ")}

/-- Exact normalized target of every source reduction. -/
def tropicalComponentAQuotientReducedSource8 :
    Fin {SOURCE_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(reduced, "  ")}

/-- Exact shifted aggregate before every quotient reduction. -/
def tropicalComponentAQuotientIntermediate8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(intermediates, "  ")}

/-- The exact normalized Component-A quotient relations. -/
def tropicalComponentAQuotientRelation8 :
    Fin {QUOTIENT_COUNT} → LaurentPolynomial (Fin 144) :=
{vector(relations, "  ")}

/-- The exact raw signed-character factors. -/
def tropicalComponentARawFactor8 :
    Fin {RAW_VERTEX_COUNT} → SignedCharacterRow (Fin 144) :=
{vector(factors, "  ")}
''' + FOOTER


def source_base(source_id: int) -> str:
    return (
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source."
        f"S{source_id:03d}"
    )


def source_overlap_module(data: dict[str, Any], source_id: int) -> tuple[str, str, int]:
    relation = data["quotient"]["source_reductions"][source_id]["relation_source"]
    if relation["kind"] != "first_overlap":
        fail(f"Component-A source {source_id} is not a first-overlap row")
    overlap = integer(relation["index"], f"source {source_id} overlap index")
    shard, row = divmod(overlap, 5)
    module = (
        "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8."
        f"Shard{shard}.Row{row}"
    )
    return module, f"tropicalOverlapRelation8Row{overlap}", overlap


def emit_source_data(data: dict[str, Any], source_id: int) -> str:
    source = data["quotient"]["source_reductions"][source_id]
    payload = source["certificate"]
    row_module, row_name, _ = source_overlap_module(data, source_id)
    return module_header(
        [
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core",
            f"{row_module}.Data",
        ],
        f"# Row-local data for Component-A source reduction {source_id}",
    ) + internal_begin("Source", source_id) + f'''/-- Global retained index
represented by this row-local shard. -/
def retainedIndex : Fin 560 := {source["relation_source"]["combined_index"]}

/-- Exact semantic source polynomial without an all-row dispatcher. -/
def sourcePolynomial : LaurentPolynomial (Fin 144) :=
  {row_name}

/-- Exact normalized target for source reduction {source_id}. -/
def reduced : LaurentPolynomial (Fin 144) :=
  {polynomial(payload["provenance"]["normalized_target"], f"source {source_id} reduced")}
''' + internal_end("Source", source_id) + FOOTER


def emit_source_uses(data: dict[str, Any], source_id: int) -> str:
    uses = data["quotient"]["source_reductions"][source_id]["certificate"]["reduction"]["use"]
    imports = [f"{source_base(source_id)}.Use.U{i:02d}" for i in range(len(uses))]
    return module_header(
        imports,
        f"# Component-A source reduction {source_id}: use dispatcher",
    ) + internal_begin("Source", source_id) + emit_use_dispatch(
        len(uses)
    ) + internal_end("Source", source_id) + FOOTER


def emit_source_eq(data: dict[str, Any], source_id: int) -> str:
    _, row_name, _ = source_overlap_module(data, source_id)
    use_defs = ", ".join(f"use{i:02d}" for i in range(6))
    return module_header(
        [f"{source_base(source_id)}.Uses"],
        f"# Component-A source reduction {source_id}: original polynomial equality",
    ) + internal_begin("Source", source_id) + f'''theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      sourcePolynomial := by
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    sourcePolynomial, {row_name},
    tropicalOverlapDegreeFiveExponent8, Fin.sum_univ_succ] <;> abel_nf
''' + internal_end("Source", source_id) + FOOTER


def emit_source_target_eq(data: dict[str, Any], source_id: int) -> str:
    payload = data["quotient"]["source_reductions"][source_id]["certificate"]
    monomials = ", ".join(f"monomial{i:02d}" for i in range(6))
    use_defs = ", ".join(f"use{i:02d}" for i in range(6))
    return module_header(
        [f"{source_base(source_id)}.Uses"],
        f"# Component-A source reduction {source_id}: normalized target equality",
    ) + internal_begin("Source", source_id) + f'''theorem target_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • reduced := by
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    {monomials}, reduced,
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
      sourcePolynomial reduced where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }}
''' + internal_end("Source", source_id) + f'''
/-- Public source-certificate API for row {source_id}. -/
def tropicalComponentASourceReductionCertificate8_{source_id:03d} :=
  {internal_namespace("Source", source_id)}.certificate
''' + FOOTER


def emit_source_hold(data: dict[str, Any], source_id: int) -> str:
    row_module, _, overlap_id = source_overlap_module(data, source_id)
    cert_name = f"tropicalComponentASourceReductionCertificate8_{source_id:03d}"
    hold_name = f"tropicalComponentASourceReduced8_{source_id:03d}_hold"
    result = module_header(
        [f"{source_base(source_id)}.Certificate",
         row_module],
        f"# Component-A source reduction {source_id}: row-local semantic hold",
    )
    result += internal_begin("Source", source_id) + f'''theorem hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
  have hi := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row{overlap_id}.sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row{overlap_id}.sourceJ
  have hsource : sourcePolynomial.Holds (tropicalSupportWeight8 W) := by
    rw [sourcePolynomial, tropicalOverlapRelation8_provenance_row{overlap_id}]
    unfold tropicalOverlapProvenancePolynomial8
    unfold LaurentPolynomial.Holds at hi hj ⊢
    rw [LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_sub,
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport),
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport), hi, hj]
    simp
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 sourcePolynomial reduced
    {cert_name} hChars hsource
'''
    return result + internal_end("Source", source_id) + f'''
/-- Public source-hold API for row {source_id}. -/
theorem {hold_name}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    {internal_namespace("Source", source_id)}.reduced.Holds
      (tropicalSupportWeight8 W) :=
  {internal_namespace("Source", source_id)}.hold hSupport hEq hChars
''' + FOOTER


def emit_source_collector(source_id: int) -> str:
    return module_header(
        [f"{source_base(source_id)}.Hold"],
        f"# Complete row-local Component-A source reduction {source_id}",
    ) + FOOTER


def emit_source_aggregator() -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S{i:03d}"
        for i in range(SOURCE_COUNT)
    ]
    cases = "\n".join(
        f"  · simpa [tropicalComponentAQuotientReducedSource8] using\n"
        f"      tropicalComponentASourceReduced8_{i:03d}_hold hSupport hEq hChars"
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


def emit_quotient_data(data: dict[str, Any], quotient_id: int) -> str:
    row = data["quotient"]["rows"][quotient_id]
    payload = row["combination_reduction"]
    source_ids = row["source_reduction_ids"]
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core"]
    imports += [f"{source_base(source_id)}.Data" for source_id in source_ids]
    source_items = [
        f"{internal_namespace('Source', source_id)}.reduced"
        for source_id in source_ids
    ]
    shifted_items = []
    for local_index, use in enumerate(row["exact_source_uses"]):
        if use["source_reduction_id"] != source_ids[local_index]:
            fail(f"quotient {quotient_id} shifted source order changed")
        shifted_items.append(f'''{{ source := {local_index},
      scale := {z(use["integer_scale"])},
      shift := {exponent(use["shift"], f"quotient {quotient_id} shifted use {local_index}")} }}''')
    return module_header(
        imports,
        f"# Row-local data for Component-A quotient row {quotient_id}",
    ) + internal_begin("Quotient", quotient_id) + f'''/-- The two row-local
normalized source polynomials. -/
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
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_uses(data: dict[str, Any], quotient_id: int) -> str:
    uses = data["quotient"]["rows"][quotient_id]["combination_reduction"]["reduction"]["use"]
    imports = [
        f"{quotient_base(quotient_id)}.Use.U{i:02d}"
        for i in range(len(uses))
    ]
    return module_header(
        imports,
        f"# Component-A quotient row {quotient_id}: reduction-use dispatcher",
    ) + internal_begin("Quotient", quotient_id) + emit_use_dispatch(
        len(uses)
    ) + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_source_eq(data: dict[str, Any], quotient_id: int) -> str:
    use_defs = ", ".join(f"use{i:02d}" for i in range(12))
    return module_header(
        [f"{quotient_base(quotient_id)}.Uses"],
        f"# Component-A quotient row {quotient_id}: intermediate source equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      intermediate := by
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    intermediate, Fin.sum_univ_succ] <;> abel
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_target_eq(data: dict[str, Any], quotient_id: int) -> str:
    payload = data["quotient"]["rows"][quotient_id]["combination_reduction"]
    monomials = ", ".join(f"monomial{i:02d}" for i in range(12))
    use_defs = ", ".join(f"use{i:02d}" for i in range(12))
    return module_header(
        [f"{quotient_base(quotient_id)}.Uses"],
        f"# Component-A quotient row {quotient_id}: normalized target equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem target_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).targetExponent
    (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • relation := by
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    {monomials}, relation,
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
                f"  have h{flat_index:02d} : "
                f"(({shift} + {term_exp} : LaurentExponent (Fin 144)) = "
                f"{target}) := by\n"
                "    (ext x; simp [Pi.single_apply] <;> split_ifs <;> omega)"
            )
            flat_index += 1
    if flat_index != 12:
        fail(f"quotient {quotient_id} shifted monomial count changed")
    h_names = ", ".join(f"h{i:02d}" for i in range(12))
    source_simp = ",\n    ".join(
        f"{internal_namespace('Source', source_id)}.reduced"
        for source_id in row["source_reduction_ids"]
    )
    return module_header(
        [f"{quotient_base(quotient_id)}.Data"],
        f"# Component-A quotient row {quotient_id}: shifted-source equality",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem shifted_eq :
    (∑ k : Fin 2, (shiftedUse k).scale •
      LaurentPolynomial.translate (shiftedUse k).shift
        (shiftedSources (shiftedUse k).source)) =
      intermediate := by
  have htranslate_zsmul
      (shift : LaurentExponent (Fin 144)) (n : ℤ)
      (p : LaurentPolynomial (Fin 144)) :
      LaurentPolynomial.translate shift (n • p) =
        n • LaurentPolynomial.translate shift p :=
    (LaurentPolynomial.translateLinear shift).map_smul n p
  have htranslate_neg
      (shift : LaurentExponent (Fin 144))
      (p : LaurentPolynomial (Fin 144)) :
      LaurentPolynomial.translate shift (-p) =
        -LaurentPolynomial.translate shift p :=
    (LaurentPolynomial.translateLinear shift).map_neg p
{chr(10).join(have_lines)}
  simp [shiftedUse, shiftedSources, {source_simp}, intermediate,
    Fin.sum_univ_succ,
    LaurentPolynomial.translate_add, htranslate_zsmul, htranslate_neg,
    LaurentPolynomial.translate_single,
    {h_names}] <;> abel
''' + internal_end("Quotient", quotient_id) + FOOTER


def emit_quotient_certificate(data: dict[str, Any], quotient_id: int) -> str:
    payload = data["quotient"]["rows"][quotient_id]["combination_reduction"]
    ns = internal_namespace("Quotient", quotient_id)
    return module_header(
        [f"{quotient_base(quotient_id)}.ShiftedEq",
         f"{quotient_base(quotient_id)}.SourceEq",
         f"{quotient_base(quotient_id)}.TargetEq"],
        f"# Component-A quotient row {quotient_id}: certificates",
    ) + internal_begin("Quotient", quotient_id) + f'''/-- Exact two-source
shifted combination for quotient row {quotient_id}. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row {quotient_id}. -/
def reductionCertificate :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8 intermediate relation where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  reduction := {{
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }}

''' + internal_end("Quotient", quotient_id) + f'''
/-- Public shifted-certificate API for quotient row {quotient_id}. -/
def tropicalComponentAQuotientShiftedCertificate8_{quotient_id:03d} :=
  {ns}.shiftedCertificate

/-- Public reduction-certificate API for quotient row {quotient_id}. -/
def tropicalComponentAQuotientReductionCertificate8_{quotient_id:03d} :=
  {ns}.reductionCertificate
''' + FOOTER


def emit_quotient_hold(data: dict[str, Any], quotient_id: int) -> str:
    source_ids = data["quotient"]["rows"][quotient_id]["source_reduction_ids"]
    ns = internal_namespace("Quotient", quotient_id)
    imports = [f"{quotient_base(quotient_id)}.Certificate"]
    imports += [f"{source_base(source_id)}.Hold" for source_id in source_ids]
    source_cases = "\n".join(
        f"    · simpa [shiftedSources] using\n"
        f"        {internal_namespace('Source', source_id)}.hold "
        "hSupport hEq hChars"
        for source_id in source_ids
    )
    return module_header(
        imports,
        f"# Component-A quotient row {quotient_id}: exactly two source holds",
    ) + internal_begin("Quotient", quotient_id) + f'''theorem hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
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
      tropicalComponentAQuotientShiftedCertificate8_{quotient_id:03d}
      hsources
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 intermediate relation
    tropicalComponentAQuotientReductionCertificate8_{quotient_id:03d}
    hChars hintermediate
''' + internal_end("Quotient", quotient_id) + f'''
/-- Public quotient-hold API for row {quotient_id}. -/
theorem tropicalComponentAQuotientRelation8_{quotient_id:03d}_hold
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    {ns}.relation.Holds (tropicalSupportWeight8 W) :=
  {ns}.hold hSupport hEq hChars
''' + FOOTER


def emit_quotient_collector(quotient_id: int) -> str:
    return module_header(
        [f"{quotient_base(quotient_id)}.Hold"],
        f"# Complete row-local Component-A quotient row {quotient_id}",
    ) + FOOTER


def emit_quotient_aggregator() -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q{i:03d}"
        for i in range(QUOTIENT_COUNT)
    ]
    cases = "\n".join(
        f"  · simpa [tropicalComponentAQuotientRelation8] using\n"
        f"      tropicalComponentAQuotientRelation8_{i:03d}_hold hSupport hEq hChars"
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


def emit_vertex(data: dict[str, Any], vertex_id: int) -> str:
    vertex = data["factor"]["vertices"][vertex_id]
    namespace = f"TropicalFactorA8.Internal.Vertex{vertex_id:03d}"
    return module_header(
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core"],
        f"# Row-local raw Component-A factor {vertex_id}",
    ) + f'''namespace {namespace}

/-- Exact row-local raw factor {vertex_id}. -/
def row : SignedCharacterRow (Fin 144) :=
  {signed_row(vertex, f"raw factor {vertex_id}")}

end {namespace}
''' + FOOTER


def emit_factor_data(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    left, right = data["factor"]["raw_edges"][edge_id]
    quotient_id = witness["source_quotient_index"]
    imports = [
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core",
        f"{quotient_base(quotient_id)}.Data",
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8."
        f"Factor.Vertex.V{left:03d}",
        "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8."
        f"Factor.Vertex.V{right:03d}",
    ]
    return module_header(
        imports,
        f"# Row-local data for Component-A factor edge {edge_id}",
    ) + internal_begin("Factor", edge_id) + f'''/-- Exact row-local quotient
source for this edge. -/
def sourceRelation : LaurentPolynomial (Fin 144) :=
  {internal_namespace("Quotient", quotient_id)}.relation

/-- Left raw-factor endpoint. -/
def leftFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex{left:03d}.row

/-- Right raw-factor endpoint. -/
def rightFactor : SignedCharacterRow (Fin 144) :=
  TropicalFactorA8.Internal.Vertex{right:03d}.row

/-- Exact Laurent translation in the factor certificate. -/
def shift : LaurentExponent (Fin 144) :=
  {exponent(payload["shift"], f"factor edge {edge_id} shift")}
''' + internal_end("Factor", edge_id) + FOOTER


def emit_factor_uses(data: dict[str, Any], edge_id: int) -> str:
    payload = data["factor"]["edge_witnesses"][edge_id]["factor_certificate"]
    uses = payload["reduction"]["use"]
    imports = [f"{factor_base(edge_id)}.Use.U{i:02d}" for i in range(len(uses))]
    return module_header(
        imports,
        f"# Component-A factor edge {edge_id}: reduction-use dispatcher",
    ) + internal_begin("Factor", edge_id) + emit_use_dispatch(
        len(uses)
    ) + internal_end("Factor", edge_id) + FOOTER


def emit_factor_source_eq(data: dict[str, Any], edge_id: int) -> str:
    quotient_id = data["factor"]["edge_witnesses"][edge_id]["source_quotient_index"]
    use_defs = ", ".join(f"use{i:02d}" for i in range(4))
    return module_header(
        [f"{factor_base(edge_id)}.Uses"],
        f"# Component-A factor edge {edge_id}: quotient source equality",
    ) + internal_begin("Factor", edge_id) + f'''theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      sourceRelation := by
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    sourceRelation,
    {internal_namespace("Quotient", quotient_id)}.relation,
    Fin.sum_univ_succ] <;> abel
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
            "    (ext x; simp [Pi.single_apply] <;> split_ifs <;> omega)"
        )
    monomials = ", ".join(f"monomial{i:02d}" for i in range(4))
    use_defs = ", ".join(f"use{i:02d}" for i in range(4))
    return module_header(
        [f"{factor_base(edge_id)}.Uses"],
        f"# Component-A factor edge {edge_id}: translated product equality",
    ) + internal_begin("Factor", edge_id) + f'''theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      {z(payload["unit"])} • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
{chr(10).join(h_lines)}
  simp [use, {use_defs}, TropicalFactorA8.Internal.useOfReduction,
    {monomials}, leftFactor, rightFactor,
    TropicalFactorA8.Internal.Vertex{left:03d}.row,
    TropicalFactorA8.Internal.Vertex{right:03d}.row,
    SignedCharacterRow.factorProductPolynomial, signedCoefficient,
    tropicalComponentATranslate_sub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, Fin.sum_univ_succ,
    h00, h01, h02, h03] <;> abel
''' + internal_end("Factor", edge_id) + FOOTER


def emit_factor_certificate(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    payload = witness["factor_certificate"]
    cert_name = f"tropicalComponentAFactorCertificate8_{edge_id:03d}"
    ns = internal_namespace("Factor", edge_id)
    return module_header(
        [f"{factor_base(edge_id)}.SourceEq", f"{factor_base(edge_id)}.TargetEq"],
        f"# Component-A factor edge {edge_id}: certificate",
    ) + internal_begin("Factor", edge_id) + f'''/-- Exact Laurent factor
certificate for raw edge {edge_id}. -/
def certificate :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      sourceRelation leftFactor rightFactor where
  unit := {z(payload["unit"])}
  unit_ne_zero := by norm_num
  shift := shift
  reduction := {{
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }}
''' + internal_end("Factor", edge_id) + f'''
/-- Public factor-certificate API for raw edge {edge_id}. -/
def {cert_name} :=
  {ns}.certificate
''' + FOOTER


def emit_factor_hold(data: dict[str, Any], edge_id: int) -> str:
    witness = data["factor"]["edge_witnesses"][edge_id]
    quotient_id = witness["source_quotient_index"]
    cert_name = f"tropicalComponentAFactorCertificate8_{edge_id:03d}"
    theorem_name = f"tropicalComponentARawFactorEdgeProduct8_{edge_id:03d}"
    ns = internal_namespace("Factor", edge_id)
    return module_header(
        [f"{factor_base(edge_id)}.Certificate",
         f"{quotient_base(quotient_id)}.Hold"],
        f"# Component-A factor edge {edge_id}: exactly one quotient hold",
    ) + internal_begin("Factor", edge_id) + f'''theorem product
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    leftFactor.factorValue (tropicalSupportWeight8 W) *
      rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 sourceRelation leftFactor rightFactor
    {cert_name} hChars
    (by
      simpa [sourceRelation] using
        {internal_namespace("Quotient", quotient_id)}.hold
          hSupport hEq hChars)
''' + internal_end("Factor", edge_id) + f'''
/-- Public product-vanishing API for raw factor edge {edge_id}. -/
theorem {theorem_name}
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    {ns}.leftFactor.factorValue (tropicalSupportWeight8 W) *
      {ns}.rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  {ns}.product hSupport hEq hChars
''' + FOOTER


def emit_factor_collector(edge_id: int) -> str:
    return module_header(
        [f"{factor_base(edge_id)}.Hold"],
        f"# Complete row-local Component-A factor edge {edge_id}",
    ) + FOOTER


def emit_factor_aggregator() -> str:
    imports = ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data"]
    imports += [
        f"MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E{i:03d}"
        for i in range(RAW_EDGE_COUNT)
    ]
    cases = "\n".join(
        f"  · simpa [tropicalComponentARawFactorEdgePair8,\n"
        f"      tropicalComponentARawFactor8,\n"
        f"      {internal_namespace('Factor', i)}.leftFactor,\n"
        f"      {internal_namespace('Factor', i)}.rightFactor] using\n"
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
        ["MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphData"],
        "# Exact raw/class graph quotient over lightweight graph tables\n\nEach row is checked separately so the 59-by-59 finite equality is not one\nmonolithic kernel reduction.",
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
    return '''import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Graph

/-!
# Complete Component-A tropical factor semantics

This umbrella exports the 70 quotient relations, 59 raw factors, 68 exact
factor certificates, 15 false-twin member sets, the exact raw/class graph
quotient, and the sound all-zero dispatch through the existing 54-cover table.
-/
'''


def missing_braced_record_commas(text: str) -> list[tuple[int, str]]:
    """Return later fields in braced record literals lacking a comma."""
    brace_stack: list[int] = []
    brace_pairs: list[tuple[int, int]] = []
    for position, character in enumerate(text):
        if character == "{":
            brace_stack.append(position)
        elif character == "}" and brace_stack:
            brace_pairs.append((brace_stack.pop(), position))

    missing: list[tuple[int, str]] = []
    identifier = re.compile(r"[A-Za-z_][A-Za-z0-9_']*\s*:=")
    for start, end in brace_pairs:
        body = text[start + 1:end]
        nested_braces = 0
        parentheses = 0
        brackets = 0
        fields: list[tuple[int, str]] = []
        position = 0
        while position < len(body):
            character = body[position]
            if character == "{":
                nested_braces += 1
            elif character == "}":
                nested_braces -= 1
            elif character == "(":
                parentheses += 1
            elif character == ")":
                parentheses -= 1
            elif character == "[":
                brackets += 1
            elif character == "]":
                brackets -= 1
            elif (
                nested_braces == 0
                and parentheses == 0
                and brackets == 0
                and (character.isalpha() or character == "_")
                and (
                    position == 0
                    or not (
                        body[position - 1].isalnum()
                        or body[position - 1] in "_'"
                    )
                )
            ):
                match = identifier.match(body, position)
                if match is not None:
                    field = body[position:match.end()].split(":=", 1)[0].strip()
                    fields.append((position, field))
                    position = match.end() - 1
            position += 1

        for field_position, field in fields[1:]:
            if not body[:field_position].rstrip().endswith(","):
                line = text.count("\n", 0, start + 1 + field_position) + 1
                missing.append((line, field))
    return missing


def validate_import_graph(paths: Sequence[Path], output: Path, umbrella: Path) -> None:
    """Reject dangling internal imports and cycles before Lean sees the graph."""
    prefix = "MonochromaticQuantumGraphs.N8D3.TropicalFactorA8"
    modules: dict[str, Path] = {prefix: umbrella}
    for path in paths:
        relative = path.relative_to(output).with_suffix("")
        modules[prefix + "." + ".".join(relative.parts)] = path
    edges: dict[str, list[str]] = {}
    for module, path in modules.items():
        imports = re.findall(r"^import (\S+)$", path.read_text(), re.MULTILINE)
        internal = [name for name in imports if name == prefix or name.startswith(prefix + ".")]
        dangling = [name for name in internal if name not in modules]
        if dangling:
            fail(f"dangling generated import(s) in {path}: {dangling}")
        edges[module] = internal

    visiting: list[str] = []
    state: dict[str, int] = {}

    def visit(module: str) -> None:
        if state.get(module) == 2:
            return
        if state.get(module) == 1:
            start = visiting.index(module)
            fail("generated import cycle: " + " -> ".join(visiting[start:] + [module]))
        state[module] = 1
        visiting.append(module)
        for dependency in edges[module]:
            visit(dependency)
        visiting.pop()
        state[module] = 2

    for module in modules:
        visit(module)


def validate_generated_layout(
    data: dict[str, Any], generated: Sequence[Path], output: Path, umbrella: Path
) -> None:
    expected_lean_count = (
        SOURCE_COUNT * 13
        + QUOTIENT_COUNT * 20
        + RAW_VERTEX_COUNT
        + RAW_EDGE_COUNT * 11
        + MONOMIAL_REPLAY_COUNT
        + 9
    )
    lean_paths = [path for path in generated if path != umbrella]
    if len(lean_paths) != expected_lean_count:
        fail(
            f"generated Lean module count changed: "
            f"{len(lean_paths)} != {expected_lean_count}"
        )
    if len(set(generated)) != len(generated):
        fail("generated Component-A module paths are not unique")
    expected_paths = set(lean_paths)
    actual_paths = set(output.rglob("*.lean"))
    if actual_paths != expected_paths:
        missing = sorted(str(path) for path in expected_paths - actual_paths)
        stale = sorted(str(path) for path in actual_paths - expected_paths)
        fail(f"generated Component-A layout mismatch; missing={missing}, stale={stale}")

    contents = {
        path.relative_to(output): path.read_text() for path in lean_paths
    }
    for path, text in contents.items():
        missing_commas = missing_braced_record_commas(text)
        if missing_commas:
            line, field = missing_commas[0]
            fail(
                f"missing comma before braced-record field {field!r} "
                f"in {path}:{line}"
            )
    proof_tree = {
        path: text for path, text in contents.items()
        if path.parts[0] in {"Source", "Quotient", "Factor"}
    }
    forbidden = {
        "\n  decide\n": "finite decision procedure leaked into an algebraic leaf",
        "native_decide": "native decision procedure leaked into an algebraic leaf",
        "Finsupp.support": "Finsupp support inspection leaked into an algebraic leaf",
        "Quot.lift": "quotient representation inspection leaked into an algebraic leaf",
        "SignedCharacterRow.ext": "nonexistent row extensionality leaked into an algebraic leaf",
    }
    for path, text in proof_tree.items():
        for needle, message in forbidden.items():
            if needle in text:
                fail(f"{message}: {path}")
        for heartbeat in re.findall(r"set_option maxHeartbeats (\d+)", text):
            if int(heartbeat) > 8_000_000:
                fail(f"heartbeat ceiling exceeded in {path}")

    structural_ext = (
        "apply TropicalFactorA8.Internal.signedCharacterRow_eq_of_fields"
    )
    for path, text in proof_tree.items():
        if "Monomial" in path.parts:
            if structural_ext not in text:
                fail(f"monomial leaf does not use structural row equality: {path}")
            pointwise_replay = (
                "(ext x; simp [Pi.single_apply]; split_ifs <;> omega)"
            )
            if pointwise_replay not in text:
                fail(f"monomial leaf lacks pointwise exponent replay: {path}")

    source_equalities = {
        path: text for path, text in proof_tree.items()
        if path.parts[0] == "Source" and path.name == "SourceEq.lean"
    }
    if len(source_equalities) != SOURCE_COUNT:
        fail("generated Component-A source-equality count changed")
    for path, text in source_equalities.items():
        if "<;> abel_nf" not in text:
            fail(f"source equality lacks order-independent normalization: {path}")
        if re.search(r"\bmonomial\d{2}\b", text):
            fail(f"source equality unfolds a monomial proof body: {path}")
        if "tropicalMatchingLocalExponent8" in text:
            fail(f"source equality acquired positional matching replay: {path}")

    use_families = (
        ("Source", "S", SOURCE_COUNT, 6, source_base),
        ("Quotient", "Q", QUOTIENT_COUNT, 12, quotient_base),
        ("Factor", "E", RAW_EDGE_COUNT, 4, factor_base),
    )
    checked_use_leaves = 0
    for family, prefix, row_count, use_count, base in use_families:
        for row_id in range(row_count):
            dispatcher_path = Path(f"{family}/{prefix}{row_id:03d}/Uses.lean")
            dispatcher = contents[dispatcher_path]
            expected_imports = [
                f"import {base(row_id)}.Use.U{use_index:02d}"
                for use_index in range(use_count)
            ]
            actual_imports = re.findall(r"^import \S+$", dispatcher, re.MULTILINE)
            if actual_imports != expected_imports:
                fail(f"use dispatcher imports changed: {dispatcher_path}")
            expected_signature = (
                "def use :\n"
                f"    Fin {use_count} → CharacterReductionUse "
                "tropicalComponentACharacter8 :="
            )
            if expected_signature not in dispatcher:
                fail(f"use dispatcher API changed: {dispatcher_path}")
            if "Monomial.M" in dispatcher:
                fail(f"use dispatcher imports monomial proofs directly: {dispatcher_path}")
            for use_index in range(use_count):
                leaf_path = Path(
                    f"{family}/{prefix}{row_id:03d}/Use/U{use_index:02d}.lean"
                )
                leaf = contents[leaf_path]
                leaf_imports = re.findall(r"^import \S+$", leaf, re.MULTILINE)
                expected_leaf_import = [
                    f"import {base(row_id)}.Monomial.M{use_index:02d}",
                    "import MonochromaticQuantumGraphs.N8D3."
                    "TropicalFactorA8.UseCore",
                ]
                if leaf_imports != expected_leaf_import:
                    fail(f"use leaf import changed: {leaf_path}")
                if (
                    f"def use{use_index:02d} :" not in leaf
                    or "TropicalFactorA8.Internal.useOfReduction" not in leaf
                    or f"monomial{use_index:02d}" not in leaf
                ):
                    fail(f"use leaf payload changed: {leaf_path}")
                checked_use_leaves += 1
    if checked_use_leaves != MONOMIAL_REPLAY_COUNT:
        fail(
            "generated bounded use-leaf count changed: "
            f"{checked_use_leaves} != {MONOMIAL_REPLAY_COUNT}"
        )

    checked_shifted_exponents = 0
    pointwise_exponent_replay = (
        "(ext x; simp [Pi.single_apply] <;> split_ifs <;> omega)"
    )
    for quotient_id in range(QUOTIENT_COUNT):
        shifted_path = Path(f"Quotient/Q{quotient_id:03d}/ShiftedEq.lean")
        shifted_text = contents[shifted_path]
        helper_indices = re.findall(
            r"^  have h(\d{2}) : \(\(", shifted_text, re.MULTILINE
        )
        expected_indices = [f"{index:02d}" for index in range(12)]
        if helper_indices != expected_indices:
            fail(f"shifted exponent helper order changed: {shifted_path}")
        typed_helpers = shifted_text.count(
            ": LaurentExponent (Fin 144)) ="
        )
        if typed_helpers != 12:
            fail(f"shifted exponent helper lacks expected type: {shifted_path}")
        if shifted_text.count(pointwise_exponent_replay) != 12:
            fail(f"shifted exponent helper lacks pointwise replay: {shifted_path}")
        if (
            shifted_text.count("have htranslate_zsmul") != 1
            or "(LaurentPolynomial.translateLinear shift).map_smul n p"
            not in shifted_text
            or shifted_text.count("have htranslate_neg") != 1
            or "(LaurentPolynomial.translateLinear shift).map_neg p"
            not in shifted_text
            or "LaurentPolynomial.translate_add, htranslate_zsmul, htranslate_neg,\n"
            "    LaurentPolynomial.translate_single" not in shifted_text
        ):
            fail(f"shifted translation linearity replay changed: {shifted_path}")
        checked_shifted_exponents += typed_helpers
    if checked_shifted_exponents != SHIFTED_EXPONENT_REPLAY_COUNT:
        fail(
            "generated typed shifted-exponent count changed: "
            f"{checked_shifted_exponents} != {SHIFTED_EXPONENT_REPLAY_COUNT}"
        )

    checked_factor_shifted_exponents = 0
    for edge_id in range(RAW_EDGE_COUNT):
        target_path = Path(f"Factor/E{edge_id:03d}/TargetEq.lean")
        target_text = contents[target_path]
        helper_indices = re.findall(
            r"^  have h(\d{2}) : shift \+", target_text, re.MULTILINE
        )
        expected_indices = [f"{index:02d}" for index in range(4)]
        if helper_indices != expected_indices:
            fail(f"factor shifted helper order changed: {target_path}")
        replay = "unfold shift\n    " + pointwise_exponent_replay
        if target_text.count(replay) != 4:
            fail(f"factor shifted helper lacks pointwise replay: {target_path}")
        checked_factor_shifted_exponents += len(helper_indices)
    if checked_factor_shifted_exponents != FACTOR_SHIFTED_EXPONENT_REPLAY_COUNT:
        fail(
            "generated factor shifted-exponent count changed: "
            f"{checked_factor_shifted_exponents} != "
            f"{FACTOR_SHIFTED_EXPONENT_REPLAY_COUNT}"
        )

    source_umbrella = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source\n"
    )
    quotient_umbrella = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient\n"
    )
    public_data = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data\n"
    )
    for path, text in proof_tree.items():
        if path.parts[0] == "Quotient" and source_umbrella in text:
            fail(f"quotient leaf imports the full source collector: {path}")
        if path.parts[0] == "Factor" and quotient_umbrella in text:
            fail(f"factor leaf imports the full quotient collector: {path}")
        if len(path.parts) >= 3 and public_data in text:
            fail(f"row-local proof leaf imports the public all-row data collector: {path}")

    for quotient_id in range(QUOTIENT_COUNT):
        row = data["quotient"]["rows"][quotient_id]
        expected_data = [
            f"import {source_base(source_id)}.Data"
            for source_id in row["source_reduction_ids"]
        ]
        expected_hold = [
            f"import {source_base(source_id)}.Hold"
            for source_id in row["source_reduction_ids"]
        ]
        data_path = Path(f"Quotient/Q{quotient_id:03d}/Data.lean")
        hold_path = Path(f"Quotient/Q{quotient_id:03d}/Hold.lean")
        data_imports = re.findall(
            r"^import .*TropicalFactorA8\.Source\.S\d{3}\.Data$",
            contents[data_path], re.MULTILINE,
        )
        hold_imports = re.findall(
            r"^import .*TropicalFactorA8\.Source\.S\d{3}\.Hold$",
            contents[hold_path], re.MULTILINE,
        )
        if data_imports != expected_data or hold_imports != expected_hold:
            fail(f"quotient {quotient_id} does not import exactly its two source rows")

    for edge_id in range(RAW_EDGE_COUNT):
        witness = data["factor"]["edge_witnesses"][edge_id]
        quotient_id = witness["source_quotient_index"]
        data_path = Path(f"Factor/E{edge_id:03d}/Data.lean")
        hold_path = Path(f"Factor/E{edge_id:03d}/Hold.lean")
        data_imports = re.findall(
            r"^import .*TropicalFactorA8\.Quotient\.Q\d{3}\.Data$",
            contents[data_path], re.MULTILINE,
        )
        hold_imports = re.findall(
            r"^import .*TropicalFactorA8\.Quotient\.Q\d{3}\.Hold$",
            contents[hold_path], re.MULTILINE,
        )
        if data_imports != [f"import {quotient_base(quotient_id)}.Data"]:
            fail(f"factor edge {edge_id} does not import its exact quotient Data leaf")
        if hold_imports != [f"import {quotient_base(quotient_id)}.Hold"]:
            fail(f"factor edge {edge_id} does not import its exact quotient Hold leaf")

    retained_aggregate = (
        "import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8\n"
    )
    for path, text in contents.items():
        if retained_aggregate in text:
            fail(f"full retained aggregate escaped into generated output: {path}")

    stage_counts = {
        "source data": len(list(output.glob("Source/S*/Data.lean"))),
        "source monomial": len(list(output.glob("Source/S*/Monomial/M*.lean"))),
        "source use": len(list(output.glob("Source/S*/Use/U*.lean"))),
        "source equality": len(list(output.glob("Source/S*/*Eq.lean"))),
        "quotient data": len(list(output.glob("Quotient/Q*/Data.lean"))),
        "quotient monomial": len(list(output.glob("Quotient/Q*/Monomial/M*.lean"))),
        "quotient use": len(list(output.glob("Quotient/Q*/Use/U*.lean"))),
        "quotient equality": len(list(output.glob("Quotient/Q*/*Eq.lean"))),
        "vertex data": len(list(output.glob("Factor/Vertex/V*.lean"))),
        "factor data": len(list(output.glob("Factor/E*/Data.lean"))),
        "factor monomial": len(list(output.glob("Factor/E*/Monomial/M*.lean"))),
        "factor use": len(list(output.glob("Factor/E*/Use/U*.lean"))),
        "factor equality": len(list(output.glob("Factor/E*/*Eq.lean"))),
    }
    expected_stage_counts = {
        "source data": SOURCE_COUNT,
        "source monomial": SOURCE_COUNT * 6,
        "source use": SOURCE_COUNT * 6,
        "source equality": SOURCE_COUNT * 2,
        "quotient data": QUOTIENT_COUNT,
        "quotient monomial": QUOTIENT_COUNT * 12,
        "quotient use": QUOTIENT_COUNT * 12,
        "quotient equality": QUOTIENT_COUNT * 3,
        "vertex data": RAW_VERTEX_COUNT,
        "factor data": RAW_EDGE_COUNT,
        "factor monomial": RAW_EDGE_COUNT * 4,
        "factor use": RAW_EDGE_COUNT * 4,
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
            collector = Path(f"{family}/{prefix}{row_id:03d}.lean")
            text = contents[collector]
            if "decide" in text or text.count("import ") != 1:
                fail(f"collector is not a decision-free single import: {collector}")

    size_bounds = {
        Path("Core.lean"): 100,
        Path("UseCore.lean"): 100,
        Path("GraphData.lean"): 500,
        Path("Data.lean"): 3000,
    }
    for path, bound in size_bounds.items():
        lines = contents[path].count("\n") + 1
        if lines > bound:
            fail(f"generated data target exceeds line bound: {path} has {lines} > {bound}")
    for pattern in ("Source/S*/Data.lean", "Quotient/Q*/Data.lean", "Factor/E*/Data.lean"):
        for path in output.glob(pattern):
            lines = path.read_text().count("\n") + 1
            if lines > 1000:
                fail(f"row-local data target exceeds 1000-line bound: {path}")

    required_public = {
        Path("Core.lean"): (
            "def tropicalComponentAWithParityCoefficients8",
            "theorem signedCharacterRow_eq_of_fields",
            "theorem tropicalComponentATranslate_sub8",
        ),
        Path("UseCore.lean"): (
            "def useOfReduction",
        ),
        Path("GraphData.lean"): (
            "def tropicalComponentARawFactorEdgePair8",
            "def tropicalComponentARawFactorEdge8",
            "def tropicalComponentARawFactorClass8",
            "def tropicalComponentAClassMembers8",
        ),
        Path("Data.lean"): (
            "def tropicalComponentAQuotientSourceIndex8",
            "def tropicalComponentAQuotientOriginalSource8",
            "def tropicalComponentAQuotientReducedSource8",
            "def tropicalComponentAQuotientIntermediate8",
            "def tropicalComponentAQuotientRelation8",
            "def tropicalComponentARawFactor8",
        ),
        Path("Source.lean"): (
            "theorem tropicalComponentAQuotientReducedSources8_hold",
        ),
        Path("Quotient.lean"): (
            "theorem tropicalComponentAQuotientRelations8_hold",
        ),
        Path("Factor.lean"): (
            "theorem tropicalComponentARawFactorProducts8",
        ),
        Path("GraphExact.lean"): (
            "theorem tropicalComponentARawFactorEdge8_iff_classEdge",
        ),
        Path("Graph.lean"): (
            "theorem tropicalComponentAClassMembers8_iff",
            "theorem tropicalComponentACompleteBipartiteQuotient8",
            "theorem tropicalComponentA_allZero_class_cover8",
        ),
    }
    for path, declarations in required_public.items():
        for declaration in declarations:
            if declaration not in contents[path]:
                fail(f"missing public declaration {declaration!r} in {path}")

    graph_exact = contents[Path("GraphExact.lean")].splitlines()
    if graph_exact[0] != "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphData":
        fail("GraphExact.lean is not graph-data-only")
    graph_imports = contents[Path("Graph.lean")].splitlines()[:2]
    if graph_imports != [
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphExact",
        "import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor",
    ]:
        fail("Graph.lean dependency split changed")
    validate_import_graph(lean_paths, output, umbrella)


def generate(data: dict[str, Any], output: Path, umbrella: Path) -> list[Path]:
    generated: list[Path] = []

    def put(relative: str, contents: str) -> None:
        path = output / relative
        write(path, contents)
        generated.append(path)

    put("Core.lean", emit_core())
    put("UseCore.lean", emit_use_core())
    put("GraphData.lean", emit_graph_data(data))
    for source_id in range(SOURCE_COUNT):
        uses = data["quotient"]["source_reductions"][source_id]["certificate"]["reduction"]["use"]
        put(f"Source/S{source_id:03d}/Data.lean", emit_source_data(data, source_id))
        for use_index, use in enumerate(uses):
            put(
                f"Source/S{source_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Source", source_id, use_index),
            )
            put(
                f"Source/S{source_id:03d}/Use/U{use_index:02d}.lean",
                emit_use_module(use, "Source", source_id, use_index),
            )
        put(f"Source/S{source_id:03d}/Uses.lean", emit_source_uses(data, source_id))
        put(f"Source/S{source_id:03d}/SourceEq.lean", emit_source_eq(data, source_id))
        put(f"Source/S{source_id:03d}/TargetEq.lean", emit_source_target_eq(data, source_id))
        put(f"Source/S{source_id:03d}/Certificate.lean", emit_source_certificate(data, source_id))
        put(f"Source/S{source_id:03d}/Hold.lean", emit_source_hold(data, source_id))
        put(f"Source/S{source_id:03d}.lean", emit_source_collector(source_id))
    for quotient_id in range(QUOTIENT_COUNT):
        uses = data["quotient"]["rows"][quotient_id]["combination_reduction"]["reduction"]["use"]
        put(f"Quotient/Q{quotient_id:03d}/Data.lean", emit_quotient_data(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/ShiftedEq.lean", emit_quotient_shifted_eq(data, quotient_id))
        for use_index, use in enumerate(uses):
            put(
                f"Quotient/Q{quotient_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Quotient", quotient_id, use_index),
            )
            put(
                f"Quotient/Q{quotient_id:03d}/Use/U{use_index:02d}.lean",
                emit_use_module(use, "Quotient", quotient_id, use_index),
            )
        put(f"Quotient/Q{quotient_id:03d}/Uses.lean", emit_quotient_uses(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/SourceEq.lean", emit_quotient_source_eq(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/TargetEq.lean", emit_quotient_target_eq(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/Certificate.lean", emit_quotient_certificate(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}/Hold.lean", emit_quotient_hold(data, quotient_id))
        put(f"Quotient/Q{quotient_id:03d}.lean", emit_quotient_collector(quotient_id))
    for vertex_id in range(RAW_VERTEX_COUNT):
        put(f"Factor/Vertex/V{vertex_id:03d}.lean", emit_vertex(data, vertex_id))
    for edge_id in range(RAW_EDGE_COUNT):
        uses = data["factor"]["edge_witnesses"][edge_id]["factor_certificate"]["reduction"]["use"]
        put(f"Factor/E{edge_id:03d}/Data.lean", emit_factor_data(data, edge_id))
        for use_index, use in enumerate(uses):
            put(
                f"Factor/E{edge_id:03d}/Monomial/M{use_index:02d}.lean",
                emit_monomial_module(use, "Factor", edge_id, use_index),
            )
            put(
                f"Factor/E{edge_id:03d}/Use/U{use_index:02d}.lean",
                emit_use_module(use, "Factor", edge_id, use_index),
            )
        put(f"Factor/E{edge_id:03d}/Uses.lean", emit_factor_uses(data, edge_id))
        put(f"Factor/E{edge_id:03d}/SourceEq.lean", emit_factor_source_eq(data, edge_id))
        put(f"Factor/E{edge_id:03d}/TargetEq.lean", emit_factor_target_eq(data, edge_id))
        put(f"Factor/E{edge_id:03d}/Certificate.lean", emit_factor_certificate(data, edge_id))
        put(f"Factor/E{edge_id:03d}/Hold.lean", emit_factor_hold(data, edge_id))
        put(f"Factor/E{edge_id:03d}.lean", emit_factor_collector(edge_id))
    put("Data.lean", emit_public_data(data))
    put("Source.lean", emit_source_aggregator())
    put("Quotient.lean", emit_quotient_aggregator())
    put("Factor.lean", emit_factor_aggregator())
    put("GraphExact.lean", emit_graph_exact())
    put("Graph.lean", emit_graph())
    write(umbrella, emit_umbrella())
    generated.append(umbrella)
    validate_generated_layout(data, generated, output, umbrella)
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

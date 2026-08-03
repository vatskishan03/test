#!/usr/bin/env python3
"""Generate kernel-replayed Component B terminal certificates for N8D3.

The two semantic JSON artifacts are discovery output, not proofs.  This
generator emits the integer witnesses as Lean structures whose polynomial
and signed-character equalities are checked by `by decide`.  Source
relations are references to the repository's official EqSystem, overlap and
Component B quotient definitions; their monomial tables are not duplicated.

The generator is deliberately fail closed.  It verifies artifact hashes,
the support-local/global coordinate map, basis-source provenance, every
certificate field shape, the four non-survivor destinations, and the three
survivor/two-branch layout before writing any Lean file.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from typing import Any, Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
SEMANTICS = ROOT / "certificates/n8d3/tropical_nonattainment/factor_semantics"
TERMINAL_B_PATH = SEMANTICS / "terminal_component_B_semantics.json"
BRANCHES_PATH = SEMANTICS / "terminal_branches_semantics.json"
FACTOR_B_PATH = SEMANTICS / "component_B_factor_semantics.json"
SUPPORT_PATH = (
    ROOT
    / "certificates/n8d3/tropical_nonattainment/tropical_border/support_144.txt"
)

TERMINAL_B_SHA256 = "9257c3c8f8005f84a87edff33972d265e1e418105883eed12f274e86ea2341d7"
BRANCHES_SHA256 = "2d2dcf788af3a9615241ad2de84ae4c5af9441c4062fe91f5149f0192aedcc69"
FACTOR_B_SHA256 = "0a7f6e69bbfbec83fcfac348d399c87430f33af9361950ebc38f4622af0dc6cb"
SUPPORT_SHA256 = "16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1"

LEAN_ROOT = ROOT / "MonochromaticQuantumGraphs/N8D3"
COMPONENT_DIR = LEAN_ROOT / "TropicalTerminalComponentB8"
BRANCH_DIR = LEAN_ROOT / "TropicalTerminalBranches8"
COMPONENT_TOP = LEAN_ROOT / "TropicalTerminalComponentB8.lean"
BRANCH_TOP = LEAN_ROOT / "TropicalTerminalBranches8.lean"

CORE_LAYOUT = {
    "singleton_class_7": ("Class7", "class7", [7]),
    "core_classes_8_17": ("Core817", "core817", [8, 17]),
    "singleton_class_14": ("Class14", "class14", [14]),
    "singleton_class_19": ("Class19", "class19", [19]),
}

OFFICIAL_RELATION_NAMES = {
    65: "tropicalTerminalRelation65_8",
    73: "tropicalTerminalRelation73_8",
    74: "tropicalTerminalRelation74_8",
    75: "tropicalTerminalRelation75_8",
    77: "tropicalTerminalRelation77_8",
    437: "tropicalTerminalRelation437_8",
    874: "tropicalTerminalRelation874_8",
    1213: "tropicalTerminalRelation1213_8",
}
OFFICIAL_RELATION_POS = {
    relation: position
    for position, relation in enumerate(OFFICIAL_RELATION_NAMES)
}


def fail(message: str) -> None:
    raise SystemExit(message)


def read_hashed_json(path: Path, expected: str) -> dict[str, Any]:
    raw = path.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != expected:
        fail(f"{path.name} SHA-256 mismatch: {digest}")
    value = json.loads(raw)
    if not isinstance(value, dict):
        fail(f"{path.name} is not a JSON object")
    return value


def read_support() -> list[int]:
    raw = SUPPORT_PATH.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != SUPPORT_SHA256:
        fail(f"support SHA-256 mismatch: {digest}")
    support = [
        int(line)
        for line in raw.decode().splitlines()
        if line.strip().isdigit()
    ]
    if len(support) != 144 or len(set(support)) != 144 or support != sorted(support):
        fail("support is not the canonical increasing 144-coordinate table")
    return support


def fraction_to_int(value: Any, context: str) -> int:
    if isinstance(value, int):
        return value
    if (
        isinstance(value, list)
        and len(value) == 2
        and all(isinstance(x, int) for x in value)
        and value[1] == 1
    ):
        return value[0]
    fail(f"nonintegral or malformed integer at {context}: {value!r}")


def sparse_exponent(value: Any, support: Sequence[int], context: str) -> tuple[int, ...]:
    if not isinstance(value, list):
        fail(f"malformed exponent at {context}")
    dense = [0] * 144
    seen: set[int] = set()
    for entry in value:
        if not isinstance(entry, dict) or set(entry) != {"exp", "global", "local"}:
            fail(f"malformed exponent entry at {context}: {entry!r}")
        local = int(entry["local"])
        global_index = int(entry["global"])
        exponent = int(entry["exp"])
        if not 0 <= local < 144 or local in seen:
            fail(f"duplicate/out-of-range local coordinate at {context}")
        if support[local] != global_index:
            fail(f"local/global support mismatch at {context}")
        if exponent == 0:
            fail(f"zero entry in sparse exponent at {context}")
        dense[local] = exponent
        seen.add(local)
    return tuple(dense)


def research_character(value: Any, support: Sequence[int], context: str) -> tuple[tuple[int, ...], int]:
    if not isinstance(value, dict):
        fail(f"malformed character at {context}")
    if set(value) == {"bit", "row"}:
        return sparse_exponent(value["row"], support, context), int(value["bit"])
    if set(value) == {"exponent", "signExponent"}:
        return (
            sparse_exponent(value["exponent"], support, context),
            int(value["signExponent"]),
        )
    fail(f"unexpected character fields at {context}: {sorted(value)}")


def polynomial_terms(value: Any, support: Sequence[int], context: str) -> tuple[tuple[int, tuple[int, ...]], ...]:
    if not isinstance(value, list):
        fail(f"malformed polynomial at {context}")
    terms: list[tuple[int, tuple[int, ...]]] = []
    for index, term in enumerate(value):
        if not isinstance(term, dict):
            fail(f"malformed polynomial term at {context}[{index}]")
        if set(term) == {"coefficient", "exponent"}:
            coefficient = fraction_to_int(term["coefficient"], context)
            exponent = sparse_exponent(term["exponent"], support, context)
        elif set(term) == {"coef", "monomial"}:
            coefficient = fraction_to_int(term["coef"], context)
            exponent = sparse_exponent(term["monomial"], support, context)
        else:
            fail(f"unexpected polynomial fields at {context}[{index}]: {sorted(term)}")
        if coefficient == 0:
            fail(f"zero polynomial coefficient at {context}[{index}]")
        terms.append((coefficient, exponent))
    if len({exponent for _, exponent in terms}) != len(terms):
        fail(f"noncanonical duplicate exponents at {context}")
    return tuple(terms)


def add_exponents(left: Sequence[int], right: Sequence[int]) -> tuple[int, ...]:
    if len(left) != len(right):
        fail("internal exponent-arity mismatch")
    return tuple(a + b for a, b in zip(left, right))


def sub_exponents(left: Sequence[int], right: Sequence[int]) -> tuple[int, ...]:
    if len(left) != len(right):
        fail("internal exponent-arity mismatch")
    return tuple(a - b for a, b in zip(left, right))


def scale_exponent(scale: int, exponent: Sequence[int]) -> tuple[int, ...]:
    return tuple(scale * x for x in exponent)


def polynomial_dict(terms: Iterable[tuple[int, Sequence[int]]]) -> dict[tuple[int, ...], int]:
    result: dict[tuple[int, ...], int] = {}
    for coefficient, exponent in terms:
        key = tuple(exponent)
        result[key] = result.get(key, 0) + coefficient
        if result[key] == 0:
            del result[key]
    return result


def character_row_from_factor_json(value: dict[str, Any], support: Sequence[int], context: str) -> tuple[tuple[int, ...], int]:
    if not {"bit", "row"}.issubset(value) or not set(value).issubset(
        {"bit", "row", "id", "vertex_id"}
    ):
        fail(f"unexpected factor character fields at {context}: {sorted(value)}")
    return sparse_exponent(value["row"], support, context), int(value["bit"])


def lean_vector(values: Sequence[str], indent: str = "  ", per_line: int = 12) -> str:
    chunks = [", ".join(values[i : i + per_line]) for i in range(0, len(values), per_line)]
    return "![\n" + indent + (",\n" + indent).join(chunks) + "\n]"


def emit_exponent(exponent: Sequence[int]) -> str:
    if len(exponent) != 144:
        fail("internal error: exponent does not have 144 coordinates")
    entries = [
        f"Pi.single ({i} : Fin 144) ({value} : ℤ)"
        for i, value in enumerate(exponent)
        if value != 0
    ]
    if not entries:
        return "(0 : LaurentExponent (Fin 144))"
    return "(" + " +\n        ".join(entries) + ")"


def emit_character(character: tuple[Sequence[int], int]) -> str:
    exponent, sign = character
    positive = [i for i, value in enumerate(exponent) if value == 1]
    negative = [i for i, value in enumerate(exponent) if value == -1]
    if (
        sign == 0
        and len(positive) == 2
        and len(negative) == 2
        and all(value in (-1, 0, 1) for value in exponent)
    ):
        return (
            f"tropicalBinomialCharacter8 {positive[0]} {positive[1]} "
            f"{negative[0]} {negative[1]}"
        )
    return (
        "({ exponent := "
        + emit_exponent(exponent)
        + f", signExponent := ({sign} : ℤ) }} : SignedCharacterRow (Fin 144))"
    )


def emit_polynomial(terms: Sequence[tuple[int, Sequence[int]]]) -> str:
    if not terms:
        return "(0 : LaurentPolynomial (Fin 144))"
    summands = [
        f"Finsupp.single {emit_exponent(exponent)} ({coefficient} : ℤ)"
        for coefficient, exponent in terms
    ]
    expression = summands[0]
    for summand in summands[1:]:
        expression += " +\n      " + summand
    return f"({expression} : LaurentPolynomial (Fin 144))"


def validate_implication(value: Any, basis: Sequence[tuple[Sequence[int], int]], target: tuple[Sequence[int], int], support: Sequence[int], context: str) -> list[int]:
    if not isinstance(value, dict) or set(value) != {"coeff", "combination_eq"}:
        fail(f"malformed implication certificate at {context}")
    coeff = [int(x) for x in value["coeff"]]
    if len(coeff) != len(basis) + 1:
        fail(f"implication coefficient arity mismatch at {context}")
    lhs = research_character(value["combination_eq"]["lhs"], support, context)
    rhs = research_character(value["combination_eq"]["rhs"], support, context)
    exponent = [0] * 144
    sign = 0
    for coefficient, (row, row_sign) in zip(coeff[:-1], basis):
        for i, entry in enumerate(row):
            exponent[i] += coefficient * entry
        sign += coefficient * row_sign
    sign += 2 * coeff[-1]
    replay = (tuple(exponent), sign)
    if replay != lhs or rhs != target or lhs != rhs:
        fail(f"implication replay mismatch at {context}")
    return coeff


def emit_implication_fields(coeff: Sequence[int]) -> str:
    ordinary = lean_vector([str(x) for x in coeff[:-1]], indent="          ")
    return f"""{{ coeff := fun s ↦
      match s with
      | .inl i => {ordinary} i
      | .inr _ => ({coeff[-1]} : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }}"""


def validate_monomial_reduction(value: Any, basis: Sequence[tuple[Sequence[int], int]], source: Sequence[int], target: Sequence[int], support: Sequence[int], context: str) -> tuple[int, list[int]]:
    if not isinstance(value, dict) or set(value) != {"signExponent", "implication"}:
        fail(f"malformed monomial reduction at {context}")
    sign = int(value["signExponent"])
    difference = sub_exponents(source, target)
    coeff = validate_implication(
        value["implication"], basis, (difference, sign), support, context
    )
    return sign, coeff


def emit_monomial_reduction(sign: int, coeff: Sequence[int]) -> str:
    return f"""{{ signExponent := ({sign} : ℤ)
    implication := {emit_implication_fields(coeff)} }}"""


def validate_character_reduction(value: Any, basis: Sequence[tuple[Sequence[int], int]], source: Sequence[tuple[int, Sequence[int]]], target: Sequence[tuple[int, Sequence[int]]], support: Sequence[int], context: str) -> list[dict[str, Any]]:
    if not isinstance(value, dict) or set(value) != {"use", "source_eq", "target_eq"}:
        fail(f"malformed character reduction at {context}")
    uses: list[dict[str, Any]] = []
    source_lhs: list[tuple[int, Sequence[int]]] = []
    target_lhs: list[tuple[int, Sequence[int]]] = []
    for index, use in enumerate(value["use"]):
        if set(use) != {"coefficient", "sourceExponent", "targetExponent", "reduction"}:
            fail(f"malformed reduction use at {context}[{index}]")
        coefficient = int(use["coefficient"])
        source_exponent = sparse_exponent(use["sourceExponent"], support, context)
        target_exponent = sparse_exponent(use["targetExponent"], support, context)
        sign, coeff = validate_monomial_reduction(
            use["reduction"], basis, source_exponent, target_exponent, support,
            f"{context}.use[{index}]",
        )
        uses.append(
            {
                "coefficient": coefficient,
                "source": source_exponent,
                "target": target_exponent,
                "sign": sign,
                "coeff": coeff,
            }
        )
        source_lhs.append((coefficient, source_exponent))
        target_lhs.append((coefficient if sign % 2 == 0 else -coefficient, target_exponent))
    json_source_lhs = polynomial_terms(value["source_eq"]["lhs"], support, context)
    json_source_rhs = polynomial_terms(value["source_eq"]["rhs"], support, context)
    json_target_lhs = polynomial_terms(value["target_eq"]["lhs"], support, context)
    json_target_rhs = polynomial_terms(value["target_eq"]["rhs"], support, context)
    if polynomial_dict(source_lhs) != polynomial_dict(source):
        fail(f"source equality replay mismatch at {context}")
    if polynomial_dict(target_lhs) != polynomial_dict(target):
        fail(f"target equality replay mismatch at {context}")
    if polynomial_dict(json_source_lhs) != polynomial_dict(source_lhs) or polynomial_dict(json_source_rhs) != polynomial_dict(source):
        fail(f"serialized source equality mismatch at {context}")
    if polynomial_dict(json_target_lhs) != polynomial_dict(target_lhs) or polynomial_dict(json_target_rhs) != polynomial_dict(target):
        fail(f"serialized target equality mismatch at {context}")
    return uses


def emit_character_reduction(uses: Sequence[dict[str, Any]]) -> str:
    fail(
        "inline CharacterReductionCertificate emission is disabled; "
        "use the bounded Data/Source/Target replay modules"
    )


def validate_normalized(value: Any, basis: Sequence[tuple[Sequence[int], int]], source: Sequence[tuple[int, Sequence[int]]], target: Sequence[tuple[int, Sequence[int]]], support: Sequence[int], context: str) -> tuple[int, list[dict[str, Any]]]:
    if not isinstance(value, dict) or set(value) != {"unit", "unit_ne_zero", "reduction", "provenance"}:
        fail(f"malformed normalized reduction at {context}")
    unit = int(value["unit"])
    if unit == 0 or value["unit_ne_zero"] is not True:
        fail(f"zero/unchecked normalization unit at {context}")
    provenance_target = polynomial_terms(
        value["provenance"]["normalized_target"], support, context
    )
    if polynomial_dict(provenance_target) != polynomial_dict(target):
        fail(f"normalized target provenance mismatch at {context}")
    scaled_target = [(unit * coefficient, exponent) for coefficient, exponent in target]
    uses = validate_character_reduction(
        value["reduction"], basis, source, scaled_target, support, context
    )
    return unit, uses


def emit_normalized(unit: int, uses: Sequence[dict[str, Any]]) -> str:
    return f"""{{ unit := ({unit} : ℤ)
    unit_ne_zero := by norm_num
    reduction := {emit_character_reduction(uses)} }}"""


LEAN_NAMESPACE_HEADER = """namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

"""

LEAN_NAMESPACE_FOOTER = """
end

end MonochromaticQuantumGraphs.N8D3
"""


def lean_module(imports: Sequence[str], body: str, doc: str = "") -> str:
    import_text = "\n".join(f"import {module}" for module in imports)
    doc_text = f"\n\n/-! {doc} -/" if doc else ""
    return (
        import_text
        + doc_text
        + "\n\n"
        + LEAN_NAMESPACE_HEADER
        + body.rstrip()
        + "\n"
        + LEAN_NAMESPACE_FOOTER
    )


def indent_block(text: str, spaces: int) -> str:
    prefix = " " * spaces
    return "\n".join(prefix + line if line else line for line in text.splitlines()) + "\n"


def emit_reduction_use(
    use_name: str,
    basis_expr: str,
    uses: Sequence[dict[str, Any]],
) -> str:
    rendered = []
    for use in uses:
        rendered.append(
            "{ coefficient := ("
            + str(use["coefficient"])
            + " : ℤ)\n      sourceExponent := "
            + emit_exponent(use["source"])
            + "\n      targetExponent := "
            + emit_exponent(use["target"])
            + "\n      reduction := "
            + emit_monomial_reduction(use["sign"], use["coeff"])
            + " }"
        )
    return f"""def {use_name} :
    Fin {len(uses)} → CharacterReductionUse {basis_expr} :=
{lean_vector(rendered, indent="  ", per_line=1)}
"""


def emit_reduction_replay_modules(
    *,
    outputs: dict[Path, str],
    directory: Path,
    module_name: str,
    basis_import: str,
    replay_prefix: str,
    basis_expr: str,
    uses: Sequence[dict[str, Any]],
    source_expr: str,
    target_expr: str,
    source_terms: Sequence[tuple[int, Sequence[int]]],
    target_terms: Sequence[tuple[int, Sequence[int]]],
    source_explicit_proof: str,
    target_explicit_proof: str,
) -> tuple[str, str, str]:
    """Emit one bounded reduction-use leaf and one module per Finsupp equality.

    The JSON equality is checked twice: Python replays its sparse dictionary,
    while Lean expands only the finitely many explicit `Finsupp.single` terms
    and closes their additive rearrangement with `abel`.  No equality of two
    whole quotient-backed `Finsupp` values is sent to `decide`.
    """
    use_name = f"{replay_prefix}ReductionUse8"
    source_explicit_name = f"{replay_prefix}SourceExplicit8"
    target_explicit_name = f"{replay_prefix}TargetExplicit8"
    source_eq_name = f"{replay_prefix}SourceEq8"
    target_eq_name = f"{replay_prefix}TargetEq8"
    data_module = f"{module_name}.Data"
    source_module = f"{module_name}.Source"
    target_module = f"{module_name}.Target"

    outputs[directory / "Data.lean"] = lean_module(
        [basis_import],
        emit_reduction_use(use_name, basis_expr, uses),
        f"Explicit termwise uses for `{replay_prefix}`.",
    )
    outputs[directory / "Source.lean"] = lean_module(
        [data_module],
        f"""theorem {source_explicit_name} :
    {source_expr} = {emit_polynomial(source_terms)} := by
{source_explicit_proof.rstrip()}

theorem {source_eq_name} :
    (∑ k : Fin {len(uses)},
      Finsupp.single ({use_name} k).sourceExponent
        ({use_name} k).coefficient) = {source_expr} := by
  rw [{source_explicit_name}]
  simp only [Fin.sum_univ_succ, {use_name}] <;> abel
""",
        f"Sparse source equality for `{replay_prefix}`.",
    )
    outputs[directory / "Target.lean"] = lean_module(
        [data_module],
        f"""theorem {target_explicit_name} :
    {target_expr} = {emit_polynomial(target_terms)} := by
{target_explicit_proof.rstrip()}

theorem {target_eq_name} :
    (∑ k : Fin {len(uses)},
      Finsupp.single ({use_name} k).targetExponent
      (signedCoefficient ({use_name} k).reduction.signExponent
          ({use_name} k).coefficient)) = {target_expr} := by
  rw [{target_explicit_name}]
  simp [Fin.sum_univ_succ, {use_name}, signedCoefficient] <;> abel
""",
        f"Sparse target equality for `{replay_prefix}`.",
    )
    return use_name, source_eq_name, target_eq_name


def emit_reduction_record(
    use_name: str, source_eq_name: str, target_eq_name: str
) -> str:
    return f"""{{ use := {use_name}
    source_eq := {source_eq_name}
    target_eq := {target_eq_name} }}"""


def emit_replay_helpers() -> str:
    return lean_module(
        ["MonochromaticQuantumGraphs.LaurentPolynomialCertificate"],
        """theorem terminalB_translate_sub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact (LaurentPolynomial.translateLinear shift).map_sub p q

theorem terminalB_translate_neg8
    (shift : LaurentExponent (Fin 144))
    (p : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (-p) =
      -LaurentPolynomial.translate shift p := by
  exact (LaurentPolynomial.translateLinear shift).map_neg p

theorem terminalB_translate_zsmul8
    (shift : LaurentExponent (Fin 144)) (n : ℤ)
    (p : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (n • p) =
      n • LaurentPolynomial.translate shift p := by
  exact (LaurentPolynomial.translateLinear shift).map_smul n p

theorem terminalB_translate_factorPolynomial8
    (shift : LaurentExponent (Fin 144))
    (row : SignedCharacterRow (Fin 144)) :
    LaurentPolynomial.translate shift row.factorPolynomial =
      Finsupp.single (shift + row.exponent) 1 -
        Finsupp.single shift (signedCoefficient row.signExponent 1) := by
  unfold SignedCharacterRow.factorPolynomial
  rw [terminalB_translate_sub8,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single]
  simp

theorem terminalB_translate_factorProductPolynomial8
    (shift : LaurentExponent (Fin 144))
    (left right : SignedCharacterRow (Fin 144)) :
    LaurentPolynomial.translate shift
        (SignedCharacterRow.factorProductPolynomial left right) =
      Finsupp.single (shift + (left.exponent + right.exponent)) 1 -
        Finsupp.single (shift + left.exponent)
          (signedCoefficient right.signExponent 1) -
        Finsupp.single (shift + right.exponent)
          (signedCoefficient left.signExponent 1) +
        Finsupp.single shift
          (signedCoefficient left.signExponent 1 *
            signedCoefficient right.signExponent 1) := by
  unfold SignedCharacterRow.factorProductPolynomial
  rw [LaurentPolynomial.translate_add,
    terminalB_translate_sub8, terminalB_translate_sub8,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single]
  simp
""",
        "Structural translation lemmas used by bounded terminal-B replays.",
    )


def emit_exponent_equality(name: str, lhs: str, rhs: Sequence[int]) -> str:
    """A bounded coordinate replay; never decides a `Finsupp` equality."""
    return f"""  have {name} :
      {lhs} = {emit_exponent(rhs)} := by
    funext i
    fin_cases i <;> decide
"""


def defeq_explicit_proof(terms: Sequence[tuple[int, Sequence[int]]]) -> str:
    polynomial = emit_polynomial(terms)
    return f"""  change {polynomial} = {polynomial}
  rfl
"""


def overlap_explicit_proof(
    index: int, terms: Sequence[tuple[int, Sequence[int]]]
) -> str:
    return f"""  change tropicalOverlapRelation8Row{index} =
    {emit_polynomial(terms)}
  unfold tropicalOverlapRelation8Row{index}
  unfold tropicalOverlapDegreeFiveExponent8
  simp only [Finsupp.single_neg] <;> abel
"""


def terminal_explicit_proof(
    relation_index: int, terms: Sequence[tuple[int, Sequence[int]]]
) -> str:
    source_name = OFFICIAL_RELATION_NAMES[relation_index]
    position = OFFICIAL_RELATION_POS[relation_index]
    return f"""  calc
    {source_name} = tropicalTerminalExplicitRelation8 {position} :=
      {source_name}_explicit
    _ = {emit_polynomial(terms)} := by
      change {emit_polynomial(terms)} = {emit_polynomial(terms)}
      rfl
"""


def source_tags(initial_sources: Sequence[dict[str, Any]], factor_base: Sequence[tuple[Sequence[int], int]], factor_raw: Sequence[tuple[Sequence[int], int]], support: Sequence[int], context: str) -> tuple[list[int], list[int], list[int], list[tuple[Sequence[int], int]]]:
    base_tags: list[int] = []
    raw_tags: list[int] = []
    raw_classes: list[int] = []
    characters: list[tuple[Sequence[int], int]] = []
    for index, entry in enumerate(initial_sources):
        if int(entry["character_index"]) != index or len(entry["sources"]) != 1:
            fail(f"noncanonical basis provenance at {context}[{index}]")
        declared = research_character(entry["character"], support, context)
        source = entry["sources"][0]
        if source["kind"] == "component_base_character":
            base_index = int(source["base_character_index"])
            if declared != factor_base[base_index]:
                fail(f"base-character provenance mismatch at {context}[{index}]")
            base_tags.append(base_index)
            raw_tags.append(-1)
            raw_classes.append(-1)
        elif source["kind"] == "raw_factor_vertex":
            raw_index = int(source["raw_factor_vertex_id"])
            if declared != factor_raw[raw_index]:
                fail(f"raw-factor provenance mismatch at {context}[{index}]")
            base_tags.append(-1)
            raw_tags.append(raw_index)
            raw_classes.append(int(source["class_id"]))
        else:
            fail(f"unexpected basis source kind at {context}[{index}]")
        characters.append(declared)
    return base_tags, raw_tags, raw_classes, characters


def emit_source_definitions(prefix: str, base_tags: Sequence[int], raw_tags: Sequence[int], raw_classes: Sequence[int]) -> tuple[str, int]:
    raw_ids = [raw for raw in raw_tags if raw >= 0]
    raw_class_ids = [raw_classes[i] for i, raw in enumerate(raw_tags) if raw >= 0]
    raw_position: dict[int, int] = {raw: i for i, raw in enumerate(raw_ids)}
    if len(raw_position) != len(raw_ids):
        fail(f"duplicate raw source in {prefix}")
    sources = []
    for base, raw in zip(base_tags, raw_tags):
        if base >= 0:
            sources.append(f".base {base}")
        else:
            sources.append(f".raw {raw_position[raw]}")
    text = f"""def {prefix}RawSource8 : Fin {len(raw_ids)} → Fin 49 :=
{lean_vector([str(x) for x in raw_ids])}

def {prefix}RawClass8 : Fin {len(raw_ids)} → Fin 23 :=
{lean_vector([str(x) for x in raw_class_ids])}

def {prefix}InitialSource8 :
    Fin {len(sources)} → FactorBasisSource (Fin 2) (Fin {len(raw_ids)}) :=
{lean_vector(sources, per_line=6)}

def {prefix}InitialBasis8 : Fin {len(sources)} → SignedCharacterRow (Fin 144) :=
  fun i ↦ ({prefix}InitialSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 ({prefix}RawSource8 r))
"""
    return text, len(raw_ids)


def prefix_basis_expr(final_name: str, count: int) -> str:
    return f"(fun i : Fin {count} ↦ {final_name} ⟨i.val, by omega⟩)"


def character_shift(target: Sequence[tuple[int, Sequence[int]]], character: tuple[Sequence[int], int], context: str) -> tuple[int, tuple[int, ...]]:
    exponent, sign = character
    if sign % 2 != 0:
        fail(f"odd signed derived character unsupported at {context}")
    target_dict = polynomial_dict(target)
    negative = [e for e, coefficient in target_dict.items() if coefficient == -1]
    positive = [e for e, coefficient in target_dict.items() if coefficient == 1]
    if len(negative) != 1 or len(positive) != 1 or len(target_dict) != 2:
        fail(f"derived target is not a unit binomial at {context}")
    shift = negative[0]
    if add_exponents(shift, exponent) == positive[0]:
        return 1, shift
    shift = positive[0]
    if add_exponents(shift, exponent) == negative[0]:
        return -1, shift
    fail(f"derived character orientation mismatch at {context}")


def emit_core_shard(key: str, value: dict[str, Any], factor_base: Sequence[tuple[Sequence[int], int]], factor_raw: Sequence[tuple[Sequence[int], int]], support: Sequence[int]) -> tuple[str, dict[str, Any]]:
    module, short, selected_classes = CORE_LAYOUT[key]
    prefix = f"terminalB{module}"
    base_tags, raw_tags, raw_classes, initial_characters = source_tags(
        value["initial_basis_sources"], factor_base, factor_raw, support, key
    )
    if value["selected_class_ids"] != selected_classes:
        fail(f"selected-class mismatch for {key}")
    if len(initial_characters) != int(value["initial_character_count"]):
        fail(f"initial count mismatch for {key}")
    definitions, raw_count = emit_source_definitions(
        prefix, base_tags, raw_tags, raw_classes
    )
    derived = value["derived_character_certificates"]
    final_characters = list(initial_characters)
    derived_blocks: list[str] = []
    derived_sources: list[tuple[str, int]] = []
    for j, certificate in enumerate(derived):
        expected_index = len(final_characters)
        if int(certificate["new_character_index"]) != expected_index:
            fail(f"nonsequential derived character in {key}")
        if int(certificate["prior_character_count"]) != expected_index:
            fail(f"wrong prior character count in {key}")
        if int(certificate["binomial_ratio"]) != 1 or certificate["orientation_reversed"] is not False:
            fail(f"unexpected derived binomial orientation in {key}")
        source = certificate["source_relation"]
        if source["kind"] == "first_overlap":
            source_kind = "overlap"
            source_index = int(source["index"])
            source_expression = f"tropicalOverlapRelation8 {source_index}"
        elif source["kind"] == "component_quotient":
            source_kind = "quotient"
            source_index = int(source["quotient_index"])
            source_expression = (
                f"tropicalComponentBQuotientRelation8 {source_index}"
            )
        else:
            fail(f"unexpected derived source in {key}: {source['kind']}")
        derived_sources.append((source_kind, source_index))
        new_character = research_character(certificate["new_character"], support, key)
        final_characters.append(new_character)
        source_terms = polynomial_terms(
            certificate["source_reduction"]["reduction"]["source_eq"]["rhs"],
            support,
            f"{key}.derived[{j}].source",
        )
        normalized_target = polynomial_terms(
            certificate["source_reduction"]["provenance"]["normalized_target"],
            support,
            f"{key}.derived[{j}].target",
        )
        unit, uses = validate_normalized(
            certificate["source_reduction"],
            final_characters[:-1],
            source_terms,
            normalized_target,
            support,
            f"{key}.derived[{j}]",
        )
        orientation_unit, shift = character_shift(
            normalized_target, new_character, f"{key}.derived[{j}]"
        )
        character_unit = unit * orientation_unit
        basis_expr = prefix_basis_expr(f"{prefix}Basis8", expected_index)
        cert_name = f"{prefix}CharacterCertificate{expected_index}_8"
        derived_blocks.append(
            f"""def {cert_name} :
    LaurentCharacterCertificate (κ := Fin {len(uses)})
      {basis_expr} ({source_expression})
      ({prefix}Basis8 {expected_index}) :=
  {{ unit := ({character_unit} : ℤ)
    unit_ne_zero := by norm_num
    shift := {emit_exponent(shift)}
    reduction := {emit_character_reduction(uses)} }}
"""
        )
    if len(final_characters) != int(value["final_character_count"]):
        fail(f"final character count mismatch for {key}")
    basis_entries = [f"{prefix}InitialBasis8 {i}" for i in range(len(initial_characters))]
    basis_entries += [emit_character(character) for character in final_characters[len(initial_characters):]]
    basis_definition = f"""def {prefix}Basis8 : Fin {len(final_characters)} → SignedCharacterRow (Fin 144) :=
{lean_vector(basis_entries, per_line=1)}
"""

    nested = value["nested_face_contradiction"]
    if int(nested["basis_character_count"]) != len(final_characters):
        fail(f"nested basis count mismatch for {key}")
    left_index = int(nested["left_relation_index"])
    right_index = int(nested["right_relation_index"])
    left_source = OFFICIAL_RELATION_NAMES[left_index]
    right_source = OFFICIAL_RELATION_NAMES[right_index]
    omitted_exponent = sparse_exponent(nested["omitted_exponent"], support, key)
    omitted_coefficient = fraction_to_int(nested["omitted_coefficient"], key)
    if omitted_coefficient == 0 or nested["omitted_coefficient_nonzero"] is not True:
        fail(f"zero omitted coefficient for {key}")
    face_scalar = int(nested["face_integer_scalar"])
    if face_scalar == 0:
        fail(f"zero face scalar for {key}")
    face_shift = sparse_exponent(nested["face_translation_shift"], support, key)
    left_target = polynomial_terms(
        nested["left_relation_reduction"]["provenance"]["normalized_target"], support, key
    )
    right_target = polynomial_terms(
        nested["right_relation_reduction"]["provenance"]["normalized_target"], support, key
    )
    omitted_matches = [
        index
        for index, (coefficient, exponent) in enumerate(left_target)
        if coefficient == omitted_coefficient and exponent == omitted_exponent
    ]
    if len(omitted_matches) != 1:
        fail(f"omitted term not found exactly once for {key}")
    face = tuple(
        term for index, term in enumerate(left_target) if index != omitted_matches[0]
    )
    left_source_terms = polynomial_terms(
        nested["left_relation_reduction"]["reduction"]["source_eq"]["rhs"], support, key
    )
    right_source_terms = polynomial_terms(
        nested["right_relation_reduction"]["reduction"]["source_eq"]["rhs"], support, key
    )
    left_unit, left_uses = validate_normalized(
        nested["left_relation_reduction"], final_characters, left_source_terms,
        left_target, support, f"{key}.nested.left"
    )
    right_unit, right_uses = validate_normalized(
        nested["right_relation_reduction"], final_characters, right_source_terms,
        right_target, support, f"{key}.nested.right"
    )
    compatibility_source = tuple(
        polynomial_dict(
            [(face_scalar * coefficient, add_exponents(face_shift, exponent)) for coefficient, exponent in face]
            + [(-coefficient, exponent) for coefficient, exponent in right_target]
        ).items()
    )
    compatibility_source_terms = tuple((coefficient, exponent) for exponent, coefficient in compatibility_source)
    paired = nested["paired_face_reduction_to_zero"]
    if int(paired["unit"]) != 1 or paired["unit_ne_zero"] is not True:
        fail(f"paired face reduction is not unit-normalized for {key}")
    paired_uses = validate_character_reduction(
        paired["reduction"], final_characters, compatibility_source_terms, (), support,
        f"{key}.nested.face",
    )
    nested_definition = f"""def {prefix}NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin {len(left_uses)}) (κRight := Fin {len(right_uses)})
      (κFace := Fin {len(paired_uses)}) {prefix}Basis8
      {left_source} {right_source} :=
  {{ omittedExponent := {emit_exponent(omitted_exponent)}
    omittedCoefficient := ({omitted_coefficient} : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := {emit_polynomial(face)}
    rightReduced := {emit_polynomial(right_target)}
    faceScalar := ({face_scalar} : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := {emit_exponent(face_shift)}
    leftReduction := {emit_normalized(left_unit, left_uses)}
    rightReduction := {emit_normalized(right_unit, right_uses)}
    faceReduction := {emit_character_reduction(paired_uses)} }}
"""
    header = f"""import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.LaurentNestedFaceCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

"""
    footer = "\nend\n\nend MonochromaticQuantumGraphs.N8D3\n"
    text = header + definitions + "\n" + basis_definition + "\n" + "\n".join(derived_blocks) + "\n" + nested_definition + footer
    metadata = {
        "module": module,
        "short": short,
        "prefix": prefix,
        "selected_classes": selected_classes,
        "raw_count": raw_count,
        "initial_count": len(initial_characters),
        "final_count": len(final_characters),
        "derived_sources": derived_sources,
        "left_index": left_index,
        "right_index": right_index,
    }
    return text, metadata


def emit_core_modules(
    key: str,
    value: dict[str, Any],
    factor_base: Sequence[tuple[Sequence[int], int]],
    factor_raw: Sequence[tuple[Sequence[int], int]],
    support: Sequence[int],
) -> tuple[dict[Path, str], dict[str, Any]]:
    """Emit one non-survivor destination as bounded certificate leaves."""
    module, short, selected_classes = CORE_LAYOUT[key]
    prefix = f"terminalB{module}"
    module_root = (
        f"MonochromaticQuantumGraphs.N8D3."
        f"TropicalTerminalComponentB8.{module}"
    )
    directory = COMPONENT_DIR / module
    outputs: dict[Path, str] = {}
    base_tags, raw_tags, raw_classes, initial_characters = source_tags(
        value["initial_basis_sources"], factor_base, factor_raw, support, key
    )
    if value["selected_class_ids"] != selected_classes:
        fail(f"selected-class mismatch for {key}")
    if len(initial_characters) != int(value["initial_character_count"]):
        fail(f"initial count mismatch for {key}")
    source_definitions, raw_count = emit_source_definitions(
        prefix, base_tags, raw_tags, raw_classes
    )

    final_characters = list(initial_characters)
    derived_items: list[dict[str, Any]] = []
    derived_sources: list[tuple[str, int]] = []
    for j, certificate in enumerate(value["derived_character_certificates"]):
        expected_index = len(final_characters)
        if int(certificate["new_character_index"]) != expected_index:
            fail(f"nonsequential derived character in {key}")
        if int(certificate["prior_character_count"]) != expected_index:
            fail(f"wrong prior character count in {key}")
        if (
            int(certificate["binomial_ratio"]) != 1
            or certificate["orientation_reversed"] is not False
        ):
            fail(f"unexpected derived binomial orientation in {key}")
        source = certificate["source_relation"]
        if source["kind"] == "first_overlap":
            source_kind = "overlap"
            source_index = int(source["index"])
            source_expression = f"tropicalOverlapRelation8 {source_index}"
        elif source["kind"] == "component_quotient":
            source_kind = "quotient"
            source_index = int(source["quotient_index"])
            source_expression = f"tropicalComponentBQuotientRelation8 {source_index}"
        else:
            fail(f"unexpected derived source in {key}: {source['kind']}")
        new_character = research_character(
            certificate["new_character"], support, key
        )
        final_characters.append(new_character)
        source_terms = polynomial_terms(
            certificate["source_reduction"]["reduction"]["source_eq"]["rhs"],
            support,
            f"{key}.derived[{j}].source",
        )
        normalized_target = polynomial_terms(
            certificate["source_reduction"]["provenance"]["normalized_target"],
            support,
            f"{key}.derived[{j}].target",
        )
        unit, uses = validate_normalized(
            certificate["source_reduction"],
            final_characters[:-1],
            source_terms,
            normalized_target,
            support,
            f"{key}.derived[{j}]",
        )
        orientation_unit, shift = character_shift(
            normalized_target, new_character, f"{key}.derived[{j}]"
        )
        character_unit = unit * orientation_unit
        target_terms = tuple(
            (unit * coefficient, exponent)
            for coefficient, exponent in normalized_target
        )
        derived_items.append(
            {
                "index": expected_index,
                "source_kind": source_kind,
                "source_index": source_index,
                "source_expression": source_expression,
                "source_terms": source_terms,
                "target_terms": target_terms,
                "uses": uses,
                "shift": shift,
                "character_unit": character_unit,
                "character": new_character,
            }
        )
        derived_sources.append((source_kind, source_index))
    if len(final_characters) != int(value["final_character_count"]):
        fail(f"final character count mismatch for {key}")

    basis_entries = [
        f"{prefix}InitialBasis8 {i}" for i in range(len(initial_characters))
    ] + [
        emit_character(character)
        for character in final_characters[len(initial_characters) :]
    ]
    basis_definition = f"""def {prefix}Basis8 :
    Fin {len(final_characters)} → SignedCharacterRow (Fin 144) :=
{lean_vector(basis_entries, per_line=1)}
"""
    outputs[directory / "Data.lean"] = lean_module(
        [
            "MonochromaticQuantumGraphs.LaurentBasisCertificate",
            "MonochromaticQuantumGraphs.LaurentNestedFaceCertificate",
            "MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Replay",
            "MonochromaticQuantumGraphs.N8D3.TropicalFactorB8",
            "MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8",
            "MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8",
        ],
        source_definitions + "\n" + basis_definition,
        f"Basis data for terminal Component-B destination {module}.",
    )

    character_modules: list[str] = []
    for item in derived_items:
        index = item["index"]
        leaf = f"Character{index}"
        leaf_module = f"{module_root}.{leaf}"
        leaf_dir = directory / leaf
        basis_expr = prefix_basis_expr(f"{prefix}Basis8", index)
        source_expression = item["source_expression"]
        shift = item["shift"]
        target_expression = (
            f"({item['character_unit']} : ℤ) • "
            f"LaurentPolynomial.translate {emit_exponent(shift)} "
            f"({prefix}Basis8 {index}).factorPolynomial"
        )
        if item["source_kind"] == "overlap":
            source_proof = overlap_explicit_proof(
                item["source_index"], item["source_terms"]
            )
        else:
            source_proof = defeq_explicit_proof(item["source_terms"])
        shifted_character = add_exponents(shift, item["character"][0])
        target_proof = (
            "  rw [terminalB_translate_factorPolynomial8]\n"
            + emit_exponent_equality(
                "hExponent",
                f"{emit_exponent(shift)} + ({prefix}Basis8 {index}).exponent",
                shifted_character,
            )
            + "  rw [hExponent]\n"
            + f"  simp [{prefix}Basis8, tropicalBinomialCharacter8, "
            "signedCoefficient] <;> abel\n"
        )
        use_name, source_eq_name, target_eq_name = emit_reduction_replay_modules(
            outputs=outputs,
            directory=leaf_dir,
            module_name=leaf_module,
            basis_import=f"{module_root}.Data",
            replay_prefix=f"{prefix}Character{index}",
            basis_expr=basis_expr,
            uses=item["uses"],
            source_expr=source_expression,
            target_expr=target_expression,
            source_terms=item["source_terms"],
            target_terms=item["target_terms"],
            source_explicit_proof=source_proof,
            target_explicit_proof=target_proof,
        )
        cert_name = f"{prefix}CharacterCertificate{index}_8"
        outputs[directory / f"{leaf}.lean"] = lean_module(
            [f"{leaf_module}.Source", f"{leaf_module}.Target"],
            f"""def {cert_name} :
    LaurentCharacterCertificate (κ := Fin {len(item['uses'])})
      {basis_expr} ({source_expression})
      ({prefix}Basis8 {index}) :=
  {{ unit := ({item['character_unit']} : ℤ)
    unit_ne_zero := by norm_num
    shift := {emit_exponent(shift)}
    reduction := {emit_reduction_record(use_name, source_eq_name, target_eq_name)} }}
""",
            f"Bounded character certificate {index} for {module}.",
        )
        character_modules.append(f"{module_root}.{leaf}")

    nested = value["nested_face_contradiction"]
    if int(nested["basis_character_count"]) != len(final_characters):
        fail(f"nested basis count mismatch for {key}")
    left_index = int(nested["left_relation_index"])
    right_index = int(nested["right_relation_index"])
    left_source = OFFICIAL_RELATION_NAMES[left_index]
    right_source = OFFICIAL_RELATION_NAMES[right_index]
    omitted_exponent = sparse_exponent(nested["omitted_exponent"], support, key)
    omitted_coefficient = fraction_to_int(nested["omitted_coefficient"], key)
    if omitted_coefficient == 0 or nested["omitted_coefficient_nonzero"] is not True:
        fail(f"zero omitted coefficient for {key}")
    face_scalar = int(nested["face_integer_scalar"])
    if face_scalar == 0:
        fail(f"zero face scalar for {key}")
    face_shift = sparse_exponent(nested["face_translation_shift"], support, key)
    left_target = polynomial_terms(
        nested["left_relation_reduction"]["provenance"]["normalized_target"],
        support,
        key,
    )
    right_target = polynomial_terms(
        nested["right_relation_reduction"]["provenance"]["normalized_target"],
        support,
        key,
    )
    omitted_matches = [
        i
        for i, (coefficient, exponent) in enumerate(left_target)
        if coefficient == omitted_coefficient and exponent == omitted_exponent
    ]
    if len(omitted_matches) != 1:
        fail(f"omitted term not found exactly once for {key}")
    face = tuple(
        term for i, term in enumerate(left_target) if i != omitted_matches[0]
    )
    left_source_terms = polynomial_terms(
        nested["left_relation_reduction"]["reduction"]["source_eq"]["rhs"],
        support,
        key,
    )
    right_source_terms = polynomial_terms(
        nested["right_relation_reduction"]["reduction"]["source_eq"]["rhs"],
        support,
        key,
    )
    left_unit, left_uses = validate_normalized(
        nested["left_relation_reduction"],
        final_characters,
        left_source_terms,
        left_target,
        support,
        f"{key}.nested.left",
    )
    right_unit, right_uses = validate_normalized(
        nested["right_relation_reduction"],
        final_characters,
        right_source_terms,
        right_target,
        support,
        f"{key}.nested.right",
    )
    compatibility_source_dict = polynomial_dict(
        [
            (
                face_scalar * coefficient,
                add_exponents(face_shift, exponent),
            )
            for coefficient, exponent in face
        ]
        + [(-coefficient, exponent) for coefficient, exponent in right_target]
    )
    compatibility_source_terms = tuple(
        (coefficient, exponent)
        for exponent, coefficient in compatibility_source_dict.items()
    )
    paired = nested["paired_face_reduction_to_zero"]
    if int(paired["unit"]) != 1 or paired["unit_ne_zero"] is not True:
        fail(f"paired face reduction is not unit-normalized for {key}")
    paired_uses = validate_character_reduction(
        paired["reduction"],
        final_characters,
        compatibility_source_terms,
        (),
        support,
        f"{key}.nested.face",
    )

    nested_module = f"{module_root}.Nested"
    nested_dir = directory / "Nested"
    outputs[nested_dir / "Data.lean"] = lean_module(
        [f"{module_root}.Data"],
        f"""def {prefix}NestedOmittedExponent8 : LaurentExponent (Fin 144) :=
  {emit_exponent(omitted_exponent)}

def {prefix}NestedFace8 : LaurentPolynomial (Fin 144) :=
  {emit_polynomial(face)}

def {prefix}NestedRightReduced8 : LaurentPolynomial (Fin 144) :=
  {emit_polynomial(right_target)}

def {prefix}NestedFaceShift8 : LaurentExponent (Fin 144) :=
  {emit_exponent(face_shift)}
""",
        f"Shared nested-face data for {module}.",
    )

    left_target_terms = tuple(
        (left_unit * coefficient, exponent)
        for coefficient, exponent in left_target
    )
    left_target_expr = (
        f"({left_unit} : ℤ) • (Finsupp.single "
        f"{prefix}NestedOmittedExponent8 ({omitted_coefficient} : ℤ) + "
        f"{prefix}NestedFace8)"
    )
    left_use, left_source_eq, left_target_eq = emit_reduction_replay_modules(
        outputs=outputs,
        directory=nested_dir / "Left",
        module_name=f"{nested_module}.Left",
        basis_import=f"{nested_module}.Data",
        replay_prefix=f"{prefix}NestedLeft",
        basis_expr=f"{prefix}Basis8",
        uses=left_uses,
        source_expr=left_source,
        target_expr=left_target_expr,
        source_terms=left_source_terms,
        target_terms=left_target_terms,
        source_explicit_proof=terminal_explicit_proof(left_index, left_source_terms),
        target_explicit_proof=(
            f"  simp [{prefix}NestedOmittedExponent8, {prefix}NestedFace8] "
            "<;> abel\n"
        ),
    )
    outputs[nested_dir / "Left.lean"] = lean_module(
        [f"{nested_module}.Left.Source", f"{nested_module}.Left.Target"],
        f"""def {prefix}NestedLeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin {len(left_uses)})
      {prefix}Basis8 {left_source}
      (Finsupp.single {prefix}NestedOmittedExponent8
        ({omitted_coefficient} : ℤ) + {prefix}NestedFace8) :=
  {{ unit := ({left_unit} : ℤ)
    unit_ne_zero := by norm_num
    reduction := {emit_reduction_record(left_use, left_source_eq, left_target_eq)} }}
""",
        f"Left nested reduction for {module}.",
    )

    right_target_terms = tuple(
        (right_unit * coefficient, exponent)
        for coefficient, exponent in right_target
    )
    right_target_expr = (
        f"({right_unit} : ℤ) • {prefix}NestedRightReduced8"
    )
    right_use, right_source_eq, right_target_eq = emit_reduction_replay_modules(
        outputs=outputs,
        directory=nested_dir / "Right",
        module_name=f"{nested_module}.Right",
        basis_import=f"{nested_module}.Data",
        replay_prefix=f"{prefix}NestedRight",
        basis_expr=f"{prefix}Basis8",
        uses=right_uses,
        source_expr=right_source,
        target_expr=right_target_expr,
        source_terms=right_source_terms,
        target_terms=right_target_terms,
        source_explicit_proof=terminal_explicit_proof(right_index, right_source_terms),
        target_explicit_proof=(
            f"  simp [{prefix}NestedRightReduced8] <;> abel\n"
        ),
    )
    outputs[nested_dir / "Right.lean"] = lean_module(
        [f"{nested_module}.Right.Source", f"{nested_module}.Right.Target"],
        f"""def {prefix}NestedRightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin {len(right_uses)})
      {prefix}Basis8 {right_source} {prefix}NestedRightReduced8 :=
  {{ unit := ({right_unit} : ℤ)
    unit_ne_zero := by norm_num
    reduction := {emit_reduction_record(right_use, right_source_eq, right_target_eq)} }}
""",
        f"Right nested reduction for {module}.",
    )

    face_source_expr = (
        f"({face_scalar} : ℤ) • LaurentPolynomial.translate "
        f"{prefix}NestedFaceShift8 {prefix}NestedFace8 - "
        f"{prefix}NestedRightReduced8"
    )
    exponent_lemmas = ""
    exponent_names: list[str] = []
    for i, (_, exponent) in enumerate(face):
        name = f"hFaceExponent{i}"
        exponent_names.append(name)
        exponent_lemmas += emit_exponent_equality(
            name,
            f"{prefix}NestedFaceShift8 + {emit_exponent(exponent)}",
            add_exponents(face_shift, exponent),
        )
    face_source_proof = exponent_lemmas + f"""  unfold {prefix}NestedFace8
  unfold {prefix}NestedFaceShift8 {prefix}NestedRightReduced8
  simp only [LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single]
  rw [{', '.join(exponent_names)}]
  simp only [one_zsmul, neg_one_zsmul] <;> abel
"""
    face_use, face_source_eq, face_target_eq = emit_reduction_replay_modules(
        outputs=outputs,
        directory=nested_dir / "Face",
        module_name=f"{nested_module}.Face",
        basis_import=f"{nested_module}.Data",
        replay_prefix=f"{prefix}NestedFace",
        basis_expr=f"{prefix}Basis8",
        uses=paired_uses,
        source_expr=face_source_expr,
        target_expr="(0 : LaurentPolynomial (Fin 144))",
        source_terms=compatibility_source_terms,
        target_terms=(),
        source_explicit_proof=face_source_proof,
        target_explicit_proof="  rfl\n",
    )
    outputs[nested_dir / "Face.lean"] = lean_module(
        [f"{nested_module}.Face.Source", f"{nested_module}.Face.Target"],
        f"""def {prefix}NestedFaceReduction8 :
    CharacterReductionCertificate (κ := Fin {len(paired_uses)})
      {prefix}Basis8
      ({face_source_expr}) 0 :=
  {emit_reduction_record(face_use, face_source_eq, face_target_eq)}
""",
        f"Compatibility reduction for {module}.",
    )
    outputs[directory / "Nested.lean"] = lean_module(
        [
            f"{nested_module}.Left",
            f"{nested_module}.Right",
            f"{nested_module}.Face",
        ],
        f"""def {prefix}NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin {len(left_uses)}) (κRight := Fin {len(right_uses)})
      (κFace := Fin {len(paired_uses)}) {prefix}Basis8
      {left_source} {right_source} :=
  {{ omittedExponent := {prefix}NestedOmittedExponent8
    omittedCoefficient := ({omitted_coefficient} : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := {prefix}NestedFace8
    rightReduced := {prefix}NestedRightReduced8
    faceScalar := ({face_scalar} : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := {prefix}NestedFaceShift8
    leftReduction := {prefix}NestedLeftReduction8
    rightReduction := {prefix}NestedRightReduction8
    faceReduction := {prefix}NestedFaceReduction8 }}
""",
        f"Complete nested-face certificate for {module}.",
    )

    outputs[COMPONENT_DIR / f"{module}.lean"] = "\n".join(
        [*(f"import {name}" for name in character_modules),
         f"import {module_root}.Nested", ""]
    )
    metadata = {
        "module": module,
        "short": short,
        "prefix": prefix,
        "selected_classes": selected_classes,
        "raw_count": raw_count,
        "initial_count": len(initial_characters),
        "final_count": len(final_characters),
        "derived_sources": derived_sources,
        "left_index": left_index,
        "right_index": right_index,
    }
    return outputs, metadata


def emit_non_survivor(metadata: Sequence[dict[str, Any]]) -> str:
    imports = "\n".join(
        f"import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.{item['module']}"
        for item in metadata
    )
    proofs: list[str] = []
    for item in metadata:
        prefix = item["prefix"]
        short = item["short"]
        raw_count = item["raw_count"]
        selected = item["selected_classes"]
        zero_args = "\n    ".join(
            f"(hzero{c} : AllZeroInClass tropicalComponentBClassMembers8\n      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue\n        (tropicalSupportWeight8 W)) {c})"
            for c in selected
        )
        selected_dispatch = {
            "class7": "componentBDispatch8_class7_iff",
            "core817": "componentBDispatch8_core817_iff",
            "class14": "componentBDispatch8_class14_iff",
            "class19": "componentBDispatch8_class19_iff",
        }[short]
        initial_holds = f"""private theorem {prefix}InitialBasis_holds8
    {{W : WeightsN 8 3 ℂ}} (hChars : TropicalComponentBCharacters8 W)
    {zero_args} :
    ∀ c, ({prefix}InitialBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin {raw_count},
      (tropicalComponentBRawFactor8 ({prefix}RawSource8 r)).Holds x := by
    intro r
    fin_cases r
"""
        for raw_index in range(raw_count):
            # RawClass values are known from metadata definitions; let Lean
            # reduce them, while select the matching hypothesis by Python.
            # The value is recovered from the generated source definitions by
            # the terminal JSON and selected class set.
            if len(selected) == 1:
                class_id = selected[0]
            else:
                # Core order is class 8 rows followed by class 17 rows.
                class_id = 8 if raw_index < 3 else 17
            initial_holds += f"    · exact rawCharacter_holds_of_allZeroInClass x\n        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero{class_id} (by decide)\n"
        initial_holds += f"""  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 ({prefix}RawSource8 r))
    hChars hraw ({prefix}InitialSource8 c)
"""
        final_count = item["final_count"]
        initial_count = item["initial_count"]
        semantic = f"""
theorem {prefix}_impossible8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    {zero_args} : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hInitial := {prefix}InitialBasis_holds8 hChars {' '.join(f'hzero{c}' for c in selected)}
"""
        for i in range(initial_count):
            semantic += f"  have h{i} : ({prefix}Basis8 {i}).Holds x := hInitial {i}\n"
        for offset, (source_kind, source_index) in enumerate(item["derived_sources"]):
            index = initial_count + offset
            if source_kind == "overlap":
                source_expression = f"tropicalOverlapRelation8 {source_index}"
                source_holds = (
                    f"tropicalOverlapRelations8_hold hSupport hEq {source_index}"
                )
            else:
                source_expression = (
                    f"tropicalComponentBQuotientRelation8 {source_index}"
                )
                source_holds = (
                    "tropicalComponentBQuotientRelations8_hold "
                    f"hSupport hEq hChars {source_index}"
                )
            semantic += f"""  have hPrefix{index} : ∀ c : Fin {index},
      ({prefix}Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h{index} : ({prefix}Basis8 {index}).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin {index} ↦ {prefix}Basis8 ⟨c.val, by omega⟩)
      ({source_expression}) ({prefix}Basis8 {index})
      {prefix}CharacterCertificate{index}_8 hPrefix{index}
      ({source_holds})
"""
        semantic += f"""  have hBasis : ∀ c, ({prefix}Basis8 c).Holds x := by
    intro c
    fin_cases c <;> assumption
  exact false_of_laurentNestedFaceCertificate x hx {prefix}Basis8
    {OFFICIAL_RELATION_NAMES[item['left_index']]}
    {OFFICIAL_RELATION_NAMES[item['right_index']]}
    {prefix}NestedCertificate8 hBasis
    ({OFFICIAL_RELATION_NAMES[item['left_index']]}_hold hSupport hEq)
    ({OFFICIAL_RELATION_NAMES[item['right_index']]}_hold hSupport hEq)
"""
        proofs.append(initial_holds + semantic)
    dispatch = """
/-- All non-survivor Component B cover destinations are contradictory.  The
remaining cover is therefore one of the three exact survivor rows. -/
theorem tropicalTerminalComponentB8_survivor_cover
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∃ i : Fin 288, componentBDispatch8 i = .survivor ∧
      ∀ c ∈ componentBCover8 i,
        AllZeroInClass tropicalComponentBClassMembers8
          (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
            (tropicalSupportWeight8 W)) c := by
  obtain ⟨i, hcover⟩ :=
    tropicalComponentB_allZero_class_cover8 hSupport hEq hChars
  cases hdispatch : componentBDispatch8 i with
  | class7 =>
      exact False.elim (terminalBClass7_impossible8 hSupport hEq hChars
        (hcover 7 ((componentBDispatch8_class7_iff i).mp hdispatch)))
  | core817 =>
      have hcore := (componentBDispatch8_core817_iff i).mp hdispatch
      exact False.elim (terminalBCore817_impossible8 hSupport hEq hChars
        (hcover 8 (hcore.2 (by decide)))
        (hcover 17 (hcore.2 (by decide))))
  | class14 =>
      have h14 := (componentBDispatch8_class14_iff i).mp hdispatch
      exact False.elim (terminalBClass14_impossible8 hSupport hEq hChars
        (hcover 14 h14.2.2))
  | class19 =>
      have h19 := (componentBDispatch8_class19_iff i).mp hdispatch
      exact False.elim (terminalBClass19_impossible8 hSupport hEq hChars
        (hcover 19 h19.2.2.2))
  | survivor =>
      exact ⟨i, hdispatch, hcover⟩
"""
    return f"""{imports}

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs.FactorCoverCertificate

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

{''.join(proofs)}
{dispatch}

end

end MonochromaticQuantumGraphs.N8D3
"""


def emit_branch_data() -> str:
    return """import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

/-- The three exact second-stage factor vertices, in canonical order A,C,B. -/
def terminalBSplitCharacter8 : Fin 3 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 69 99 70 98,
  tropicalBinomialCharacter8 38 70 39 69,
  tropicalBinomialCharacter8 9 65 11 59
]

/-- The four support-local rows required by the branch-zero derivative. -/
def terminalBBranch0TargetCharacter8 : Fin 4 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 69 130 70 127,
  tropicalBinomialCharacter8 69 129 70 126,
  tropicalBinomialCharacter8 69 99 70 98,
  tropicalBinomialCharacter8 38 70 39 69
]

/-- The five support-local rows required by the branch-one derivative. -/
def terminalBBranch1TargetCharacter8 : Fin 5 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 17 69 15 75,
  tropicalBinomialCharacter8 69 77 71 75,
  tropicalBinomialCharacter8 11 69 9 75,
  tropicalBinomialCharacter8 69 76 70 75,
  tropicalBinomialCharacter8 65 69 59 75
]

theorem terminalB_translate_sub_holds8
    (x : Fin 144 → ℂ) (hx : ∀ i, x i ≠ 0)
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144))
    (hp : p.Holds x) (hq : q.Holds x) :
    (LaurentPolynomial.translate shift p - q).Holds x := by
  unfold LaurentPolynomial.Holds at hp hq ⊢
  rw [LaurentPolynomial.eval_sub,
    LaurentPolynomial.eval_translate x hx, hp, hq]
  ring

theorem terminalB_branch0DerivativeCharacters8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds
      (tropicalSupportWeight8 W)) : Branch0DerivativeCharacters8 W := by
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have h0 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 130 70 127).mp (hRows 0)
  have h1 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 129 70 126).mp (hRows 1)
  have h2 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 99 70 98).mp (hRows 2)
  have h3 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 38 70 39 69).mp (hRows 3)
  refine ⟨?_, ?_, ?_, ?_⟩
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 130 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 127
    exact h0
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 129 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 126
    exact h1
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 99 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 98
    exact h2
  · change tropicalSupportWeight8 W 38 * tropicalSupportWeight8 W 70 =
      tropicalSupportWeight8 W 39 * tropicalSupportWeight8 W 69
    exact h3

theorem terminalB_branch1DerivativeCharacters8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds
      (tropicalSupportWeight8 W)) : Branch1DerivativeCharacters8 W := by
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have h0 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 17 69 15 75).mp (hRows 0)
  have h1 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 77 71 75).mp (hRows 1)
  have h2 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 11 69 9 75).mp (hRows 2)
  have h3 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 76 70 75).mp (hRows 3)
  have h4 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 65 69 59 75).mp (hRows 4)
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 17 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 15
    simpa [mul_comm] using h0
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 77 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 71
    exact h1
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 11 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 9
    simpa [mul_comm] using h2
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 76 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 70
    exact h3
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 65 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 59
    simpa [mul_comm] using h4

end

end MonochromaticQuantumGraphs.N8D3
"""


def factor_target_polynomial(left: tuple[Sequence[int], int], right: tuple[Sequence[int], int], shift: Sequence[int], unit: int) -> tuple[tuple[int, tuple[int, ...]], ...]:
    left_exp, left_sign = left
    right_exp, right_sign = right
    left_scalar = 1 if left_sign % 2 == 0 else -1
    right_scalar = 1 if right_sign % 2 == 0 else -1
    zero = (0,) * 144
    terms = [
        (unit, add_exponents(shift, add_exponents(left_exp, right_exp))),
        (-unit * right_scalar, add_exponents(shift, left_exp)),
        (-unit * left_scalar, add_exponents(shift, right_exp)),
        (unit * left_scalar * right_scalar, tuple(shift)),
    ]
    return tuple((coefficient, exponent) for exponent, coefficient in polynomial_dict(terms).items())


def emit_state_shard(state: dict[str, Any], factor_base: Sequence[tuple[Sequence[int], int]], factor_raw: Sequence[tuple[Sequence[int], int]], support: Sequence[int]) -> str:
    state_index = int(state["state"])
    if state_index not in (3, 9, 15):
        fail(f"unexpected survivor state {state_index}")
    prefix = f"terminalBState{state_index}"
    base_tags, raw_tags, raw_classes, raw_basis_characters = source_tags(
        state["raw_cover_basis_sources"], factor_base, factor_raw, support,
        f"state{state_index}.raw_basis",
    )
    if len(raw_basis_characters) != 19 or state["raw_cover_basis_character_count"] != 19:
        fail(f"state {state_index} does not have the required 19-character basis")
    source_definitions, raw_count = emit_source_definitions(
        f"{prefix}Raw", base_tags, raw_tags, raw_classes
    )
    if raw_count != 17:
        fail(f"state {state_index} does not have 17 raw cover characters")
    # Rename the generic Initial names to the public RawBasis terminology.
    source_definitions = source_definitions.replace(
        f"{prefix}RawInitialSource8", f"{prefix}RawBasisSource8"
    ).replace(
        f"{prefix}RawInitialBasis8", f"{prefix}RawBasis8"
    )
    parent_cover = [int(x) for x in state["parent_cover"]]
    if parent_cover not in (
        [0, 1, 2, 3, 4, 9, 10, 11, 12, 17, 22],
        [0, 1, 2, 4, 6, 9, 10, 11, 12, 17, 22],
        [0, 1, 4, 6, 9, 10, 11, 12, 17, 18, 22],
    ):
        fail(f"unexpected parent cover for state {state_index}")

    second = state["second_quotient"]
    emitted = second["emitted_rows"]
    if len(emitted) != 2 or second["only_semantically_required_eliminants_emitted"] is not True:
        fail(f"state {state_index} does not emit exactly two eliminants")
    relation_names = []
    combination_blocks = []
    for j, row in enumerate(emitted):
        provenance = row["provenance"]
        if int(provenance["source_i"]["quotient_index"]) != 0 or int(provenance["source_j"]["quotient_index"]) != 2:
            fail(f"state {state_index} eliminant {j} does not use Bq0/Bq2")
        if int(provenance["integer_scalar"]) != 1:
            fail(f"state {state_index} eliminant {j} has nonunit source scalar")
        shift = sparse_exponent(provenance["shift"], support, f"state{state_index}.shift{j}")
        source_q0 = polynomial_terms(provenance["source_i"]["relation"], support, f"state{state_index}.q0")
        source_q2 = polynomial_terms(provenance["source_j"]["relation"], support, f"state{state_index}.q2")
        raw_combination = tuple(
            (coefficient, add_exponents(shift, exponent)) for coefficient, exponent in source_q0
        ) + tuple((-coefficient, exponent) for coefficient, exponent in source_q2)
        target_relation = polynomial_terms(row["relation"], support, f"state{state_index}.relation{j}")
        unit, uses = validate_normalized(
            row["combination_reduction"], raw_basis_characters, raw_combination,
            target_relation, support, f"state{state_index}.combination{j}",
        )
        relation_name = f"{prefix}SplitRelation{j}_8"
        relation_names.append(relation_name)
        combination_blocks.append(f"""def {relation_name} : LaurentPolynomial (Fin 144) :=
  {emit_polynomial(target_relation)}

def {prefix}CombinationCertificate{j}_8 :
    NormalizedCharacterReductionCertificate (κ := Fin {len(uses)})
      {prefix}RawBasis8
      (LaurentPolynomial.translate {emit_exponent(shift)}
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2)
      {relation_name} :=
  {emit_normalized(unit, uses)}

def {prefix}CombinationShift{j}_8 : LaurentExponent (Fin 144) :=
  {emit_exponent(shift)}
""")

    split = state["split_factor_graph"]
    vertices = [
        character_row_from_factor_json(vertex, support, f"state{state_index}.vertex")
        for vertex in split["vertices"]
    ]
    expected_vertices = [
        ((tuple([0] * 144)), 0),
    ]
    # Compare directly with the common A,C,B definitions reconstructed from
    # their support-local rows.
    common_vertices = [
        research_character({"bit": 0, "row": [
            {"local": i, "global": support[i], "exp": e}
            for i, e in enumerate(row) if e
        ]}, support, "common")
        for row in (
            tuple(1 if i in (69, 99) else -1 if i in (70, 98) else 0 for i in range(144)),
            tuple(1 if i in (38, 70) else -1 if i in (39, 69) else 0 for i in range(144)),
            tuple(1 if i in (9, 65) else -1 if i in (11, 59) else 0 for i in range(144)),
        )
    ]
    if vertices != common_vertices:
        fail(f"state {state_index} split vertices differ from common A,C,B")
    factor_blocks = []
    for j, factor in enumerate(split["factor_certificates"]):
        edge = [
            research_character(character, support, f"state{state_index}.factor{j}")
            for character in factor["factor_edge"]
        ]
        expected_edge = [vertices[0], vertices[2]] if j == 0 else [vertices[1], vertices[2]]
        if edge != expected_edge:
            fail(f"state {state_index} split factor edge {j} mismatch")
        factor_json = factor["factor_certificate"]
        unit = int(factor_json["unit"])
        if unit == 0 or factor_json["unit_ne_zero"] is not True:
            fail(f"state {state_index} factor {j} has zero unit")
        shift = sparse_exponent(factor_json["shift"], support, f"state{state_index}.factor{j}")
        source_relation = polynomial_terms(
            factor_json["reduction"]["source_eq"]["rhs"], support,
            f"state{state_index}.factor{j}.source",
        )
        emitted_relation = polynomial_terms(emitted[j]["relation"], support, f"state{state_index}.emitted{j}")
        if polynomial_dict(source_relation) != polynomial_dict(emitted_relation):
            fail(f"state {state_index} factor source mismatch")
        target = factor_target_polynomial(edge[0], edge[1], shift, unit)
        uses = validate_character_reduction(
            factor_json["reduction"], raw_basis_characters, source_relation, target,
            support, f"state{state_index}.factor{j}",
        )
        factor_blocks.append(f"""def {prefix}FactorCertificate{j}_8 :
    LaurentFactorCertificate (κ := Fin {len(uses)}) {prefix}RawBasis8
      {relation_names[j]} (terminalBSplitCharacter8 {0 if j == 0 else 1})
      (terminalBSplitCharacter8 2) :=
  {{ unit := ({unit} : ℤ)
    unit_ne_zero := by norm_num
    shift := {emit_exponent(shift)}
    reduction := {emit_character_reduction(uses)} }}
""")

    branch_blocks = []
    branch_metadata = []
    for branch in state["branches"]:
        branch_index = int(branch["branch"])
        if branch_index not in (0, 1):
            fail(f"unexpected branch in state {state_index}")
        compact_count = 21 if branch_index == 0 else 20
        target_count = 4 if branch_index == 0 else 5
        selected_vertices = [0, 1] if branch_index == 0 else [2]
        if int(branch["compact_basis_character_count"]) != compact_count:
            fail(f"state {state_index} branch {branch_index} compact count mismatch")
        compact_characters = [
            research_character(character, support, f"state{state_index}.branch{branch_index}.basis")
            for character in branch["compact_basis_characters"]
        ]
        expected_compact = raw_basis_characters + [vertices[i] for i in selected_vertices]
        if compact_characters != expected_compact:
            fail(f"state {state_index} branch {branch_index} basis order mismatch")
        source_type_count = len(selected_vertices)
        source_entries = [f".base {i}" for i in range(19)] + [
            f".raw {i}" for i in range(source_type_count)
        ]
        split_entries = [f"terminalBSplitCharacter8 {i}" for i in selected_vertices]
        block = f"""def {prefix}Branch{branch_index}Source8 :
    Fin {compact_count} → FactorBasisSource (Fin 19) (Fin {source_type_count}) :=
{lean_vector(source_entries, per_line=6)}

def {prefix}Branch{branch_index}SplitRow8 :
    Fin {source_type_count} → SignedCharacterRow (Fin 144) :=
{lean_vector(split_entries, per_line=3)}

def {prefix}Branch{branch_index}Basis8 :
    Fin {compact_count} → SignedCharacterRow (Fin 144) :=
  fun i ↦ ({prefix}Branch{branch_index}Source8 i).row {prefix}RawBasis8
    {prefix}Branch{branch_index}SplitRow8
"""
        implications = branch["derivative_character_implications"]
        if len(implications) != target_count:
            fail(f"state {state_index} branch {branch_index} target count mismatch")
        cert_names = []
        target_function = f"terminalBBranch{branch_index}TargetCharacter8"
        for j, implication in enumerate(implications):
            if int(implication["target_index"]) != j:
                fail(f"state {state_index} branch {branch_index} target order mismatch")
            target = research_character(
                implication["target_character"], support,
                f"state{state_index}.branch{branch_index}.target{j}",
            )
            coeff = validate_implication(
                implication["implication_certificate"], compact_characters, target,
                support, f"state{state_index}.branch{branch_index}.target{j}",
            )
            cert_name = f"{prefix}Branch{branch_index}Implication{j}_8"
            cert_names.append(cert_name)
            block += f"""
def {cert_name} :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator {prefix}Branch{branch_index}Basis8)
      ({target_function} {j}) :=
  {emit_implication_fields(coeff)}
"""
        branch_blocks.append(block)
        branch_metadata.append((branch_index, compact_count, target_count, cert_names))

    hraw_proof = f"""open MonochromaticQuantumGraphs.FactorCoverCertificate

private theorem {prefix}RawBasis_holds8
    {{W : WeightsN 8 3 ℂ}} (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 {state_index},
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) :
    ∀ c, ({prefix}RawBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 17,
      (tropicalComponentBRawFactor8 ({prefix}RawRawSource8 r)).Holds x := by
    intro r
    apply rawCharacter_holds_of_allZeroInClass x
      tropicalComponentBClassMembers8 tropicalComponentBRawFactor8
      (hcover ({prefix}RawRawClass8 r) (by fin_cases r <;> decide))
    fin_cases r <;> decide
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 ({prefix}RawRawSource8 r))
    hChars hraw ({prefix}RawBasisSource8 c)
"""
    semantic = f"""
theorem {prefix}_impossible8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 {state_index},
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hRaw := {prefix}RawBasis_holds8 hChars hcover
  have hq0 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 0
  have hq2 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 2
"""
    for j in range(2):
        semantic += f"""  have hCombination{j} :
      (LaurentPolynomial.translate {prefix}CombinationShift{j}_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx {prefix}CombinationShift{j}_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation{j} : {relation_names[j]}.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx {prefix}RawBasis8
      _ _ {prefix}CombinationCertificate{j}_8 hRaw hCombination{j}
"""
    semantic += f"""  have hAB := factorCertificate_cases x hx {prefix}RawBasis8
    {relation_names[0]} (terminalBSplitCharacter8 0)
    (terminalBSplitCharacter8 2) {prefix}FactorCertificate0_8 hRaw hRelation0
  have hCB := factorCertificate_cases x hx {prefix}RawBasis8
    {relation_names[1]} (terminalBSplitCharacter8 1)
    (terminalBSplitCharacter8 2) {prefix}FactorCertificate1_8 hRaw hRelation1
  have hsplit :
      ((terminalBSplitCharacter8 0).Holds x ∧
        (terminalBSplitCharacter8 1).Holds x) ∨
      (terminalBSplitCharacter8 2).Holds x := by
    rcases hAB with hA | hB
    · rcases hCB with hC | hB
      · exact Or.inl ⟨hA, hC⟩
      · exact Or.inr hB
    · exact Or.inr hB
  rcases hsplit with hBranch0 | hBranch1
  · have hBasis : ∀ c, ({prefix}Branch0Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x {prefix}RawBasis8
        {prefix}Branch0SplitRow8 hRaw (by intro r; fin_cases r <;> simp [hBranch0])
        ({prefix}Branch0Source8 c)
    have hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
"""
    for j in range(4):
        semantic += f"      · exact SignedCharacterRow.holds_of_implicationCertificate x hx\n        (SignedCharacterRow.withParityGenerator {prefix}Branch0Basis8)\n        (terminalBBranch0TargetCharacter8 {j}) {prefix}Branch0Implication{j}_8\n        (SignedCharacterRow.withParityGenerator_holds x {prefix}Branch0Basis8 hBasis)\n"
    semantic += f"""    exact branch0DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch0DerivativeCharacters8 hSupport hRows)
  · have hBasis : ∀ c, ({prefix}Branch1Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x {prefix}RawBasis8
        {prefix}Branch1SplitRow8 hRaw (by intro r; fin_cases r; exact hBranch1)
        ({prefix}Branch1Source8 c)
    have hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
"""
    for j in range(5):
        semantic += f"      · exact SignedCharacterRow.holds_of_implicationCertificate x hx\n        (SignedCharacterRow.withParityGenerator {prefix}Branch1Basis8)\n        (terminalBBranch1TargetCharacter8 {j}) {prefix}Branch1Implication{j}_8\n        (SignedCharacterRow.withParityGenerator_holds x {prefix}Branch1Basis8 hBasis)\n"
    semantic += """    exact branch1DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch1DerivativeCharacters8 hSupport hRows)
"""
    return f"""import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.Data

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

{source_definitions}

{''.join(combination_blocks)}

{''.join(factor_blocks)}

{''.join(branch_blocks)}

{hraw_proof}
{semantic}

end

end MonochromaticQuantumGraphs.N8D3
"""


def emit_state_modules(
    state: dict[str, Any],
    factor_base: Sequence[tuple[Sequence[int], int]],
    factor_raw: Sequence[tuple[Sequence[int], int]],
    support: Sequence[int],
) -> dict[Path, str]:
    state_index = int(state["state"])
    if state_index not in (3, 9, 15):
        fail(f"unexpected survivor state {state_index}")
    prefix = f"terminalBState{state_index}"
    state_module = (
        f"MonochromaticQuantumGraphs.N8D3."
        f"TropicalTerminalBranches8.State{state_index}"
    )
    directory = BRANCH_DIR / f"State{state_index}"
    outputs: dict[Path, str] = {}
    base_tags, raw_tags, raw_classes, raw_basis_characters = source_tags(
        state["raw_cover_basis_sources"],
        factor_base,
        factor_raw,
        support,
        f"state{state_index}.raw_basis",
    )
    if (
        len(raw_basis_characters) != 19
        or state["raw_cover_basis_character_count"] != 19
    ):
        fail(f"state {state_index} does not have the required 19-character basis")
    source_definitions, raw_count = emit_source_definitions(
        f"{prefix}Raw", base_tags, raw_tags, raw_classes
    )
    if raw_count != 17:
        fail(f"state {state_index} does not have 17 raw cover characters")
    source_definitions = source_definitions.replace(
        f"{prefix}RawInitialSource8", f"{prefix}RawBasisSource8"
    ).replace(f"{prefix}RawInitialBasis8", f"{prefix}RawBasis8")
    parent_cover = [int(x) for x in state["parent_cover"]]
    if parent_cover not in (
        [0, 1, 2, 3, 4, 9, 10, 11, 12, 17, 22],
        [0, 1, 2, 4, 6, 9, 10, 11, 12, 17, 22],
        [0, 1, 4, 6, 9, 10, 11, 12, 17, 18, 22],
    ):
        fail(f"unexpected parent cover for state {state_index}")

    second = state["second_quotient"]
    emitted = second["emitted_rows"]
    if (
        len(emitted) != 2
        or second["only_semantically_required_eliminants_emitted"] is not True
    ):
        fail(f"state {state_index} does not emit exactly two eliminants")
    combination_items: list[dict[str, Any]] = []
    data_blocks: list[str] = [source_definitions]
    for j, row in enumerate(emitted):
        provenance = row["provenance"]
        if (
            int(provenance["source_i"]["quotient_index"]) != 0
            or int(provenance["source_j"]["quotient_index"]) != 2
        ):
            fail(f"state {state_index} eliminant {j} does not use Bq0/Bq2")
        if int(provenance["integer_scalar"]) != 1:
            fail(f"state {state_index} eliminant {j} has nonunit source scalar")
        shift = sparse_exponent(
            provenance["shift"], support, f"state{state_index}.shift{j}"
        )
        source_q0 = polynomial_terms(
            provenance["source_i"]["relation"],
            support,
            f"state{state_index}.q0",
        )
        source_q2 = polynomial_terms(
            provenance["source_j"]["relation"],
            support,
            f"state{state_index}.q2",
        )
        raw_combination = tuple(
            (coefficient, add_exponents(shift, exponent))
            for coefficient, exponent in source_q0
        ) + tuple((-coefficient, exponent) for coefficient, exponent in source_q2)
        target_relation = polynomial_terms(
            row["relation"], support, f"state{state_index}.relation{j}"
        )
        unit, uses = validate_normalized(
            row["combination_reduction"],
            raw_basis_characters,
            raw_combination,
            target_relation,
            support,
            f"state{state_index}.combination{j}",
        )
        relation_name = f"{prefix}SplitRelation{j}_8"
        shift_name = f"{prefix}CombinationShift{j}_8"
        data_blocks.append(
            f"""def {relation_name} : LaurentPolynomial (Fin 144) :=
  {emit_polynomial(target_relation)}

def {shift_name} : LaurentExponent (Fin 144) :=
  {emit_exponent(shift)}
"""
        )
        combination_items.append(
            {
                "index": j,
                "shift": shift,
                "shift_name": shift_name,
                "q0": source_q0,
                "q2": source_q2,
                "source_terms": raw_combination,
                "target_terms": tuple(
                    (unit * coefficient, exponent)
                    for coefficient, exponent in target_relation
                ),
                "target_relation": target_relation,
                "relation_name": relation_name,
                "unit": unit,
                "uses": uses,
            }
        )

    split = state["split_factor_graph"]
    vertices = [
        character_row_from_factor_json(
            vertex, support, f"state{state_index}.vertex"
        )
        for vertex in split["vertices"]
    ]
    common_vertices = [
        research_character(
            {
                "bit": 0,
                "row": [
                    {"local": i, "global": support[i], "exp": e}
                    for i, e in enumerate(row)
                    if e
                ],
            },
            support,
            "common",
        )
        for row in (
            tuple(
                1 if i in (69, 99) else -1 if i in (70, 98) else 0
                for i in range(144)
            ),
            tuple(
                1 if i in (38, 70) else -1 if i in (39, 69) else 0
                for i in range(144)
            ),
            tuple(
                1 if i in (9, 65) else -1 if i in (11, 59) else 0
                for i in range(144)
            ),
        )
    ]
    if vertices != common_vertices:
        fail(f"state {state_index} split vertices differ from common A,C,B")
    factor_items: list[dict[str, Any]] = []
    for j, factor in enumerate(split["factor_certificates"]):
        edge = [
            research_character(
                character, support, f"state{state_index}.factor{j}"
            )
            for character in factor["factor_edge"]
        ]
        expected_edge = [vertices[0], vertices[2]] if j == 0 else [vertices[1], vertices[2]]
        if edge != expected_edge:
            fail(f"state {state_index} split factor edge {j} mismatch")
        factor_json = factor["factor_certificate"]
        unit = int(factor_json["unit"])
        if unit == 0 or factor_json["unit_ne_zero"] is not True:
            fail(f"state {state_index} factor {j} has zero unit")
        shift = sparse_exponent(
            factor_json["shift"], support, f"state{state_index}.factor{j}"
        )
        source_relation = polynomial_terms(
            factor_json["reduction"]["source_eq"]["rhs"],
            support,
            f"state{state_index}.factor{j}.source",
        )
        emitted_relation = polynomial_terms(
            emitted[j]["relation"], support, f"state{state_index}.emitted{j}"
        )
        if polynomial_dict(source_relation) != polynomial_dict(emitted_relation):
            fail(f"state {state_index} factor source mismatch")
        target = factor_target_polynomial(edge[0], edge[1], shift, unit)
        uses = validate_character_reduction(
            factor_json["reduction"],
            raw_basis_characters,
            source_relation,
            target,
            support,
            f"state{state_index}.factor{j}",
        )
        factor_items.append(
            {
                "index": j,
                "unit": unit,
                "shift": shift,
                "edge": edge,
                "source_terms": source_relation,
                "target_terms": target,
                "uses": uses,
            }
        )

    branch_items: list[dict[str, Any]] = []
    for branch in state["branches"]:
        branch_index = int(branch["branch"])
        if branch_index not in (0, 1):
            fail(f"unexpected branch in state {state_index}")
        compact_count = 21 if branch_index == 0 else 20
        target_count = 4 if branch_index == 0 else 5
        selected_vertices = [0, 1] if branch_index == 0 else [2]
        if int(branch["compact_basis_character_count"]) != compact_count:
            fail(f"state {state_index} branch {branch_index} compact count mismatch")
        compact_characters = [
            research_character(
                character,
                support,
                f"state{state_index}.branch{branch_index}.basis",
            )
            for character in branch["compact_basis_characters"]
        ]
        if compact_characters != raw_basis_characters + [
            vertices[i] for i in selected_vertices
        ]:
            fail(f"state {state_index} branch {branch_index} basis order mismatch")
        source_type_count = len(selected_vertices)
        source_entries = [f".base {i}" for i in range(19)] + [
            f".raw {i}" for i in range(source_type_count)
        ]
        split_entries = [
            f"terminalBSplitCharacter8 {i}" for i in selected_vertices
        ]
        data_blocks.append(
            f"""def {prefix}Branch{branch_index}Source8 :
    Fin {compact_count} → FactorBasisSource (Fin 19) (Fin {source_type_count}) :=
{lean_vector(source_entries, per_line=6)}

def {prefix}Branch{branch_index}SplitRow8 :
    Fin {source_type_count} → SignedCharacterRow (Fin 144) :=
{lean_vector(split_entries, per_line=3)}

def {prefix}Branch{branch_index}Basis8 :
    Fin {compact_count} → SignedCharacterRow (Fin 144) :=
  fun i ↦ ({prefix}Branch{branch_index}Source8 i).row {prefix}RawBasis8
    {prefix}Branch{branch_index}SplitRow8
"""
        )
        implications = branch["derivative_character_implications"]
        if len(implications) != target_count:
            fail(f"state {state_index} branch {branch_index} target count mismatch")
        coeffs: list[list[int]] = []
        for j, implication in enumerate(implications):
            if int(implication["target_index"]) != j:
                fail(f"state {state_index} branch {branch_index} target order mismatch")
            target = research_character(
                implication["target_character"],
                support,
                f"state{state_index}.branch{branch_index}.target{j}",
            )
            coeffs.append(
                validate_implication(
                    implication["implication_certificate"],
                    compact_characters,
                    target,
                    support,
                    f"state{state_index}.branch{branch_index}.target{j}",
                )
            )
        branch_items.append(
            {
                "index": branch_index,
                "compact_count": compact_count,
                "target_count": target_count,
                "coeffs": coeffs,
            }
        )

    outputs[directory / "Data.lean"] = lean_module(
        ["MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.Data"],
        "\n\n".join(data_blocks),
        f"Shared basis and split data for survivor state {state_index}.",
    )

    for item in combination_items:
        j = item["index"]
        leaf = f"Combination{j}"
        leaf_module = f"{state_module}.{leaf}"
        leaf_dir = directory / leaf
        shift_name = item["shift_name"]
        source_expr = (
            f"LaurentPolynomial.translate {shift_name} "
            "(tropicalComponentBQuotientRelation8 0) - "
            "tropicalComponentBQuotientRelation8 2"
        )
        target_expr = f"({item['unit']} : ℤ) • {item['relation_name']}"
        exponent_proofs = ""
        exponent_names: list[str] = []
        for k, (_, exponent) in enumerate(item["q0"]):
            name = f"hShiftedExponent{k}"
            exponent_names.append(name)
            exponent_proofs += emit_exponent_equality(
                name,
                f"{shift_name} + {emit_exponent(exponent)}",
                add_exponents(item["shift"], exponent),
            )
        source_proof = (
            f"  have hq0 : tropicalComponentBQuotientRelation8 0 = "
            f"{emit_polynomial(item['q0'])} := by\n"
            + indent_block(defeq_explicit_proof(item["q0"]), 2)
            + f"  have hq2 : tropicalComponentBQuotientRelation8 2 = "
            f"{emit_polynomial(item['q2'])} := by\n"
            + indent_block(defeq_explicit_proof(item["q2"]), 2)
            + exponent_proofs
            + "  rw [hq0, hq2]\n"
            + "  simp only [LaurentPolynomial.translate_add, "
            "LaurentPolynomial.translate_single]\n"
            + f"  rw [{', '.join(exponent_names)}]\n"
            + "  abel\n"
        )
        use_name, source_eq_name, target_eq_name = emit_reduction_replay_modules(
            outputs=outputs,
            directory=leaf_dir,
            module_name=leaf_module,
            basis_import=f"{state_module}.Data",
            replay_prefix=f"{prefix}Combination{j}",
            basis_expr=f"{prefix}RawBasis8",
            uses=item["uses"],
            source_expr=source_expr,
            target_expr=target_expr,
            source_terms=item["source_terms"],
            target_terms=item["target_terms"],
            source_explicit_proof=source_proof,
            target_explicit_proof=(
                f"  simp [{item['relation_name']}] <;> abel\n"
            ),
        )
        cert_name = f"{prefix}CombinationCertificate{j}_8"
        outputs[directory / f"{leaf}.lean"] = lean_module(
            [f"{leaf_module}.Source", f"{leaf_module}.Target"],
            f"""def {cert_name} :
    NormalizedCharacterReductionCertificate (κ := Fin {len(item['uses'])})
      {prefix}RawBasis8 ({source_expr}) {item['relation_name']} :=
  {{ unit := ({item['unit']} : ℤ)
    unit_ne_zero := by norm_num
    reduction := {emit_reduction_record(use_name, source_eq_name, target_eq_name)} }}
""",
            f"Second-quotient eliminant {j} for state {state_index}.",
        )

    for item in factor_items:
        j = item["index"]
        leaf = f"Factor{j}"
        leaf_module = f"{state_module}.{leaf}"
        leaf_dir = directory / leaf
        left_index = 0 if j == 0 else 1
        right_index = 2
        source_expr = f"{prefix}SplitRelation{j}_8"
        target_expr = (
            f"({item['unit']} : ℤ) • LaurentPolynomial.translate "
            f"{emit_exponent(item['shift'])} "
            f"(SignedCharacterRow.factorProductPolynomial "
            f"(terminalBSplitCharacter8 {left_index}) "
            f"(terminalBSplitCharacter8 {right_index}))"
        )
        left_exp = item["edge"][0][0]
        right_exp = item["edge"][1][0]
        structural = [
            (
                f"{emit_exponent(item['shift'])} + "
                f"((terminalBSplitCharacter8 {left_index}).exponent + "
                f"(terminalBSplitCharacter8 {right_index}).exponent)",
                add_exponents(item["shift"], add_exponents(left_exp, right_exp)),
            ),
            (
                f"{emit_exponent(item['shift'])} + "
                f"(terminalBSplitCharacter8 {left_index}).exponent",
                add_exponents(item["shift"], left_exp),
            ),
            (
                f"{emit_exponent(item['shift'])} + "
                f"(terminalBSplitCharacter8 {right_index}).exponent",
                add_exponents(item["shift"], right_exp),
            ),
        ]
        exponent_proofs = ""
        for k, (lhs, rhs) in enumerate(structural):
            exponent_proofs += emit_exponent_equality(f"hExponent{k}", lhs, rhs)
        target_proof = (
            "  rw [terminalB_translate_factorProductPolynomial8]\n"
            + exponent_proofs
            + "  rw [hExponent0, hExponent1, hExponent2]\n"
            + "  simp [terminalBSplitCharacter8, tropicalBinomialCharacter8, "
            "signedCoefficient] <;> abel\n"
        )
        use_name, source_eq_name, target_eq_name = emit_reduction_replay_modules(
            outputs=outputs,
            directory=leaf_dir,
            module_name=leaf_module,
            basis_import=f"{state_module}.Data",
            replay_prefix=f"{prefix}Factor{j}",
            basis_expr=f"{prefix}RawBasis8",
            uses=item["uses"],
            source_expr=source_expr,
            target_expr=target_expr,
            source_terms=item["source_terms"],
            target_terms=item["target_terms"],
            source_explicit_proof=defeq_explicit_proof(item["source_terms"]),
            target_explicit_proof=target_proof,
        )
        cert_name = f"{prefix}FactorCertificate{j}_8"
        outputs[directory / f"{leaf}.lean"] = lean_module(
            [f"{leaf_module}.Source", f"{leaf_module}.Target"],
            f"""def {cert_name} :
    LaurentFactorCertificate (κ := Fin {len(item['uses'])})
      {prefix}RawBasis8 {source_expr}
      (terminalBSplitCharacter8 {left_index})
      (terminalBSplitCharacter8 {right_index}) :=
  {{ unit := ({item['unit']} : ℤ)
    unit_ne_zero := by norm_num
    shift := {emit_exponent(item['shift'])}
    reduction := {emit_reduction_record(use_name, source_eq_name, target_eq_name)} }}
""",
            f"Split factor {j} for state {state_index}.",
        )

    for item in branch_items:
        branch_index = item["index"]
        target_function = f"terminalBBranch{branch_index}TargetCharacter8"
        body = ""
        for j, coeff in enumerate(item["coeffs"]):
            body += f"""def {prefix}Branch{branch_index}Implication{j}_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        {prefix}Branch{branch_index}Basis8)
      ({target_function} {j}) :=
  {emit_implication_fields(coeff)}

"""
        outputs[directory / f"Branch{branch_index}.lean"] = lean_module(
            [f"{state_module}.Data"],
            body,
            f"Bounded branch-{branch_index} character replay for state {state_index}.",
        )

    hraw_proof = f"""open MonochromaticQuantumGraphs.FactorCoverCertificate

private theorem {prefix}RawBasis_holds8
    {{W : WeightsN 8 3 ℂ}} (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 {state_index},
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) :
    ∀ c, ({prefix}RawBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 17,
      (tropicalComponentBRawFactor8 ({prefix}RawRawSource8 r)).Holds x := by
    intro r
    apply rawCharacter_holds_of_allZeroInClass x
      tropicalComponentBClassMembers8 tropicalComponentBRawFactor8
      (hcover ({prefix}RawRawClass8 r) (by fin_cases r <;> decide))
    fin_cases r <;> decide
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 ({prefix}RawRawSource8 r))
    hChars hraw ({prefix}RawBasisSource8 c)
"""
    semantic = f"""
theorem {prefix}_impossible8
    {{W : WeightsN 8 3 ℂ}} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 {state_index},
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hRaw := {prefix}RawBasis_holds8 hChars hcover
  have hq0 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 0
  have hq2 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 2
"""
    for j in range(2):
        semantic += f"""  have hCombination{j} :
      (LaurentPolynomial.translate {prefix}CombinationShift{j}_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx {prefix}CombinationShift{j}_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation{j} : {prefix}SplitRelation{j}_8.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx {prefix}RawBasis8
      _ _ {prefix}CombinationCertificate{j}_8 hRaw hCombination{j}
"""
    semantic += f"""  have hAB := factorCertificate_cases x hx {prefix}RawBasis8
    {prefix}SplitRelation0_8 (terminalBSplitCharacter8 0)
    (terminalBSplitCharacter8 2) {prefix}FactorCertificate0_8 hRaw hRelation0
  have hCB := factorCertificate_cases x hx {prefix}RawBasis8
    {prefix}SplitRelation1_8 (terminalBSplitCharacter8 1)
    (terminalBSplitCharacter8 2) {prefix}FactorCertificate1_8 hRaw hRelation1
  have hsplit :
      ((terminalBSplitCharacter8 0).Holds x ∧
        (terminalBSplitCharacter8 1).Holds x) ∨
      (terminalBSplitCharacter8 2).Holds x := by
    rcases hAB with hA | hB
    · rcases hCB with hC | hB
      · exact Or.inl ⟨hA, hC⟩
      · exact Or.inr hB
    · exact Or.inr hB
  rcases hsplit with hBranch0 | hBranch1
  · have hBasis : ∀ c, ({prefix}Branch0Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x {prefix}RawBasis8
        {prefix}Branch0SplitRow8 hRaw
        (by intro r; fin_cases r <;> simp [hBranch0])
        ({prefix}Branch0Source8 c)
    have hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
"""
    for j in range(4):
        semantic += f"""      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator {prefix}Branch0Basis8)
        (terminalBBranch0TargetCharacter8 {j})
        {prefix}Branch0Implication{j}_8
        (SignedCharacterRow.withParityGenerator_holds x
          {prefix}Branch0Basis8 hBasis)
"""
    semantic += f"""    exact branch0DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch0DerivativeCharacters8 hSupport hRows)
  · have hBasis : ∀ c, ({prefix}Branch1Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x {prefix}RawBasis8
        {prefix}Branch1SplitRow8 hRaw
        (by intro r; fin_cases r; exact hBranch1)
        ({prefix}Branch1Source8 c)
    have hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
"""
    for j in range(5):
        semantic += f"""      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator {prefix}Branch1Basis8)
        (terminalBBranch1TargetCharacter8 {j})
        {prefix}Branch1Implication{j}_8
        (SignedCharacterRow.withParityGenerator_holds x
          {prefix}Branch1Basis8 hBasis)
"""
    semantic += """    exact branch1DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch1DerivativeCharacters8 hSupport hRows)
"""
    state_imports = [
        f"{state_module}.Combination0",
        f"{state_module}.Combination1",
        f"{state_module}.Factor0",
        f"{state_module}.Factor1",
        f"{state_module}.Branch0",
        f"{state_module}.Branch1",
    ]
    outputs[BRANCH_DIR / f"State{state_index}.lean"] = lean_module(
        state_imports,
        hraw_proof + semantic,
        f"Semantic terminal contradiction for survivor state {state_index}.",
    )
    return outputs


def emit_branch_top() -> str:
    return """import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.NonSurvivor
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15

/-!
# Terminal Component B contradiction

The exact 288-cover dispatch first eliminates four non-survivor destinations.
The remaining rows are exactly 3, 9 and 15; each is split by two exact
Bq0/Bq2 factor certificates into the frozen branch-zero or branch-one
derivative contradiction.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- The Component B characters cannot hold at an exact GHZ solution on the
canonical six-matching support. -/
theorem tropicalComponentBCharacters_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hChars : TropicalComponentBCharacters8 W) : False := by
  obtain ⟨i, hi, hcover⟩ :=
    tropicalTerminalComponentB8_survivor_cover hSupport hEq hChars
  rcases (componentBDispatch8_survivor_iff i).mp hi with rfl | rfl | rfl
  · exact terminalBState3_impossible8 hSupport hEq hChars hcover
  · exact terminalBState9_impossible8 hSupport hEq hChars hcover
  · exact terminalBState15_impossible8 hSupport hEq hChars hcover

end MonochromaticQuantumGraphs.N8D3
"""


def emit_component_top() -> str:
    return """import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8

/-!
# Complete Component B terminal replay

This public module reexports the non-survivor nested-face certificates, the
three survivor split certificates, and `tropicalComponentBCharacters_impossible8`.
-/
"""


def audit_inputs(terminal: dict[str, Any], branches: dict[str, Any], factor: dict[str, Any]) -> None:
    if terminal.get("schema_version") != 2 or terminal.get("component") != "B":
        fail("unexpected terminal Component B schema")
    if terminal.get("survivor_indices") != [3, 9, 15]:
        fail("unexpected terminal Component B survivors")
    if terminal.get("cover_dispatch_counts") != {
        "core_classes_8_17": 48,
        "singleton_class_14": 36,
        "singleton_class_19": 9,
        "singleton_class_7": 192,
        "survivor": 3,
    }:
        fail("unexpected terminal Component B dispatch census")
    if set(terminal.get("core_elimination_certificates", {})) != set(CORE_LAYOUT):
        fail("unexpected non-survivor certificate destinations")
    if branches.get("schema_version") != 2 or branches.get("state_count") != 3 or branches.get("branch_count") != 6:
        fail("unexpected terminal branch schema/census")
    if [state.get("state") for state in branches.get("states", [])] != [3, 9, 15]:
        fail("unexpected terminal branch state order")
    if factor.get("schema_version") != 2 or factor.get("component") != "B":
        fail("unexpected Component B factor schema")
    if len(factor.get("base_characters", [])) != 2:
        fail("Component B factor artifact does not have two base characters")
    if len(factor.get("factor", {}).get("vertices", [])) != 49:
        fail("Component B factor artifact does not have 49 raw vertices")


def write_or_check(outputs: dict[Path, str], check: bool) -> None:
    mismatches: list[str] = []
    for path, text in outputs.items():
        if not text.endswith("\n"):
            text += "\n"
        if check:
            if not path.exists() or path.read_text() != text:
                mismatches.append(str(path.relative_to(ROOT)))
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(text)
    if mismatches:
        fail("generated Lean output differs: " + ", ".join(mismatches))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true", help="verify checked-in output")
    args = parser.parse_args()

    terminal = read_hashed_json(TERMINAL_B_PATH, TERMINAL_B_SHA256)
    branches = read_hashed_json(BRANCHES_PATH, BRANCHES_SHA256)
    factor = read_hashed_json(FACTOR_B_PATH, FACTOR_B_SHA256)
    support = read_support()
    audit_inputs(terminal, branches, factor)

    factor_base = [
        character_row_from_factor_json(value, support, f"factor.base[{i}]")
        for i, value in enumerate(factor["base_characters"])
    ]
    factor_raw = [
        character_row_from_factor_json(value, support, f"factor.raw[{i}]")
        for i, value in enumerate(factor["factor"]["vertices"])
    ]

    outputs: dict[Path, str] = {}
    outputs[COMPONENT_DIR / "Replay.lean"] = emit_replay_helpers()
    metadata: list[dict[str, Any]] = []
    for key in CORE_LAYOUT:
        core_outputs, item = emit_core_modules(
            key, terminal["core_elimination_certificates"][key],
            factor_base, factor_raw, support,
        )
        outputs.update(core_outputs)
        metadata.append(item)
    outputs[COMPONENT_DIR / "NonSurvivor.lean"] = emit_non_survivor(metadata)
    outputs[BRANCH_DIR / "Data.lean"] = emit_branch_data()
    for state in branches["states"]:
        outputs.update(emit_state_modules(state, factor_base, factor_raw, support))
    outputs[BRANCH_TOP] = emit_branch_top()
    outputs[COMPONENT_TOP] = emit_component_top()
    write_or_check(outputs, args.check)

    print(
        "generated terminal Component B: "
        f"cores={len(metadata)} survivors={len(branches['states'])} "
        f"files={len(outputs)}"
    )


if __name__ == "__main__":
    main()

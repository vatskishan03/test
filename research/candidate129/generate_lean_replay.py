#!/usr/bin/env python3
"""Emit ordinary-Lean replay source; the producer is outside the trust boundary.

Every integer identity is discharged by ordinary kernel computation; complete
matching tables are checked entry by entry by definitional equality. The
producer is not trusted to omit a matching, normalize a relation, or choose
correct integer witnesses. The generated proofs must themselves compile.
"""
from collections import defaultdict
from fractions import Fraction
import argparse
import json
from pathlib import Path
import check_compact_star as C


def dense(rows, n):
    result = [0] * n
    for i, e in rows:
        result[i] += e
    return tuple(result)


def exponent(values):
    terms = [(i, e) for i, e in enumerate(values) if e]
    if not terms:
        return "(0 : Exponent 143)"
    return "(fun i => " + "".join(f"if i.val = {i} then ({e}) else " for i, e in terms) + "0)"


def polynomial(rows, n):
    terms = []
    for (num, den), exp in rows:
        if den != 1:
            raise ValueError("integer-only Lean adapter cannot accept a denominator")
        terms.append(f"({num}, {exponent(dense(exp, n))})")
    return "[\n  " + ",\n  ".join(terms) + "\n]"


def node_name(i):
    return f"p{i:03d}"


def character(row):
    return "⟨" + exponent(dense(row["exponent"], 143)) + f", {row['bit']}⟩"


def coefficient_function(coefficients):
    return "(fun s => match s with | .inl i => ![" + ", ".join(f"({c})" for c in coefficients[:-1]) + f"] i | .inr _ => ({coefficients[-1]}))"


def implication(coefficients, indent=""):
    return ("{\n" + indent + "  coeff := " + coefficient_function(coefficients) + "\n" + indent +
            "  combination_eq := by\n" + indent + "    apply row_eq_of_agrees\n" + indent + "    decide\n" + indent + "}")


def reduction_use(coefficient, source, target, bit, coefficients):
    return ("{ coefficient := " + str(coefficient) + "\n" +
            "    sourceExponent := " + exponent(source) + "\n" +
            "    targetExponent := " + exponent(target) + "\n" +
            "    reduction := {\n      signExponent := " + str(bit) + "\n" +
            "      implication := " + implication(coefficients, "      ") + "\n    } }")


def unit_transform(source, target):
    """Find and verify target = c * x^shift * source over the integers."""
    def normalize(terms):
        acc = defaultdict(Fraction)
        for c, e in terms:
            acc[e] += c
        return sorted((e, c) for e, c in acc.items() if c)
    source, target = normalize(source), normalize(target)
    c = target[0][1] / source[0][1]
    shift = tuple(a - b for a, b in zip(target[0][0], source[0][0]))
    transformed = sorted((tuple(a + b for a, b in zip(e, shift)), c * v) for e, v in source)
    if transformed != target or c.denominator != 1:
        raise ValueError("polynomials are not integer Laurent-unit copies")
    return int(c), shift


def combination(data, index):
    """Recover the Laurent unit, then verify the raw identity independently."""
    node = data["nodes"][index]
    n = len(data["support"])
    shift = dense(node["shift"], n)
    scalar = Fraction(*node["scalar"])
    acc = defaultdict(Fraction)
    for coeff, exp in data["nodes"][node["left"]]["polynomial"]:
        acc[tuple(a + b for a, b in zip(dense(exp, n), shift))] += scalar * Fraction(*coeff)
    for coeff, exp in data["nodes"][node["right"]]["polynomial"]:
        acc[dense(exp, n)] -= Fraction(*coeff)
    raw = sorted((e, c) for e, c in acc.items() if c)
    target = sorted((dense(e, n), Fraction(*c)) for c, e in node["polynomial"])
    unit = raw[0][1] / target[0][1]
    offset = tuple(a - b for a, b in zip(raw[0][0], target[0][0]))
    replay = sorted((tuple(a - b for a, b in zip(e, offset)), c / unit) for e, c in raw)
    if replay != target or (scalar / unit).denominator != 1 or (-1 / unit).denominator != 1:
        raise ValueError(f"unsupported normalized combination at node {index}")
    return (int(scalar / unit), int(-1 / unit),
            tuple(a - b for a, b in zip(shift, offset)), tuple(-a for a in offset))


def preamble(namespace, imports):
    return [*[f"import {name}" for name in imports], "",
            "/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/", "",
            "namespace MonochromaticQuantumGraphs.N8D3.Candidate129" + namespace, "",
            "open MonochromaticQuantumGraphs.LaurentList", "",
            "set_option maxRecDepth 100000", "set_option maxHeartbeats 10000000", ""]


def definitions(data):
    lines = preamble("", ["MonochromaticQuantumGraphs.LaurentListCertificate"])
    for i, node in enumerate(data["nodes"]):
        lines += [f"def {node_name(i)} : Polynomial 143 :=", polynomial(node["polynomial"], 143), ""]
    lines += ["/-- Exactly the 57 normalized amplitude premises; no equation is asserted here. -/",
              "structure AmplitudePremises (x : Fin 143 → ℂ) : Prop where"]
    for i, node in enumerate(data["nodes"]):
        if node["kind"] == "amplitude":
            lines.append(f"  h{i:03d} : (toPolynomial {node_name(i)}).Holds x")
    lines += ["", "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def overlaps(data, shard, per_shard=2):
    indices = [i for i, node in enumerate(data["nodes"]) if node["kind"] == "overlap"]
    selected = indices[per_shard * shard:per_shard * (shard + 1)]
    if not selected:
        raise ValueError("empty overlap shard")
    parent = "Data" if shard == 0 else f"Overlaps{shard - 1:02d}"
    lines = preamble("", [f"MonochromaticQuantumGraphs.N8D3.Candidate129.{parent}"])
    for i in selected:
        node = data["nodes"][i]
        c, d, sl, sr = combination(data, i)
        source = lambda j: f"h.h{j:03d}" if data["nodes"][j]["kind"] == "amplitude" else f"(holds{j:03d} x hx h)"
        lines += [f"theorem holds{i:03d} (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
                  "    (h : AmplitudePremises x) :",
                  f"    (toPolynomial {node_name(i)}).Holds x := by",
                  f"  apply holds_of_combination x hx {node_name(node['left'])} {node_name(node['right'])} {node_name(i)} ({c}) ({d})",
                  f"    {exponent(sl)} {exponent(sr)} _ {source(node['left'])} {source(node['right'])}",
                  "  decide", ""]
    lines += [f"#print axioms holds{selected[-1]:03d}", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def benchmark(data):
    lines = ["import MonochromaticQuantumGraphs.LaurentListCertificate", "",
             "/-! A bounded ordinary-kernel replay benchmark; amplitude premises remain explicit. -/", "",
             "namespace MonochromaticQuantumGraphs.N8D3.Candidate129.Benchmark", "",
             "open MonochromaticQuantumGraphs.LaurentList", "",
             "set_option maxRecDepth 100000", "set_option maxHeartbeats 10000000", ""]
    for i in range(3):
        lines += [f"def {node_name(i)} : Polynomial 143 :=", polynomial(data["nodes"][i]["polynomial"], 143), ""]
    c, d, sl, sr = combination(data, 2)
    lines += ["theorem overlap002 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
              "    (h0 : (toPolynomial p000).Holds x) (h1 : (toPolynomial p001).Holds x) :",
              "    (toPolynomial p002).Holds x := by",
              f"  apply holds_of_combination x hx p000 p001 p002 ({c}) ({d})",
              f"    {exponent(sl)} {exponent(sr)} _ h0 h1",
              "  decide", "",
              "#print axioms overlap002", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129.Benchmark", ""]
    return "\n".join(lines)


def support_data(data):
    support = data["support"]
    inverse = {g: i for i, g in enumerate(support)}
    physical = C.V.EDGES
    edge_index = {(u, v): i for i, (u, v) in enumerate(physical)}
    edge_index.update({(v, u): i for i, (u, v) in enumerate(physical)})
    lines = preamble("", ["MonochromaticQuantumGraphs.LaurentListCertificate",
                          "Mathlib.Data.Fin.VecNotation"])
    lines += ["open scoped Matrix BigOperators", "",
              "/-- Increasing enumeration of exactly the 143 frozen physical edge-color coordinates. -/",
              "def supportGlobal : Fin 143 → Fin 252 :=", "![" + ", ".join(map(str, support)) + "]", "",
              "def localIndex : Fin 252 → Option (Fin 143) :=", "  fun g => " +
              "\n    ".join(f"if g.val = {g} then some {inverse[g]} else" for g in support) + " none", "",
              "def physicalEdge : Fin 28 → Fin 8 × Fin 8 :=", "![" +
              ", ".join(f"({u}, {v})" for u, v in physical) + "]", "",
              "def edgeIndex : Fin 8 → Fin 8 → Fin 28 :=", "![" +
              ",\n  ".join("![" + ", ".join(str(edge_index.get((u, v), 0)) for v in range(8)) + "]" for u in range(8)) + "]", "",
              "def coordinate (u v : Fin 8) (a b : Fin 3) : Fin 252 :=",
              "  ⟨9 * (edgeIndex u v).val + 3 * a.val + b.val, by omega⟩", "",
              "def decodeCoordinate (g : Fin 252) : Fin 8 × Fin 8 × Fin 3 × Fin 3 :=",
              "  let k : Fin 28 := ⟨g.val / 9, by omega⟩",
              "  let a : Fin 3 := ⟨(g.val % 9) / 3, by omega⟩",
              "  let b : Fin 3 := ⟨g.val % 3, by omega⟩",
              "  ((physicalEdge k).1, (physicalEdge k).2, a, b)", "",
              "/-- A small-environment mirror, checked against the official matching table",
              "by `matchingPairs_eq` before it can justify any official equation. -/",
              "def matchingPairs : Fin 105 → Fin 4 → Fin 8 × Fin 8 :=", "  fun m => " +
              "\n    ".join((f"if m.val = {i} then " if i < 104 else "") + "![" +
              ", ".join(f"({physical[e][0]}, {physical[e][1]})" for e in matching) + "]" +
              (" else" if i < 104 else "") for i, matching in enumerate(C.V.PMS)), "",
              "def matchingVariables (q : Fin 8 → Fin 3) (m : Fin 105) : Option (List (Fin 143)) :=",
              "  let lookup := fun k : Fin 4 =>",
              "    let e := matchingPairs m k",
              "    localIndex (coordinate e.1 e.2 (q e.1) (q e.2))",
              "  match lookup 0, lookup 1, lookup 2, lookup 3 with",
              "  | some a, some b, some c, some d => some [a, b, c, d]",
              "  | _, _, _, _ => none", "",
              "def termPolynomial : Option (List (Fin 143)) → Polynomial 143",
              "  | none => []",
              "  | some indices => [(1, exponentOfVariables indices)]", "",
              "def tablePolynomial (table : Fin 105 → Option (List (Fin 143))) : Polynomial 143 :=",
              "  LaurentList.sum fun m => termPolynomial (table m)", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def star(data):
    lines = preamble("", ["MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps43",
                          "Mathlib.Tactic.FinCases", "Mathlib.Data.Fin.VecNotation"])
    lines += ["open scoped Matrix", "", "def center : SignedCharacterRow (Fin 143) :=",
              "  " + character(data["center"]), ""]
    for j, row in enumerate(data["leaves"]):
        lines += [f"def leaf{j:02d} : SignedCharacterRow (Fin 143) :=", "  " + character(row), ""]
    lines += ["def leaves : Fin 11 → SignedCharacterRow (Fin 143) :=",
              "  ![" + ", ".join(f"leaf{j:02d}" for j in range(11)) + "]", ""]
    for j, i in enumerate(data["star_relations"]):
        leaf, center = data["leaves"][j], data["center"]
        a, b = dense(leaf["exponent"], 143), dense(center["exponent"], 143)
        sa, sb = (-1) ** leaf["bit"], (-1) ** center["bit"]
        product = [(1, tuple(x + y for x, y in zip(a, b))), (-sb, a), (-sa, b), (sa * sb, (0,) * 143)]
        source = [(Fraction(*c), dense(e, 143)) for c, e in data["nodes"][i]["polynomial"]]
        c, shift = unit_transform(source, product)
        lines += [f"theorem product{j:02d} (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
                  "    (h : AmplitudePremises x) :",
                  f"    leaf{j:02d}.factorValue x * center.factorValue x = 0 := by",
                  f"  apply factorProduct_holds x hx {node_name(i)} leaf{j:02d} center ({c})",
                  f"    {exponent(shift)} _ (holds{i:03d} x hx h)", "  decide", ""]
    lines += ["theorem star_cases (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
              "    (h : AmplitudePremises x) : center.Holds x ∨ ∀ i, (leaves i).Holds x := by",
              "  by_cases hc : center.factorValue x = 0",
              "  · exact Or.inl ((SignedCharacterRow.factorValue_eq_zero_iff x center).mp hc)",
              "  · right", "    intro i",
              "    apply (SignedCharacterRow.factorValue_eq_zero_iff x (leaves i)).mp",
              "    have hp : (leaves i).factorValue x * center.factorValue x = 0 := by",
              "      fin_cases i"]
    lines += [f"      · exact product{j:02d} x hx h" for j in range(11)]
    lines += ["    exact (mul_eq_zero.mp hp).resolve_right hc", "",
              "#print axioms star_cases", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def endpoint_step(data, endpoint_index, step_index):
    endpoint = data["endpoints"][endpoint_index]
    step = endpoint["chain"][step_index]
    initial_names = ["center"] if endpoint_index == 0 else [f"leaf{i:02d}" for i in range(11)]
    previous_names = [f"e{endpoint_index}c{i:02d}" for i in range(step_index)]
    names = initial_names + previous_names
    parent = "Star" if step_index == 0 else f"Endpoint{endpoint_index}Step{step_index - 1:02d}"
    prefix = f"e{endpoint_index}s{step_index:02d}"
    lines = preamble("", [f"MonochromaticQuantumGraphs.N8D3.Candidate129.{parent}"])
    lines += ["open scoped Matrix", "", f"def {prefix}Rows : Fin {len(names)} → SignedCharacterRow (Fin 143) :=",
              "  ![" + ", ".join(names) + "]", "",
              f"def e{endpoint_index}c{step_index:02d} : SignedCharacterRow (Fin 143) :=",
              "  " + character(step["character"]), ""]
    relation = data["nodes"][step["relation"]]["polynomial"]
    reduced = defaultdict(Fraction)
    uses = []
    for (c, source), reduction in zip(relation, step["reductions"]):
        if c[1] != 1:
            raise ValueError("non-integer term")
        target = dense(reduction["exponent"], 143)
        reduced[target] += Fraction(*c) * (-1) ** reduction["bit"]
        uses.append(reduction_use(c[0], dense(source, 143), target, reduction["bit"], reduction["coefficients"]))
    pairs = sorted((e, c) for e, c in reduced.items() if c)
    (e1, c1), (e2, c2) = pairs
    ratio = -c1 / c2
    if ratio not in (1, -1):
        raise ValueError("non-signed binomial")
    inferred_exp, inferred_bit = C.V.normalize_char(tuple(a - b for a, b in zip(e2, e1)), 0 if ratio == 1 else 1)
    factor_terms = [(1, inferred_exp), (-(-1) ** inferred_bit, (0,) * 143)]
    unit, shift = unit_transform(factor_terms, [(c, e) for e, c in pairs])
    lines += [f"def {prefix}Inferred : SignedCharacterRow (Fin 143) :=",
              f"  ⟨{exponent(inferred_exp)}, {inferred_bit}⟩", "",
              f"noncomputable def {prefix}Uses : Fin {len(uses)} → CharacterReductionUse {prefix}Rows :=",
              "![\n  " + ",\n  ".join(uses) + "\n]", "",
              f"noncomputable def {prefix}Certificate : LaurentCharacterCertificate (κ := Fin {len(uses)})",
              f"    {prefix}Rows (toPolynomial {node_name(step['relation'])}) {prefix}Inferred where",
              f"  unit := ({unit})", "  unit_ne_zero := by decide", f"  shift := {exponent(shift)}",
              "  reduction := by",
              f"    have h := reductionCertificate {prefix}Rows {node_name(step['relation'])}",
              f"      (scale ({unit}) (translate {exponent(shift)} (factor {prefix}Inferred)))",
              f"      {prefix}Uses (by decide) (by decide)",
              "    simpa only [toPolynomial_scale, toPolynomial_translate, toPolynomial_factor] using h", "",
              f"def {prefix}Augmented : Fin {len(names) + 1} → SignedCharacterRow (Fin 143) :=",
              "  ![" + ", ".join(names + [f"{prefix}Inferred"]) + "]", "",
              f"noncomputable def {prefix}TargetCertificate : SignedCharacterRow.ImplicationCertificate",
              f"    (SignedCharacterRow.withParityGenerator {prefix}Augmented) e{endpoint_index}c{step_index:02d} :=",
              "  " + implication(step["character_coefficients"], "  "), "",
              f"theorem {prefix}Holds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
              "    (h : AmplitudePremises x)",
              f"    (hrows : ∀ i, ({prefix}Rows i).Holds x) : e{endpoint_index}c{step_index:02d}.Holds x := by",
              f"  have hi := holds_of_laurentCharacterCertificate x hx {prefix}Rows",
              f"    (toPolynomial {node_name(step['relation'])}) {prefix}Inferred {prefix}Certificate hrows",
              f"    (holds{step['relation']:03d} x hx h)",
              "  apply SignedCharacterRow.holds_of_implicationCertificate x hx",
              f"    (SignedCharacterRow.withParityGenerator {prefix}Augmented) e{endpoint_index}c{step_index:02d}",
              f"    {prefix}TargetCertificate",
              "  apply SignedCharacterRow.withParityGenerator_holds",
              "  intro i", "  fin_cases i"]
    lines += [f"  · exact hrows {i}" for i in range(len(names))]
    lines += ["  · exact hi", "", f"#print axioms {prefix}Holds", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def amplitude_codes(data):
    codes = {node["coloring"] for node in data["nodes"] if node["kind"] == "amplitude"}
    codes.update(endpoint["flip"][key] for endpoint in data["endpoints"] for key in ("small_code", "large_code"))
    return sorted(codes)


def raw_amplitude_data(data):
    lines = preamble("", ["MonochromaticQuantumGraphs.LaurentListCertificate"])
    for code in amplitude_codes(data):
        _, terms = C.complete_amplitude(data["support"], code)
        rows = [([1, 1], list(e)) for e in terms.values()]
        lines += [f"def amplitude{code} : Polynomial 143 :=", polynomial(rows, 143), ""]
    lines += ["end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def amplitude_checks(data, code_index):
    code = amplitude_codes(data)[code_index]
    q, terms = C.complete_amplitude(data["support"], code)
    lines = preamble("", ["MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks",
                          "MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData",
                          "MonochromaticQuantumGraphs.N8D3.Candidate129.Data"])
    lines += ["open scoped Matrix", "",
              f"def coloring{code} : Fin 8 → Fin 3 := ![" + ", ".join(map(str, q)) + "]", "",
              f"def table{code} : Fin 105 → Option (List (Fin 143)) :=", "  fun m => " +
              "\n    ".join(f"if m.val = {mi} then some [" + ", ".join(str(i) for i, _ in e) + "] else" for mi, e in terms.items()) + " none", ""]
    for m in range(105):
        lines += [f"theorem table{code}_entry{m:03d} :",
                  f"    matchingVariables coloring{code} {m} = table{code} {m} := by rfl", ""]
    lines += [f"theorem table{code}_complete : ∀ m, matchingVariables coloring{code} m = table{code} m := by",
              "  intro m", "  fin_cases m"]
    lines += [f"  · exact table{code}_entry{m:03d}" for m in range(105)]
    lines += ["",
              f"#print axioms table{code}_complete", "",
              f"def expanded{code} : Polynomial 143 := [" +
              ",\n  ".join("(1, exponentOfVariables [" + ", ".join(str(i) for i, _ in e) + "])" for e in terms.values()) + "]", "",
              f"theorem table{code}_expanded : tablePolynomial table{code} = expanded{code} := by",
              "  rfl", ""]
    for j, e in enumerate(terms.values()):
        lines += [f"theorem table{code}_exponent{j:02d} :",
                  "    exponentOfVariables (n := 143) [" + ", ".join(str(i) for i, _ in e) + "] =",
                  "      " + exponent(dense(e, 143)) + " := by",
                  "  funext i",
                  "  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]",
                  "  dsimp", "  split_ifs <;> omega", ""]
    lines += [f"theorem table{code}_polynomial : expanded{code} = amplitude{code} := by",
              f"  simp only [expanded{code}, amplitude{code}, " +
              ", ".join(f"table{code}_exponent{j:02d}" for j in range(len(terms))) + "]", ""]
    for i, node in enumerate(data["nodes"]):
        if node.get("coloring") != code:
            continue
        source = [(1, dense(e, 143)) for e in terms.values()]
        target = [(Fraction(*c), dense(e, 143)) for c, e in node["polynomial"]]
        c, shift = unit_transform(source, target)
        lines += [f"theorem premiseCheck{i:03d} : agrees",
                  f"    (scale ({c}) (translate {exponent(shift)} amplitude{code})) {node_name(i)} = true := by",
                  "  decide", ""]
    lines += ["end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def amplitude_replay(data, code_index):
    code = amplitude_codes(data)[code_index]
    _, terms = C.complete_amplitude(data["support"], code)
    lines = preamble("", ["MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge",
                          f"MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude{code}Checks"])
    lines += ["open MonochromaticQuantumGraph", "",
              f"theorem amplitude{code}_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)",
              "    (hW : EqSystemN 8 3 W) :",
              f"    (toPolynomial amplitude{code}).Holds (supportWeight W) := by",
              f"  have hs := table_holds_of_equations W h hW coloring{code} (by decide)",
              f"    table{code} table{code}_complete",
              f"  rw [table{code}_expanded, table{code}_polynomial] at hs",
              "  exact hs", "",
              f"#print axioms amplitude{code}_holds", ""]
    for i, node in enumerate(data["nodes"]):
        if node.get("coloring") != code:
            continue
        source = [(1, dense(e, 143)) for e in terms.values()]
        target = [(Fraction(*c), dense(e, 143)) for c, e in node["polynomial"]]
        c, shift = unit_transform(source, target)
        lines += [f"theorem premise{i:03d} (W : WeightsN 8 3 ℂ) (h : ExactSupport W)",
                  "    (hW : EqSystemN 8 3 W) :",
                  f"    (toPolynomial {node_name(i)}).Holds (supportWeight W) := by",
                  "  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)",
                  f"    amplitude{code} {node_name(i)} ({c}) {exponent(shift)} _ (amplitude{code}_holds W h hW)",
                  f"  exact premiseCheck{i:03d}", ""]
    lines += ["end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def endpoint_flip(data, endpoint_index):
    endpoint = data["endpoints"][endpoint_index]
    flip = endpoint["flip"]
    small_code, large_code = flip["small_code"], flip["large_code"]
    _, small = C.complete_amplitude(data["support"], small_code)
    _, large = C.complete_amplitude(data["support"], large_code)
    common = sorted(small)
    ratio = tuple(a - b for a, b in zip(dense(large[common[0]], 143), dense(small[common[0]], 143)))
    initial_names = ["center"] if endpoint_index == 0 else [f"leaf{i:02d}" for i in range(11)]
    derived_names = [f"e{endpoint_index}c{i:02d}" for i in range(len(endpoint["chain"]))]
    names = initial_names + derived_names
    last = len(endpoint["chain"]) - 1
    prefix = f"e{endpoint_index}Flip"
    lines = preamble("", [f"MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint{endpoint_index}Step{last:02d}",
                          "MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData"])
    lines += ["open scoped Matrix", "", f"def e{endpoint_index}FinalRows : Fin {len(names)} → SignedCharacterRow (Fin 143) :=",
              "  ![" + ", ".join(names) + "]", ""]
    assumption = "center.Holds x" if endpoint_index == 0 else "∀ i, (leaves i).Holds x"
    known = ["hcase"] if endpoint_index == 0 else [f"hcase {i}" for i in range(11)]
    lines += [f"theorem e{endpoint_index}FinalHolds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
              "    (h : AmplitudePremises x)", f"    (hcase : {assumption}) : ∀ i, (e{endpoint_index}FinalRows i).Holds x := by"]
    for i in range(last + 1):
        lines += [f"  have h{i:02d} : e{endpoint_index}c{i:02d}.Holds x := by",
                  f"    apply e{endpoint_index}s{i:02d}Holds x hx h", "    intro i", "    fin_cases i"]
        lines += [f"    · exact {proof}" for proof in known]
        known.append(f"h{i:02d}")
    lines += ["  intro i", "  fin_cases i"]
    lines += [f"  · exact {proof}" for proof in known]
    lines.append("")
    rows, uses = [], []
    zero_coefficients = [0] * (len(names) + 1)
    for mi, e in large.items():
        e = dense(e, 143)
        rows.append(([1, 1], [(i, c) for i, c in enumerate(e) if c]))
        uses.append(reduction_use(1, e, e, 0, zero_coefficients))
    for mi, coefficients in zip(common, endpoint["ratio_witnesses"]):
        source = tuple(a + b for a, b in zip(dense(small[mi], 143), ratio))
        target = dense(large[mi], 143)
        rows.append(([-1, 1], [(i, c) for i, c in enumerate(source) if c]))
        uses.append(reduction_use(-1, source, target, 0, [-c for c in coefficients]))
    extra = dense(large[flip["extra_matching"]], 143)
    lines += [f"def {prefix}Source : Polynomial 143 :=", polynomial(rows, 143), "",
              f"def {prefix}Target : Polynomial 143 := [(1, {exponent(extra)})]", "",
              f"noncomputable def {prefix}Uses : Fin {len(uses)} → CharacterReductionUse e{endpoint_index}FinalRows :=",
              "![\n  " + ",\n  ".join(uses) + "\n]", "",
              f"noncomputable def {prefix}Certificate : CharacterReductionCertificate (κ := Fin {len(uses)})",
              f"    e{endpoint_index}FinalRows (toPolynomial {prefix}Source) (toPolynomial {prefix}Target) :=",
              f"  reductionCertificate e{endpoint_index}FinalRows {prefix}Source {prefix}Target {prefix}Uses",
              "    (by decide) (by decide)", "",
              f"theorem endpoint{endpoint_index}_false (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)",
              "    (h : AmplitudePremises x)", f"    (hcase : {assumption})",
              f"    (hlarge : (toPolynomial amplitude{large_code}).Holds x)",
              f"    (hsmall : (toPolynomial amplitude{small_code}).Holds x) : False := by",
              f"  have hsource : (toPolynomial {prefix}Source).Holds x := by",
              f"    apply holds_of_combination x hx amplitude{large_code} amplitude{small_code} {prefix}Source 1 (-1)",
              f"      0 {exponent(ratio)} _ hlarge hsmall", "    decide",
              f"  have htarget := holds_of_characterReductionCertificate x hx e{endpoint_index}FinalRows",
              f"    (toPolynomial {prefix}Source) (toPolynomial {prefix}Target) {prefix}Certificate",
              f"    (e{endpoint_index}FinalHolds x hx h hcase) hsource",
              f"  apply laurentEval_ne_zero x hx {exponent(extra)}",
              f"  simpa [LaurentPolynomial.Holds, {prefix}Target, toPolynomial] using htarget", "",
              f"#print axioms endpoint{endpoint_index}_false", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def official_premises(data):
    lines = preamble("", [f"MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude{code}"
                          for code in amplitude_codes(data)])
    lines += ["open MonochromaticQuantumGraph", "",
              "/-- All 57 premises are consequences of the official equations, not new assumptions. -/",
              "theorem official_amplitude_premises (W : WeightsN 8 3 ℂ) (h : ExactSupport W)",
              "    (hW : EqSystemN 8 3 W) : AmplitudePremises (supportWeight W) where"]
    lines += [f"  h{i:03d} := premise{i:03d} W h hW"
              for i, node in enumerate(data["nodes"]) if node["kind"] == "amplitude"]
    lines += ["", "#print axioms official_amplitude_premises", "",
              "end MonochromaticQuantumGraphs.N8D3.Candidate129", ""]
    return "\n".join(lines)


def all_sources(data):
    """Deterministic source inventory, excluding hand-written semantic bridges."""
    yield "Data", definitions(data)
    for shard in range(44):
        yield f"Overlaps{shard:02d}", overlaps(data, shard)
    yield "SupportCombinatorics", support_data(data)
    yield "Star", star(data)
    for endpoint in range(2):
        for step in range(len(data["endpoints"][endpoint]["chain"])):
            yield f"Endpoint{endpoint}Step{step:02d}", endpoint_step(data, endpoint, step)
        yield f"Endpoint{endpoint}Flip", endpoint_flip(data, endpoint)
    yield "RawAmplitudeData", raw_amplitude_data(data)
    for i, code in enumerate(amplitude_codes(data)):
        yield f"Amplitude{code}Checks", amplitude_checks(data, i)
        yield f"Amplitude{code}", amplitude_replay(data, i)
    yield "OfficialPremises", official_premises(data)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--patch", action="store_true")
    parser.add_argument("--check-sources", action="store_true",
                        help="fail if any checked-in generated source differs from this producer")
    parser.add_argument("--part", choices=("benchmark", "data", "overlaps", "support_data", "star", "endpoint_step", "raw_amplitudes", "amplitude_replay", "amplitude_checks", "endpoint_flip", "official_premises"), default="benchmark")
    parser.add_argument("--shard", type=int, default=0)
    parser.add_argument("--endpoint", type=int, choices=(0, 1), default=0)
    args = parser.parse_args()
    directory = Path(__file__).resolve().parent
    data = json.loads((directory / "candidate129_compact_star.json").read_text())
    C.check(data, directory / "candidate129_support.txt")
    if args.check_sources:
        stale = []
        count = 0
        for name, source in all_sources(data):
            path = directory.parents[1] / f"MonochromaticQuantumGraphs/N8D3/Candidate129/{name}.lean"
            count += 1
            if not path.exists() or path.read_text() != source:
                stale.append(name)
        if stale:
            raise SystemExit("stale or missing generated sources: " + ", ".join(stale))
        print(f"PASS: {count} generated Lean sources match the frozen compact certificate")
        return
    if args.part == "official_premises":
        source, name = official_premises(data), "OfficialPremises"
    elif args.part == "endpoint_flip":
        source, name = endpoint_flip(data, args.endpoint), f"Endpoint{args.endpoint}Flip"
    elif args.part == "raw_amplitudes":
        source, name = raw_amplitude_data(data), "RawAmplitudeData"
    elif args.part == "amplitude_replay":
        source, name = amplitude_replay(data, args.shard), f"Amplitude{amplitude_codes(data)[args.shard]}"
    elif args.part == "amplitude_checks":
        source, name = amplitude_checks(data, args.shard), f"Amplitude{amplitude_codes(data)[args.shard]}Checks"
    elif args.part == "endpoint_step":
        source, name = endpoint_step(data, args.endpoint, args.shard), f"Endpoint{args.endpoint}Step{args.shard:02d}"
    elif args.part == "star":
        source, name = star(data), "Star"
    elif args.part == "support_data":
        source, name = support_data(data), "SupportCombinatorics"
    elif args.part == "data":
        source, name = definitions(data), "Data"
    elif args.part == "overlaps":
        source, name = overlaps(data, args.shard), f"Overlaps{args.shard:02d}"
    else:
        source, name = benchmark(data), "Benchmark"
    if args.patch:
        print("*** Begin Patch")
        print("*** Add File: " + str(directory.parents[1] / f"MonochromaticQuantumGraphs/N8D3/Candidate129/{name}.lean"))
        print("\n".join("+" + line for line in source.splitlines()))
        print("*** End Patch")
    else:
        print(source, end="")


if __name__ == "__main__":
    main()

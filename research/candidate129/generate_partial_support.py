#!/usr/bin/env python3
"""Project a checked amplitude certificate to a partial zero/nonzero pattern.

For every required complete amplitude, each matching must either contain a
selected zero coordinate or use only selected nonzero coordinates. All other
coordinates are unrestricted. This producer proposes the pattern; Lean checks
that dichotomy for every matching and proves the semantic bridge separately.
No theorem is established by running this Python program alone.
"""
from collections import Counter
from fractions import Fraction
import argparse
import json
from pathlib import Path
import check_compact_star as C
import generate_lean_replay as G
import verify_candidate129_fatal_certificate as V

PREFIX = "MonochromaticQuantumGraphs.N8D3.Candidate129"


def matching_coordinates(code, matching):
    q = V.decode_coloring(code)
    return tuple(9 * e + 3 * q[V.EDGES[e][0]] + q[V.EDGES[e][1]] for e in matching)


def project(data):
    support = frozenset(data["support"])
    nonzero, clauses, rows = set(), set(), []
    for code in G.amplitude_codes(data):
        for m, matching in enumerate(V.PMS):
            coordinates = matching_coordinates(code, matching)
            outside = frozenset(coordinates) - support
            if outside:
                clauses.add(outside)
            else:
                nonzero.update(coordinates)
            rows.append((code, m, coordinates, bool(outside)))
    zero = {next(iter(c)) for c in clauses if len(c) == 1}
    minimum_zero_witnesses = {i: next((code, m) for code, m, coordinates, missing in rows
                                    if missing and frozenset(coordinates) - support == {i}) for i in zero}
    remaining = [c for c in clauses if c.isdisjoint(zero)]
    while remaining:
        counts = Counter(i for c in remaining for i in c)
        best = min(counts, key=lambda i: (-counts[i], i))
        zero.add(best)
        remaining = [c for c in remaining if best not in c]
    check_projection(data, nonzero, zero)
    return {"nonzero": sorted(nonzero), "zero": sorted(zero),
            "free": sorted(set(range(252)) - nonzero - zero),
            "minimum_zero_witnesses": minimum_zero_witnesses,
            "zero_hitting_set_is_minimum": len(zero) == len(minimum_zero_witnesses)}


def check_projection(data, nonzero, zero):
    nonzero, zero = frozenset(nonzero), frozenset(zero)
    support = frozenset(data["support"])
    if not nonzero <= support or zero & support or not zero <= set(range(252)):
        raise ValueError("core is inconsistent with the original exact support")
    for code in G.amplitude_codes(data):
        for mi, matching in enumerate(V.PMS):
            row = frozenset(matching_coordinates(code, matching))
            if not (row & zero or row <= nonzero):
                raise ValueError(f"uncovered matching: coloring {code}, matching {mi}")


def header(imports):
    return ([f"import {name}" for name in imports] + ["",
        "/-! Generated partial-support projection; every finite claim is checked in Lean. -/", "",
        f"namespace {PREFIX}", "",
        "open MonochromaticQuantumGraphs.LaurentList", "",
        "set_option maxRecDepth 100000", "set_option maxHeartbeats 10000000", ""])


def finish(lines):
    return "\n".join(lines + [f"end {PREFIX}", ""])


def core_data(core):
    lines = header([f"{PREFIX}.SupportChecks", "Mathlib.Tactic.FinCases"])
    for name, key in (("coreNonzero", "nonzero"), ("coreZero", "zero")):
        values = ", ".join(map(str, core[key]))
        lines += [f"def {name} (g : Fin 252) : Bool :=", f"  ([{values}] : List Nat).contains g.val", ""]
    lines += [
        "def coreFree (g : Fin 252) : Bool := !coreNonzero g && !coreZero g", "",
        "theorem core_classification_counts :",
        "    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreNonzero g = true)).card = 75 ∧",
        "    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreZero g = true)).card = 71 ∧",
        "    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreFree g = true)).card = 106 := by",
        "  decide", "",
        "def matchingCoordinate (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) : Fin 252 :=",
        "  let e := matchingPairs m k", "  coordinate e.1 e.2 (q e.1) (q e.2)", "",
        "/-- A matching is killed by a prescribed zero, or uses only fixed nonzero entries. -/",
        "def CoreCompatible (q : Fin 8 → Fin 3) : Prop :=",
        "  ∀ m : Fin 105, (∃ k : Fin 4, coreZero (matchingCoordinate q m k) = true) ∨",
        "    (∀ k : Fin 4, coreNonzero (matchingCoordinate q m k) = true)", "",
        "instance (q : Fin 8 → Fin 3) : Decidable (CoreCompatible q) := by",
        "  unfold CoreCompatible", "  infer_instance", "",
        "theorem coreNonzero_supported (g : Fin 252) (h : coreNonzero g = true) :",
        "    (localIndex g).isSome = true := by", "  revert g", "  decide", "",
        "theorem coreZero_unsupported (g : Fin 252) (h : coreZero g = true) :",
        "    localIndex g = none := by", "  revert g", "  decide", "",
        "theorem matchingVariables_none_of_lookup_none (q : Fin 8 → Fin 3) (m : Fin 105)",
        "    (k : Fin 4) (h : localIndex (matchingCoordinate q m k) = none) :",
        "    matchingVariables q m = none := by",
        "  fin_cases k <;> simp_all [matchingVariables, matchingCoordinate]", "",
        "#print axioms coreNonzero_supported", "#print axioms coreZero_unsupported", ""]
    return finish(lines)


def amplitude(data, code):
    _, terms = C.complete_amplitude(data["support"], code)
    lines = header([f"{PREFIX}.PartialSupportBridge", f"{PREFIX}.Amplitude{code}Checks"])
    lines += ["open MonochromaticQuantumGraph", "",
        f"theorem coloring{code}_core_compatible : CoreCompatible coloring{code} := by", "  decide", "",
        f"theorem partial_amplitude{code}_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)",
        "    (hW : EqSystemN 8 3 W) :",
        f"    (toPolynomial amplitude{code}).Holds (partialWeight W) := by",
        f"  have hs := core_table_holds_of_equations W h hW coloring{code} (by decide)",
        f"    coloring{code}_core_compatible table{code} table{code}_complete",
        f"  rw [table{code}_expanded, table{code}_polynomial] at hs", "  exact hs", ""]
    for i, node in enumerate(data["nodes"]):
        if node.get("coloring") != code:
            continue
        source = [(1, G.dense(e, 143)) for e in terms.values()]
        target = [(Fraction(*c), G.dense(e, 143)) for c, e in node["polynomial"]]
        c, shift = G.unit_transform(source, target)
        lines += [f"theorem partial_premise{i:03d} (W : WeightsN 8 3 ℂ) (h : PartialSupport W)",
            "    (hW : EqSystemN 8 3 W) :",
            f"    (toPolynomial {G.node_name(i)}).Holds (partialWeight W) := by",
            "  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)",
            f"    amplitude{code} {G.node_name(i)} ({c}) {G.exponent(shift)} _ (partial_amplitude{code}_holds W h hW)",
            f"  exact premiseCheck{i:03d}", ""]
    return finish(lines)


def premises(data):
    lines = header([f"{PREFIX}.PartialAmplitude{code}" for code in G.amplitude_codes(data)])
    lines += ["open MonochromaticQuantumGraph", "",
        "theorem partial_amplitude_premises (W : WeightsN 8 3 ℂ) (h : PartialSupport W)",
        "    (hW : EqSystemN 8 3 W) : AmplitudePremises (partialWeight W) where"]
    lines += [f"  h{i:03d} := partial_premise{i:03d} W h hW"
              for i, node in enumerate(data["nodes"]) if node["kind"] == "amplitude"]
    lines += ["", "#print axioms partial_amplitude_premises", ""]
    return finish(lines)


def all_sources(data, core):
    yield "PartialSupportData", core_data(core)
    for code in G.amplitude_codes(data):
        yield f"PartialAmplitude{code}", amplitude(data, code)
    yield "PartialPremises", premises(data)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--patch", action="store_true")
    parser.add_argument("--part", default="all", help="all, data, premises, or an amplitude code")
    parser.add_argument("--check-sources", action="store_true")
    args = parser.parse_args()
    directory = Path(__file__).resolve().parent
    data = json.loads((directory / "candidate129_compact_star.json").read_text())
    C.check(data, directory / "candidate129_support.txt")
    core = project(data)
    base = directory.parents[1] / "MonochromaticQuantumGraphs/N8D3/Candidate129"
    sources = list(all_sources(data, core))
    if args.check_sources:
        stale = [name for name, source in sources if not (base / (name + ".lean")).exists()
                 or (base / (name + ".lean")).read_text() != source]
        if stale:
            raise SystemExit("stale partial-support sources: " + ", ".join(stale))
        print(f"PASS: {len(sources)} partial-support sources; {len(core['nonzero'])} nonzero, "
              f"{len(core['zero'])} zero, {len(core['free'])} unrestricted coordinates")
        return
    if not args.patch:
        print(json.dumps(core, indent=2, sort_keys=True))
        return
    name = {"data": "PartialSupportData", "premises": "PartialPremises"}.get(args.part, "PartialAmplitude" + args.part)
    selected = sources if args.part == "all" else [(n, s) for n, s in sources if n == name]
    if not selected:
        raise SystemExit("unknown part")
    print("*** Begin Patch")
    for name, source in selected:
        path = base / (name + ".lean")
        if path.exists():
            print("*** Update File: " + str(path))
            print("@@")
            print("\n".join("-" + line for line in path.read_text().splitlines()))
        else:
            print("*** Add File: " + str(path))
        print("\n".join("+" + line for line in source.splitlines()))
    print("*** End Patch")


if __name__ == "__main__":
    main()

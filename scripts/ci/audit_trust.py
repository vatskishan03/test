#!/usr/bin/env python3
"""Fail closed: all named endpoints must print, with only standard Lean axioms."""
from pathlib import Path
import re
import subprocess
import sys

EXPECTED = {
    "MQGN6Audit.no_solution_6_4",
    "MQGN6Audit.eqSystem6_no_solution_d4",
    "MonochromaticQuantumGraphs.eqSystemN_restrictColors",
    "MonochromaticQuantumGraphs.noSolution_all_dimensions_iff_three",
    "MonochromaticQuantumGraphs.N8D3.pmSumN8_eq_sum_pmTerm8",
    "MonochromaticQuantumGraphs.N8D3.exists_nonzero_target_matching8",
    "MonochromaticQuantumGraphs.N8D3.exists_target_matching_triple8",
    "MonochromaticQuantumGraphs.N8D3.targetOrbitRep8_covers",
    "MonochromaticQuantumGraphs.factor_star_dichotomy",
    "MonochromaticQuantumGraphs.factor_star_impossible",
    "MonochromaticQuantumGraphs.factor_biclique_dichotomy",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.no_solution_exact_support",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.not_exists_exact_support",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.no_solution_partial_support",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.not_exists_partial_support",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.partial_support_escape",
    "MonochromaticQuantumGraphs.N8D3.Candidate129.core_classification_counts",
}
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
AUDIT_GROUPS = {
    "MQGN6Audit.NoSolution6": [
        "MQGN6Audit.no_solution_6_4", "MQGN6Audit.eqSystem6_no_solution_d4"],
    "MonochromaticQuantumGraphs.ColorRestriction": [
        "MonochromaticQuantumGraphs.eqSystemN_restrictColors",
        "MonochromaticQuantumGraphs.noSolution_all_dimensions_iff_three"],
    "MonochromaticQuantumGraphs.N8D3.Basic": [
        "MonochromaticQuantumGraphs.N8D3.pmSumN8_eq_sum_pmTerm8",
        "MonochromaticQuantumGraphs.N8D3.exists_nonzero_target_matching8",
        "MonochromaticQuantumGraphs.N8D3.exists_target_matching_triple8"],
    "MonochromaticQuantumGraphs.FactorStar": [
        "MonochromaticQuantumGraphs.factor_star_dichotomy",
        "MonochromaticQuantumGraphs.factor_star_impossible",
        "MonochromaticQuantumGraphs.factor_biclique_dichotomy"],
    "MonochromaticQuantumGraphs.N8D3.Candidate129.ExactSupportTheorem": [
        "MonochromaticQuantumGraphs.N8D3.Candidate129.no_solution_exact_support",
        "MonochromaticQuantumGraphs.N8D3.Candidate129.not_exists_exact_support"],
    "MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportTheorem": [
        "MonochromaticQuantumGraphs.N8D3.Candidate129.no_solution_partial_support",
        "MonochromaticQuantumGraphs.N8D3.Candidate129.not_exists_partial_support",
        "MonochromaticQuantumGraphs.N8D3.Candidate129.partial_support_escape",
        "MonochromaticQuantumGraphs.N8D3.Candidate129.core_classification_counts"],
    "MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificates8": [
        "MonochromaticQuantumGraphs.N8D3.targetOrbitRep8_covers"],
}


def lean_code(source):
    """Mask comments/literals, preserving offsets and newlines for diagnostics.

    This supplementary source lint is not a Lean parser or a proof checker.
    The compiled endpoint axiom closure remains the mathematical trust gate.
    Recognize nested comments, escaped strings, raw strings and quoted names;
    keep quoted names in the scan so quoting cannot hide a forbidden name.
    """
    result = list(source)

    def mask(start, end):
        result[start:end] = ["\n" if c == "\n" else " " for c in source[start:end]]

    i = 0
    while i < len(source):
        start = i
        if source.startswith("/-", i):
            depth, i = 1, i + 2
            while i < len(source) and depth:
                if source.startswith("/-", i):
                    depth, i = depth + 1, i + 2
                elif source.startswith("-/", i):
                    depth, i = depth - 1, i + 2
                else:
                    i += 1
            if depth:
                raise ValueError("unterminated block comment")
            mask(start, i)
        elif source.startswith("--", i):
            i = source.find("\n", i)
            i = len(source) if i < 0 else i
            mask(start, i)
        elif source[i] == "«":
            i = source.find("»", i + 1)
            if i < 0:
                raise ValueError("unterminated quoted identifier")
            i += 1
        else:
            raw = re.match(r'r(#+)"', source[i:]) if source[i] == "r" else None
            if raw:
                delimiter = '"' + raw[1]
                i = source.find(delimiter, i + len(raw[0]))
                if i < 0:
                    raise ValueError("unterminated raw string")
                i += len(delimiter)
                mask(start, i)
            elif source[i] == '"':
                i += 1
                while i < len(source) and source[i] != '"':
                    i += 2 if source[i] == "\\" else 1
                if i >= len(source):
                    raise ValueError("unterminated string")
                i += 1
                mask(start, i)
            else:
                i += 1
    return "".join(result)


def check_source(source, path):
    code = lean_code(source)
    forbidden = re.compile(r"\b(sorry|admit|native_decide|axiom|unsafe)\b|Lean\.ofReduceBool")
    match = forbidden.search(code)
    if match:
        line = code.count("\n", 0, match.start()) + 1
        raise ValueError(f"forbidden proof token: {path}:{line}: {match[0]}")
    for value in re.findall(r"\bset_option\s+maxHeartbeats\s+(\d+)", code):
        if not 0 < int(value) <= 10_000_000:
            raise ValueError(f"unsafe heartbeat budget: {path}: {value}")


def check_axioms(text):
    seen = set()
    for name, payload in re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", text):
        axioms = {a.strip() for a in payload.split(",") if a.strip()}
        if axioms - ALLOWED:
            raise ValueError(f"unexpected axioms for {name}: {sorted(axioms - ALLOWED)}")
        seen.add(name)
    seen.update(re.findall(r"'([^']+)' does not depend on any axioms", text))
    if EXPECTED - seen:
        raise ValueError(f"missing axiom output: {sorted(EXPECTED - seen)}")
    if re.search(r"sorryAx|Lean\.(ofReduceBool|trustCompiler)", text):
        raise ValueError("forbidden axiom in log")


def check_sources(repository=Path(".")):
    roots = [repository / "MQGN6Audit", repository / "MonochromaticQuantumGraphs"]
    paths = [repository / "MQGN6Audit.lean", repository / "MonochromaticQuantumGraphs.lean"]
    paths += [path for root in roots for path in root.rglob("*.lean")]
    for path in paths:
        check_source(path.read_text(), path)


if __name__ == "__main__":
    check_axioms(Path(sys.argv[1]).read_text())
    check_sources()
    subprocess.run(["git", "diff", "--check"], check=True)
    print(f"TRUST AUDIT PASS: {len(EXPECTED)} endpoints; only {sorted(ALLOWED)} permitted")

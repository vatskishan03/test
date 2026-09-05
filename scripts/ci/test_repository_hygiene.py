"""Structural regressions for the maintained proof tree, not a proof checker."""
import ast
import importlib.util
from pathlib import Path
import re
import subprocess
import tempfile
import unittest

from audit_trust import AUDIT_GROUPS, lean_code

ROOT = Path(__file__).resolve().parents[2]
LIBRARIES = ("MQGN6Audit", "MonochromaticQuantumGraphs")
WORKFLOWS = {"general-research.yml", "candidate129-fatal-verifier.yml"}
RETIRED_SEARCHES = {
    "audit_candidate129_exclusions.py", "audit_candidate129_forced_core.py",
    "audit_candidate129_singleton_flips.py", "audit_candidate129_singletons.py",
    "identify_candidate129_fatal_edges.py", "probe_candidate129.py",
    "probe_candidate129_adjacent.py", "probe_candidate129_precover.py",
    "search_candidate129_dpll.py",
}


def imports(source):
    return {name for row in re.findall(r"^\s*import\s+([^\n]+)", lean_code(source), re.M)
            for name in row.split()}


class RepositoryHygieneTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        files = [ROOT / (name + ".lean") for name in LIBRARIES]
        files += [p for name in LIBRARIES for p in (ROOT / name).rglob("*.lean")]
        cls.modules = {".".join(p.relative_to(ROOT).with_suffix("").parts): p
                       for p in files}
        cls.graph = {name: imports(path.read_text()) for name, path in cls.modules.items()}
        cls.reachable = set()
        pending = list(LIBRARIES)
        while pending:
            name = pending.pop()
            if name not in cls.reachable:
                cls.reachable.add(name)
                pending.extend(cls.graph[name] & cls.modules.keys())

    def test_only_maintained_workflows_exist(self):
        actual = {p.name for p in (ROOT / ".github/workflows").iterdir()
                  if p.suffix in (".yaml", ".yml")}
        self.assertEqual(actual, WORKFLOWS)

    def test_all_local_lean_imports_resolve(self):
        for name, dependencies in self.graph.items():
            for dependency in dependencies:
                if dependency.split(".", 1)[0] in LIBRARIES:
                    with self.subTest(module=name, dependency=dependency):
                        self.assertIn(dependency, self.modules)

    def test_every_library_module_is_in_a_default_build(self):
        self.assertEqual(set(self.modules) - self.reachable, set())

    def test_every_audited_module_is_built(self):
        self.assertEqual(set(AUDIT_GROUPS) - self.reachable, set())

    def test_library_excludes_ad_hoc_diagnostic_commands(self):
        for name, path in self.modules.items():
            with self.subTest(module=name):
                self.assertIsNone(re.search(r"^\s*#(?:check|eval)\b",
                                            lean_code(path.read_text()), re.M))

    def test_finite_replay_has_only_finite_imports(self):
        pending = ["MQGN6Audit.UniqueDagCheckFast6", "MQGN6Audit.TerminalFinite6"]
        seen, external = set(), set()
        while pending:
            name = pending.pop()
            if name not in seen:
                seen.add(name)
                dependencies = self.graph[name]
                pending.extend(dependencies & self.modules.keys())
                external.update(dependencies - self.modules.keys())
        self.assertNotIn("MQGN6Audit.TargetOrbits6", seen)
        self.assertNotIn("MQGN6Audit.UniqueObstruction", seen)
        self.assertNotIn("MQGN6Audit.PerfectMatchings6", seen)
        self.assertIn("MQGN6Audit.FiniteCombinatorics6", seen)
        self.assertEqual(external, {
            "Mathlib.Data.Fin.VecNotation", "Mathlib.Data.List.Chain",
            "Mathlib.Data.Finset.Union", "Mathlib.Data.Nat.Bitwise",
            "Mathlib.Data.Fintype.Fin", "Mathlib.Data.Fintype.Pi",
            "Mathlib.Tactic.FinCases",
        })

    def test_retired_searches_stay_retired(self):
        current = {p.name for p in (ROOT / "research/candidate129").glob("*.py")}
        self.assertEqual(current & RETIRED_SEARCHES, set())
        for path in (ROOT / "research").rglob("*.py"):
            tree = ast.parse(path.read_text(), filename=str(path))
            dependencies = set()
            for node in ast.walk(tree):
                if isinstance(node, ast.Import):
                    dependencies.update(alias.name for alias in node.names)
                elif isinstance(node, ast.ImportFrom) and node.module:
                    dependencies.add(node.module)
            self.assertFalse({name + ".py" for name in dependencies} & RETIRED_SEARCHES)

    def test_workflow_script_paths_exist(self):
        for filename in WORKFLOWS:
            source = (ROOT / ".github/workflows" / filename).read_text()
            for path in re.findall(r"(?:python3?|bash)\s+((?:scripts|research)/[\w/.-]+)", source):
                with self.subTest(workflow=filename, script=path):
                    self.assertTrue((ROOT / path).is_file())

    def test_import_parser_ignores_commented_imports(self):
        self.assertEqual(imports("/- import Old -/\nimport New More -- import Gone\n"),
                         {"New", "More"})

    def test_required_build_gate_rejects_skipped_or_failed_compilation(self):
        workflow = (ROOT / ".github/workflows/general-research.yml").read_text()
        self.assertEqual(workflow.count("\n  build:\n"), 1)
        gate = workflow.split("\n  build:\n", 1)[1]
        for required in ("needs: compile", "if: ${{ always() }}", "runs-on: ubuntu-latest",
                         "COMPILE_RESULT: ${{ needs.compile.result }}"):
            self.assertIn(required, gate)
        command = re.search(r'^\s+run: (.+)$', gate, re.M)[1]
        self.assertEqual(command, 'test "$COMPILE_RESULT" = success')
        for result in ("success", "failure", "cancelled", "skipped", "neutral", "", "unknown"):
            with self.subTest(result=result):
                checked = subprocess.run(["/bin/sh", "-c", command],
                                         env={"COMPILE_RESULT": result}, capture_output=True)
                self.assertEqual(checked.returncode == 0, result == "success")

    def test_orbit_producers_preserve_all_maintained_sources(self):
        for filename in ("generate_target_orbit_replay.py", "generate_vertex_perm_image_fast8.py"):
            path = ROOT / "scripts/n8d3" / filename
            spec = importlib.util.spec_from_file_location(path.stem, path)
            producer = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(producer)
            with self.subTest(producer=filename), tempfile.TemporaryDirectory() as directory:
                output = Path(directory)
                metadata = producer.generate(output)
                for record in metadata["files"]:
                    relative = record["path"]
                    self.assertEqual((ROOT / relative).read_bytes(), (output / relative).read_bytes(), relative)
                self.assertEqual(len(metadata["files"]), metadata["lean_files"])
                generated = {p.name for p in output.rglob("*.lean")}
                self.assertFalse(generated & {"TargetOrbitReplayLeaves8.lean", "VertexPermImageFast8.lean"})


if __name__ == "__main__":
    unittest.main(verbosity=2)

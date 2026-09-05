#!/usr/bin/env python3
"""Run the native Lean dependency collector under the unchanged VM guard.

Build both root libraries and `axiom_report` first. A partial report is never
accepted. In particular, the large orbit-coverage endpoint may not be skipped.
"""
from pathlib import Path
import subprocess
import sys
from audit_trust import AUDIT_GROUPS, EXPECTED, check_axioms, check_sources


def run(repository, log):
    repository, log = repository.resolve(), log.resolve()
    names = [name for group in AUDIT_GROUPS.values() for name in group]
    if len(names) != len(EXPECTED) or set(names) != EXPECTED:
        raise ValueError("audit invocation list and required endpoints differ")
    if log.exists():
        raise ValueError(f"refusing stale/mixed axiom evidence; choose a fresh log: {log}")
    log.parent.mkdir(parents=True, exist_ok=True)
    for module, names in AUDIT_GROUPS.items():
        subprocess.run([sys.executable, str(repository / "scripts/ci/guarded_run.py"),
                        str(repository), str(log), "--", "lake", "env",
                        ".lake/build/bin/axiom_report", module, *names], check=True)
    check_axioms(log.read_text())
    check_sources(repository)
    print(f"TRUST AUDIT PASS: all {len(EXPECTED)} exact endpoints")


if __name__ == "__main__":
    run(Path(sys.argv[1]), Path(sys.argv[2]))

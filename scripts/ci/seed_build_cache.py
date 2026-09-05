#!/usr/bin/env python3
"""Copy warm library artifacts only for byte-identical source modules.

Never share writable artifacts with a research checkout. Lake still checks the
transitive build traces. This is a local performance cache, not a proof oracle.
All seeds must use this checkout's pinned dependency configuration/toolchain.
"""
import argparse
from pathlib import Path
import shutil
import subprocess
import tomllib


def compatible(repository, source):
    if (repository / "lean-toolchain").read_bytes() != (source / "lean-toolchain").read_bytes():
        raise ValueError(f"incompatible toolchain: {source}")
    current = tomllib.loads((repository / "lakefile.toml").read_text())
    previous = tomllib.loads((source / "lakefile.toml").read_text())
    # Package names/default targets and additional libraries do not change a
    # shared module's compiler options. All other package settings must match.
    settings = lambda cfg: {k: v for k, v in cfg.items() if k not in ("name", "defaultTargets", "lean_lib", "lean_exe")}
    if settings(current) != settings(previous):
        raise ValueError(f"incompatible dependency/compiler configuration: {source}")
    libraries = {row["name"]: row for row in current["lean_lib"]}
    return {row["name"] for row in previous["lean_lib"] if libraries.get(row["name"]) == row}


def seed(repository, source, replace=False):
    libraries = compatible(repository, source)
    paths = subprocess.check_output(["git", "ls-files", "-z", "*.lean"], cwd=repository).split(b"\0")
    modules = artifacts = 0
    for entry in paths:
        if not entry:
            continue
        path = Path(entry.decode())
        if path.parts[0].removesuffix(".lean") not in libraries:
            continue
        if not (source / path).is_file() or (repository / path).read_bytes() != (source / path).read_bytes():
            continue
        prefix = Path(".lake/build/lib/lean") / path.with_suffix("")
        copied = False
        for artifact in (source / prefix.parent).glob(prefix.name + ".*"):
            target = repository / prefix.parent / artifact.name
            if artifact.is_file() and (replace or not target.exists()):
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(artifact, target)
                copied = True
                artifacts += 1
        modules += copied
        # Lake's leanArts trace requires C output even for an import-only
        # build. Omitting it needlessly recompiles expensive finite checks.
        # Do not copy setup.json: it embeds old paths and dominates disk use.
        prefix = Path(".lake/build/ir") / path.with_suffix("")
        for suffix in (".c", ".c.hash", ".bc", ".bc.hash", ".ir", ".ir.hash"):
            artifact = source / (str(prefix) + suffix)
            target = repository / (str(prefix) + suffix)
            if artifact.is_file() and (replace or not target.exists()):
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(artifact, target)
                artifacts += 1
    print(f"seed={source} matched_modules_copied={modules} artifacts_copied={artifacts}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("repository", type=Path)
    parser.add_argument("sources", nargs="+", type=Path)
    parser.add_argument("--replace", action="store_true", help="prefer one coherent source's artifacts in an owned cache")
    args = parser.parse_args()
    for source in args.sources:
        seed(args.repository.resolve(), source.resolve(), args.replace)

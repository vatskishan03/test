#!/usr/bin/env python3
"""Validate the pinned dependency tree before using an optional local VM cache."""
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tomllib
from seed_build_cache import compatible, seed


def check_declared_pins(configuration, manifest):
    packages = {package["name"]: package for package in manifest["packages"]}
    if len(packages) != len(manifest["packages"]):
        raise ValueError("duplicate dependency in cache manifest")
    for requirement in configuration["require"]:
        revision = requirement.get("rev", "")
        package = packages.get(requirement["name"], {})
        if not re.fullmatch(r"[0-9a-f]{40}", revision):
            raise ValueError("cache reuse requires direct dependencies pinned by commit SHA")
        if (package.get("type"), package.get("url"), package.get("rev")) != (
                "git", requirement.get("git"), revision):
            raise ValueError(f"manifest differs from declared pin: {requirement['name']}")


def prepare(repository, source):
    compatible(repository, source)
    manifest = json.loads((source / "lake-manifest.json").read_text())
    check_declared_pins(tomllib.loads((repository / "lakefile.toml").read_text()), manifest)
    packages = (source / ".lake/packages").resolve()
    for package in manifest["packages"]:
        if package["type"] != "git":
            raise ValueError("only pinned git dependencies are supported")
        directory = packages / package["name"]
        head = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=directory, text=True).strip()
        if head != package["rev"]:
            raise ValueError(f"dependency revision mismatch: {package['name']}")
        subprocess.run(["git", "diff", "--quiet", "HEAD", "--"], cwd=directory, check=True)
    lake = repository / ".lake"
    lake.mkdir(exist_ok=True)
    if not (lake / "packages").exists():
        (lake / "packages").symlink_to(packages, target_is_directory=True)
    elif (lake / "packages").resolve() != packages:
        raise ValueError("refusing to replace an existing dependency directory")
    destination = repository / "lake-manifest.json"
    if destination.exists() and json.loads(destination.read_text())["packages"] != manifest["packages"]:
        raise ValueError("refusing to replace a different dependency manifest")
    if not destination.exists():
        shutil.copy2(source / "lake-manifest.json", destination)
    seed(repository, source)


if __name__ == "__main__":
    prepare(Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve())

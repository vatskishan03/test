#!/usr/bin/env python3
"""Generate the bounded structural-kernel proof modules for one case-13 unique terminal."""

from __future__ import annotations

import argparse
from pathlib import Path


def write_module(path: Path, text: str, *, force: bool) -> None:
    if path.exists() and not force:
        raise FileExistsError(f"refusing to overwrite {path}; pass --force to replace it")
    path.write_text(text, encoding="utf-8")


def generate(out_dir: Path, terminal: int, coloring: int, matching: int, *, force: bool) -> None:
    prefix = f"UniqueDagStructuralKernelCase6_13_Terminal{terminal}"

    for vertex in range(6):
        write_module(
            out_dir / f"{prefix}AllowedV{vertex}.lean",
            f"""import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal{terminal}AllowedV{vertex}Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} {vertex} fun code =>
      codeAllowsMatchingAtFast6 code {vertex} (decodeDagColoringFast6 {coloring}) {matching} := by
  decide +kernel

end MQGN6Audit
""",
            force=force,
        )

    allowed_imports = "\n".join(
        f"import MQGN6Audit.{prefix}AllowedV{vertex}" for vertex in range(6)
    )
    allowed_cases = "\n".join(
        f"  · exact case13Terminal{terminal}AllowedV{vertex}Possible6" for vertex in range(6)
    )
    write_module(
        out_dir / f"{prefix}Allowed.lean",
        f"""{allowed_imports}

/-!
# Allowed-code checks for case-13 terminal {terminal}
-/

namespace MQGN6Audit

theorem case13Terminal{terminal}AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 {coloring}) {matching} := by
  intro v
  fin_cases v
{allowed_cases}

end MQGN6Audit
""",
        force=force,
    )

    write_module(
        out_dir / f"{prefix}ForcedBase.lean",
        f"""import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

def case13Terminal{terminal}ForcedAtPossible6 (k : Fin 3) : Prop :=
  let e := matchingEdges6 {matching} k
  ((decodeDagColoringFast6 {coloring}) e.1 =
      (decodeDagColoringFast6 {coloring}) e.2 ∧
    matchingMate6
      ((feasibleTargetRep6 13) ((decodeDagColoringFast6 {coloring}) e.1))
      e.1 = e.2) ∨
    ((terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} e.1
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 {coloring}) e.2) = e.2) ∧
     (terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} e.2
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 {coloring}) e.1) = e.1))

end MQGN6Audit
""",
        force=force,
    )

    for edge in range(3):
        write_module(
            out_dir / f"{prefix}ForcedK{edge}.lean",
            f"""import MQGN6Audit.{prefix}ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal{terminal}ForcedK{edge}Possible6 :
    case13Terminal{terminal}ForcedAtPossible6 {edge} := by
  unfold case13Terminal{terminal}ForcedAtPossible6
  decide +kernel

end MQGN6Audit
""",
            force=force,
        )

    forced_imports = "\n".join(
        f"import MQGN6Audit.{prefix}ForcedK{edge}" for edge in range(3)
    )
    forced_cases = "\n".join(
        f"  · exact case13Terminal{terminal}ForcedK{edge}Possible6" for edge in range(3)
    )
    write_module(
        out_dir / f"{prefix}Forced.lean",
        f"""{forced_imports}

/-!
# Forced-edge checks for case-13 terminal {terminal}
-/

namespace MQGN6Audit

theorem case13Terminal{terminal}ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 {matching} k
      ((decodeDagColoringFast6 {coloring}) e.1 =
          (decodeDagColoringFast6 {coloring}) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 {coloring}) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 {coloring}) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) {terminal} e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 {coloring}) e.1) = e.1)) := by
  intro k
  change case13Terminal{terminal}ForcedAtPossible6 k
  fin_cases k
{forced_cases}

end MQGN6Audit
""",
        force=force,
    )

    write_module(
        out_dir / f"{prefix}Unique.lean",
        f"""import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Alternative-matching exclusions for case-13 terminal {terminal}
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal{terminal}UniquePossible6 :
    ∀ n : Fin 15, n ≠ {matching} →
      {terminal} ∉ matchingReachStructural6 (uniqueDagCase6 13) {coloring} n := by
  intro n hne
  fin_cases n
  all_goals first
    | exact (hne rfl).elim
    | decide +kernel

end MQGN6Audit
""",
        force=force,
    )

    write_module(
        out_dir / f"{prefix}.lean",
        f"""import MQGN6Audit.{prefix}Allowed
import MQGN6Audit.{prefix}Forced
import MQGN6Audit.{prefix}Unique

/-!
# Singleton kernel replay of case-13 terminal {terminal}
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal{terminal}ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) {terminal} := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) {terminal} {coloring} {matching}
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal{terminal}AllowedPossible6,
    case13Terminal{terminal}ForcedPossible6,
    case13Terminal{terminal}UniquePossible6⟩

end MQGN6Audit
""",
        force=force,
    )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("terminal", type=int)
    parser.add_argument("coloring", type=int)
    parser.add_argument("matching", type=int, choices=range(15))
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "MQGN6Audit",
    )
    parser.add_argument("--force", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    args.out_dir.mkdir(parents=True, exist_ok=True)
    generate(args.out_dir, args.terminal, args.coloring, args.matching, force=args.force)


if __name__ == "__main__":
    main()

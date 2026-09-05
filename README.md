# Monochromatic Quantum Graphs

Formal and computational research on the Krenn–Gu monochromatic perfect-matching problem.

## Certified result

This repository contains a Lean proof of the exact complex-weight statement

```lean
theorem MQGN6Audit.no_solution_6_4 :
    ¬ ∃ W : WeightsN 6 4 ℂ, EqSystemN 6 4 W
```

and the wrapper in the shape used by `FormalConjectures`:

```lean
theorem MQGN6Audit.eqSystem6_no_solution_d4 :
    answer(True) ↔
      ¬ ∃ W : WeightsN 6 4 ℂ, EqSystemN 6 4 W
```

The proof applies to arbitrary complex bicolored edge weights. It is not a numerical, real-only, bounded-weight, or support-only result.

The certified proof source is frozen at:

- merge commit: `54de12685b5e1d72cfa44fd7d3ffcde2cb5e4947`
- immutable release branch: `release/n6-d4-v1`
- successful audit workflow: Actions run `30344531686`
- audit artifact SHA-256: `d8e90e3c48b78cf9e82850686fdbe762f0066be7315a11993ed8783d4e5356bc`

The final theorem axiom closure is:

```text
[propext, Classical.choice, Quot.sound]
```

There is no dependency on `sorryAx`, `Lean.ofReduceBool`, or a project-added axiom.

## Proof architecture

The proof has four layers:

1. **Analytic reduction.** Derive the multilinear contraction identity from the official `EqSystemN` definition and force four distinct local axis witnesses at every vertex.
2. **Symmetry normalization.** Choose one nonzero monochromatic perfect matching per color, sort colors, and classify target quadruples under vertex relabeling.
3. **Finite certificate replay.** Check all `830,909` compatible witness templates through a kernel-replayed 900-node certificate DAG. `830,880` templates contain a unique forced forbidden monomial; 29 reach terminal support masks.
4. **Terminal contradictions.** Eliminate 28 masks by support-zero chains, one Cartesian mask algebraically, and the all-identical target orbit by counting.

See [`docs/proofs/n6-d4-v1.md`](docs/proofs/n6-d4-v1.md) for the detailed statement and audit record.

## Kernel-certified N8 partial-support exclusion

[`Candidate129`](research/candidate129/README.md) now excludes a partial-support family: 75 canonical edge-color coordinates are required nonzero, 71 are required zero, and the remaining 106 are arbitrary complex numbers, including zero. The original frozen 143-coordinate exact-support exclusion is a corollary. The theorem is connected to the original `EqSystemN 8 3` equations through all 105 perfect matchings.

Its 145-node Laurent derivation, eleven factor products, twelve character implications, and two final amplitude cancellations are checked by ordinary Lean kernel proofs. A matching-by-matching projection justifies the unrestricted coordinates. All five final exact/partial-support endpoints have axiom closure `[propext, Classical.choice, Quot.sound]`. Supports outside this prescribed pattern are not covered.

## Scope

The unrestricted certified nonexistence result is the six-vertex, four-color slice. Candidate129 adds a family of `2^106` excluded exact N8 support patterns, not a complete support cover. The repository also contains the general color-restriction theorem, the official N8 perfect-matching expansion, target-matching extraction, and explicit coverage of the 31 target-triple orbits. None supplies an unrestricted N8 impossibility theorem.

Neither `(6,3)` nor `(8,3)` is settled by the accepted proof chain here. The unrestricted conjecture for every even `N ≥ 6` and every `D ≥ 3` remains unresolved by this repository. There is no `d = 4` counterexample.

## Current research program

New research remains separated from the immutable certified release:

1. reuse the checked color restriction and N8 matching/orbit foundation;
2. reuse the completed Candidate129 Laurent certificate and partial-support projection pipeline for further verified exclusions;
3. maintain explicit zero/nonzero case coverage while extending support exclusions to an unrestricted finite result;
4. find a valid `N`-uniform obstruction or an exact counterexample; color restriction alone does not reduce `N`.

New work should branch from `main`; the release branch must remain unchanged.

The [local-contraction research](research/local_contraction/README.md) contains an exact rational-input closure algorithm and an independent tensor oracle. Its pointwise three-color axis lemma is kernel-certified and included in the default build. The complete algorithm-equivalence theorem is not yet formalized, and an explicit regression proves that local acceptance is insufficient for the global matching equations.

## Repository maintenance

`main` is the maintained integration branch and requires both verification checks before merging, including for administrators. `release/n6-d4-v1` is locked read-only; force-pushes and branch deletion are disabled on both. Retired branches and unverified tropical drafts are recoverable from `archive/2026-09-05/` tags, not live research branches or accepted global proofs. Automatic branch deletion after merging is enabled.

Two workflows remain maintained: the complete trusted Lean build/axiom audit and exact research regressions. Every retained library module must be reachable from a default root, all local imports must resolve, and every one of the eighteen audited endpoints must be reported. Superseded workflows, orphan modules, and duplicate Candidate129 wrappers are retired. See the [cleanup record](docs/research/repository-cleanup-2026-09-05.md) for scope and recovery information.

## Reproduction

On Linux with Python 3.11+ and the pinned Lean toolchain, the maintained resource-guarded check is:

```bash
python3 scripts/ci/guarded_run.py "$PWD" .ci-logs/dependencies.log -- lake exe cache get
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/build.log
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/reporter-build.log axiom_report
AXIOM_REPORT_RSS_LIMIT_KB=15000000 python3 scripts/ci/run_axiom_audits.py "$PWD" .ci-logs/axioms-fresh.log
```

The last command uses the separately approved read-only reporting budget; compilers keep their original limit. Logs must be fresh. The required final theorem axiom list is:

```text
[propext, Classical.choice, Quot.sound]
```

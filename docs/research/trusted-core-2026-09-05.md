# Trusted-core maintenance and exact-certificate checkpoint

## Status

The unrestricted conjecture remains unresolved. The maintenance work below is not a completed Candidate129 or tropical nonattainment theorem.

PR #4 was merged into `main` as `19e6f4b40ba1ddd0503d55979cae95bb97ddac7c`. Its N8 matching table, target-orbit data and certificate bodies were not regenerated. The `(6,4)` release remains unchanged. PR #5 is based on `main` and remains a draft explicitly marked “Lean certificate pending.”

All eleven original remote branch tips were preserved as lightweight tags under `archive/2026-09-05/` before retirement of seven obsolete or merged branches. The deleted branches remain recoverable from those tags. Historical experimental claims are not promoted to the trusted proof chain by being archived. In particular, the retired `d3-slice-extinction` branch's wrong V-equation encoding, incorrect complex-gradient descent and false local “Theorem A/C” claims are not accepted evidence.

## What was implemented

- Replaced the racing process-group supervisor with a Linux subreaper that monitors the actual child tree, enforces individual/aggregate RAM and time bounds, checks free space, handles cancellation and reaps detached descendants. It refuses a conflicting compiler run. Ten dummy-process/policy tests pass on the VM.
- Added `FactorStar.lean`: the star and complete-bipartite zero-product dichotomies, plus the two-case impossibility wrapper. All three theorems build with axiom closure `[propext, Classical.choice, Quot.sound]`.
- Consolidated the proposed Lean CI around both complete root libraries and an explicit eleven-endpoint axiom allowlist. The native reporting executable calls Lean's own `CollectAxioms.collect` with tactic/editor extension loading disabled. It is subject to the same process guard; using an executable does not authorize more RAM or make a missing report acceptable.
- Added fail-closed log validation and a supplementary comment-aware source lint. Eight tests pass. The former match on the word “admit” in a doc comment was a false positive, not a proof hole. Source lint is not a substitute for compilation and transitive axiom checks.
- Added source-matched, toolchain/configuration-checked VM cache seeding. Library artifacts are copied into the owned checkout instead of sharing writable research artifacts. The local dependency cache is explicitly checked against declared commit pins and each package's checked-out revision; four configuration regressions pass. This is incremental validation, not a from-scratch independent checker run.
- Corrected documentation that suggested the accepted `(6,4)` proof settled `(6,3)`.

The proven initial VM profile uses one compiler, a 7,500,000 KiB RSS tripwire, a 295-second per-process timeout, an 8,000,000 KiB available-memory reserve and a 1,000,000 KiB free-space reserve on every used filesystem. The supervisor permits up to seven workers but still enforces the total RAM reserve; this is not permission to run seven simultaneous worst-case jobs.

## Verification evidence

On the pinned Lean 4.27.0 VM, the complete default `lake build` succeeded after the factor-star change:

```text
Build completed successfully (10799 jobs).
build_status=0
peak single compiler RSS: 7,294,264 KiB
```

The 10,799 count includes cached/replayed jobs; it does not mean 10,799 modules were freshly compiled. Warm artifacts were seeded only for byte-identical sources with matching dependency/compiler configuration. This is a complete-root incremental build, not an independent `lean4checker`/Nanoda replay.

A fresh guarded axiom-report run succeeded for ten named endpoints: both `(6,4)` statements, both color-restriction statements, the three N8 matching/target-extraction statements, and the three new factor-star/biclique statements. Every completed list was exactly:

```text
[propext, Classical.choice, Quot.sound]
```

**The eleventh endpoint, `N8D3.targetOrbitRep8_covers`, remains unreported in this run.** Import completed, but dependency collection reached the 7,500,000 KiB safety tripwire. The guard stopped it at a sampled 7,503,060 KiB after roughly 12 seconds and reaped all descendants. The endpoint itself is in the successful root build; the missing result is its fresh whole-dependency axiom report. These are different checks.

The proposed CI therefore correctly fails overall. It is not ready to merge as a validated replacement workflow. A request to permit only the read-only report to use up to 16 GB is pending; no such exception has been used. Compiler limits remain unchanged. No self-hosted GitHub runner was registered as part of this pending validation.

## Candidate129 improvement (separate draft PR #5)

At `b87c88ca`, a 145-node certificate replaces the full 16,381-relation reconstruction in the checking path: 57 complete-amplitude premises, 88 polynomial combinations, an eleven-leaf factor star and two contradictory endpoints with three and nine derived characters. All character implications carry explicit integer witnesses, including sign parity.

The compact exact replay passed on the VM in **0.04 seconds**, with **18,888 KiB peak RSS**, without SymPy, HNF, factor search, saturation or vertex-cover enumeration. Thirteen positive/adversarial tests pass. The full v2 reconstruction also passed after the import refactor: 11.73 seconds and 413,300 KiB peak RSS.

[Hosted exact-replay CI also passed at that exact revision](https://github.com/vatskishan03/monochromatic-quantum-graphs/actions/runs/33922630846), including all thirteen tests and the full reconstruction. Its separate legacy Lean workflow was cancelled while queued because no matching self-hosted runner is registered; it did not compile anything and is not a passing check.

These timings are measured observations, not guarantees. The checker shares the existing matching order and elementary arithmetic helpers; it is independent of the expensive search, not an independent kernel implementation. Its conclusion concerns the exact 143-coordinate support torus only. A support-specific Lean replay and official-equation endpoint assembly are still required. The generic factor-star lemma does not discharge those obligations.

## Reproduction and remaining gates

On the Linux VM with Python 3.11+, in an isolated checkout with the pinned toolchain and dependencies:

```sh
python3 scripts/ci/test_guarded_run.py
python3 scripts/ci/test_audit_trust.py
python3 scripts/ci/test_cache_config.py
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/build.log
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/reporter-build.log axiom_report
python3 scripts/ci/run_axiom_audits.py "$PWD" .ci-logs/axioms-fresh.log
```

The report command requires a fresh log and is expected to stop at coverage under the currently observed limit. Never reuse an old axiom list or omit coverage to label the overall gate green.

Before merging the CI replacement: complete the coverage axiom audit under an approved resource policy, register an appropriate runner if authorized, run the workflow on its exact revision, and inspect the full result. Before calling Candidate129 kernel-certified: connect the exact support to the official matching bridge, replay every polynomial/integer witness and both final flips, then audit the assembled exact-support theorem. Before claiming unrestricted N8: prove complete zero/nonzero case coverage. None of these final gates is replaced by this checkpoint.

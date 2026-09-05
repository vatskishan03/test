# Trusted-core maintenance and exact-certificate checkpoint

## Status

The unrestricted conjecture remains unresolved. A separate Candidate129 exact-support theorem has now passed Lean's kernel checks; it does not cover other supports or arbitrary vertex counts. This checkpoint does not claim a completed tropical nonattainment theorem.

PR #4 was merged into `main` as `19e6f4b40ba1ddd0503d55979cae95bb97ddac7c`. Its N8 matching table, target-orbit data and certificate bodies were not regenerated. The `(6,4)` release remains unchanged. [PR #5](https://github.com/vatskishan03/monochromatic-quantum-graphs/pull/5) integrates the new Candidate129 kernel proof and its expanded CI gate.

All eleven original remote branch tips were preserved as lightweight tags under `archive/2026-09-05/` before retirement of seven obsolete or merged branches. The deleted branches remain recoverable from those tags. Historical experimental claims are not promoted to the trusted proof chain by being archived. In particular, the retired `d3-slice-extinction` branch's wrong V-equation encoding, incorrect complex-gradient descent and false local “Theorem A/C” claims are not accepted evidence.

## What was implemented

- Replaced the racing process-group supervisor with a Linux subreaper that monitors the actual child tree, enforces individual/aggregate RAM and time bounds, checks free space, handles cancellation and reaps detached descendants. It refuses a conflicting compiler run. All eleven dummy-process/policy tests pass on an idle VM. The tests must not run alongside a guarded build because they deliberately share its exclusive safety lock.
- Added `FactorStar.lean`: the star and complete-bipartite zero-product dichotomies, plus the two-case impossibility wrapper. All three theorems build with axiom closure `[propext, Classical.choice, Quot.sound]`.
- Consolidated Lean CI around both complete root libraries and an explicit thirteen-endpoint axiom allowlist, including both Candidate129 endpoints. The native reporting executable calls Lean's own `CollectAxioms.collect` with tactic/editor extension loading disabled. Its separately user-approved read-only reporting budget does not raise the compiler budget or make a missing report acceptable.
- Added fail-closed log validation and a supplementary comment-aware source lint. Nine tests pass, including rejection of an omitted Candidate129 endpoint. The former match on the word “admit” in a doc comment was a false positive, not a proof hole. Source lint is not a substitute for compilation and transitive axiom checks.
- Added source-matched, toolchain/configuration-checked VM cache seeding. Library artifacts are copied into the owned checkout instead of sharing writable research artifacts. The local dependency cache is explicitly checked against declared commit pins and each package's checked-out revision; four configuration regressions pass. This is incremental validation, not a from-scratch independent checker run.
- Corrected documentation that suggested the accepted `(6,4)` proof settled `(6,3)`.

The proven initial VM profile uses one compiler, a 7,500,000 KiB RSS tripwire, a 295-second per-process timeout, an 8,000,000 KiB available-memory reserve and a 1,000,000 KiB free-space reserve on every used filesystem. The supervisor permits up to seven workers but still enforces the total RAM reserve; this is not permission to run seven simultaneous worst-case jobs.

The user subsequently approved a read-only axiom-collector exception of up to 16 GB. The configured report tripwire is 15,000,000 KiB, while every Lean compiler retains the 7,500,000 KiB tripwire and 295-second timeout. A separate policy regression checks that changing the reporting budget cannot change the compiler budget.

## Verification evidence

On the pinned Lean 4.27.0 VM, the complete default `lake build` succeeded after the factor-star change:

```text
Build completed successfully (10799 jobs).
build_status=0
peak single compiler RSS: 7,294,264 KiB
```

The 10,799 count includes cached/replayed jobs; it does not mean 10,799 modules were freshly compiled. Warm artifacts were seeded only for byte-identical sources with matching dependency/compiler configuration. This is a complete-root incremental build, not an independent `lean4checker`/Nanoda replay.

A fresh guarded axiom-report run under the approved reporting policy succeeded for all eleven named endpoints: both `(6,4)` statements, both color-restriction statements, the three N8 matching/target-extraction statements, the three new factor-star/biclique statements, and the target-orbit coverage theorem. Every list was exactly:

```text
[propext, Classical.choice, Quot.sound]
```

**The previously missing eleventh endpoint, `N8D3.targetOrbitRep8_covers`, now has a complete report.** The collector finished in 40.96 seconds with a sampled peak of 9,386,212 KiB. All descendants were reaped. The earlier attempt at the compiler-sized reporting cap stopped safely; it was not counted as a pass. The compiled theorem and its whole-dependency axiom report are separate checks, and both are now evidenced.

That original report passed the fail-closed eleven-endpoint log validator. The later integrated GitHub workflow also passed the expanded thirteen-endpoint gate, as recorded below. A single-use VM runner performed that job, deregistered automatically, and terminated; it was not installed as a persistent service.

## Candidate129 improvement (PR #5)

At `b87c88ca`, a 145-node certificate replaces the full 16,381-relation reconstruction in the checking path: 57 complete-amplitude premises, 88 polynomial combinations, an eleven-leaf factor star and two contradictory endpoints with three and nine derived characters. All character implications carry explicit integer witnesses, including sign parity.

The compact exact replay passed on the VM in **0.04 seconds**, with **18,888 KiB peak RSS**, without SymPy, HNF, factor search, saturation or vertex-cover enumeration. Thirteen positive/adversarial tests pass. The full v2 reconstruction also passed after the import refactor: 11.73 seconds and 413,300 KiB peak RSS.

[Hosted exact-replay CI also passed at that exact revision](https://github.com/vatskishan03/monochromatic-quantum-graphs/actions/runs/33922630846), including all thirteen tests and the full reconstruction. Its separate legacy Lean workflow was cancelled while queued because no matching self-hosted runner is registered; it did not compile anything and is not a passing check.

These timings are measured observations, not guarantees. The checker shares the existing matching order and elementary arithmetic helpers; it is independent of the expensive search, not an independent kernel implementation. Its conclusion concerns the exact 143-coordinate support torus only.

The new support-specific Lean replay has now passed independently of the Python checker: 183 generated modules plus hand-written semantic bridges, all 60 distinct complete amplitudes checked against all 105 official matchings, the full 145-node DAG, eleven factor products, twelve signed-character steps, and both final cancellations. The assembled `Candidate129.no_solution_exact_support` and `Candidate129.not_exists_exact_support` each print exactly `[propext, Classical.choice, Quot.sound]`.

That targeted build completed with 8,237 jobs including cached dependencies, 6,430,420 KiB peak single-compiler RSS, and 21.76 seconds maximum sampled single-compiler elapsed time. The 183-source regeneration check and five producer tests pass; the existing thirteen exact-replay tests also pass.

## Integrated CI receipt

At source revision `cd6e09f32a0cf3a9ca1ded76009e8ca3f210551d`:

- [Hosted exact replay, all eighteen regressions, 183-source regeneration and full reconstruction passed](https://github.com/vatskishan03/monochromatic-quantum-graphs/actions/runs/33931788171).
- [Both complete root libraries and all thirteen theorem axiom audits passed](https://github.com/vatskishan03/monochromatic-quantum-graphs/actions/runs/33931788335). All 24 supervisor, audit and cache regressions also passed.

The pull-request job checked out synthetic merge commit `7a1bef50d4fee239a33eded69a602bcad7343a46`. Its tree was verified identical to the source revision: `8e7502b266faee99d5dba49e071a35d2b90f0979`. The complete-root incremental build had 10,992 jobs including cached dependencies and 7,397,372 KiB peak Lean-compiler RSS. The largest read-only axiom report used 9,402,040 KiB; its maximum sampled process elapsed time was 39.77 seconds. All thirteen lists were exactly the three standard axioms shown above.

This first CI run's downloadable artifact was **not** uploaded: the upload action skipped the hidden `.ci-logs` directory and only issued a warning. The proof/build gates did pass, and all four original log files were recovered intact from the VM. The axiom log SHA-256 is `d49916d8b81c8c57c511811443613b377b0ae2de4510c68e025cc31af06683ac`; the build log SHA-256 is `130797d07eb5cbee0426b43619774dc936c164af17c12f6e5799c7572b8d68b9`.

The integrated workflow now explicitly includes that hidden log directory and fails if the evidence is missing. A passing result on a later revision must be verified separately; these links and measurements identify the tested revision above, not every subsequent commit. The latest PR checks and downloadable artifact are the authoritative receipt for the upload correction.

## Reproduction and remaining mathematical gaps

On the Linux VM with Python 3.11+, in an isolated checkout with the pinned toolchain and dependencies:

```sh
python3 scripts/ci/test_guarded_run.py
python3 scripts/ci/test_audit_trust.py
python3 scripts/ci/test_cache_config.py
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/build.log
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/reporter-build.log axiom_report
AXIOM_REPORT_RSS_LIMIT_KB=15000000 python3 scripts/ci/run_axiom_audits.py "$PWD" .ci-logs/axioms-fresh.log
```

The report command requires a fresh log and the explicitly approved reporting budget shown above. Never reuse an old axiom list or omit coverage to label the overall gate green.

Before merging any later integrated revision: run both complete root builds and the expanded axiom gate on its exact tree, verify the downloadable logs, and inspect the workflow result. Before claiming unrestricted N8: prove complete zero/nonzero case coverage. Arbitrary vertex counts require an additional valid argument; a single-support exclusion does not supply one.

## External six-vertex claim: a separate trust boundary

The public [algal six-vertex certificate](https://github.com/algal/krenn-gu-6x3-certificate) states the unrestricted complex `(6,3)` proposition. Its [2026-07-24 verification record](https://github.com/algal/krenn-gu-6x3-certificate/blob/main/VERIFICATION-RESULTS.md) reports a successful build with `Lean.ofReduceBool` and `Lean.trustCompiler`, as well as the three standard axioms. That is a compiler-trusting formalization claim, not evidence that this repository's stricter kernel-only gate has been met. We have inspected its documented architecture and selected source modules, not reproduced that release build.

Its [contraction module](https://github.com/algal/krenn-gu-6x3-certificate/blob/main/KrennGuCertificate/Contraction.lean) concerns product-vector contraction of the six-vertex equations; it is not a reduction from arbitrary vertex counts to six. Consequently, even acceptance of that external `(6,3)` result would not settle the arbitrary-order conjecture. No external theorem or additional proof axiom has been imported into this trusted library.

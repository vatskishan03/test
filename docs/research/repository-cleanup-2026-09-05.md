# Repository cleanup: 2026-09-05

## Maintained scope

`main` holds the integrated strict-kernel proof library and explicitly labeled executable research. `release/n6-d4-v1` remains at `54de12685b5e1d72cfa44fd7d3ffcde2cb5e4947`. Research source on main is not automatically a theorem: the complete local-contraction closure criterion remains unformalized, and the unrestricted Krenn–Gu conjecture remains unresolved.

The final cleanup pull request is eligible for merging only after both complete default libraries, all eighteen endpoint dependency reports, and the independent exact-regression workflow pass on its exact tree. An earlier passing run is not a receipt for later source changes. The merged pull request's checks and downloadable logs identify the final tested revision.

## Completed retirement and recovery

- The previous main tree is preserved by `archive/2026-09-05/pre-cleanup-main` at `a548b6868c4b6dabb2657bb744a7aaeae29caa77`.
- The merged maintenance, exact-support, and partial-support branch tips were separately preserved by `trusted-core-final`, `candidate129-exact-final`, and `candidate129-partial-final` under the same archive prefix before their remote branches were deleted.
- The unmerged tropical branch tip remains at `archive/2026-09-05/research/n8d3-tropical-nonattainment`. Its three formerly uncommitted files are preserved in `archive/2026-09-05/tropical-working-drafts` at `30b6ffc72b41f8c845942705ed340f633ed527d1`. Neither archive is a claim that those tropical endpoints satisfy the maintained trust gate.
- Ten obsolete workflows were disabled without deleting historical runs. Five stale workflow files were removed from main's successor tree. Only the complete trusted Lean workflow and exact research regressions remain maintained.
- Seventy superseded Lean files were retired: sixty old exact-support amplitude wrappers, their premise assembly, eight root-unreachable compatibility/experimental modules, and the unused matching-block helper. Nine superseded Candidate129 discovery scripts were also retired. All remain recoverable from the pre-cleanup archive.
- Removed the corresponding unused producer paths and exact-support bridge duplication. The remaining 122 shared and 62 partial-support generated Candidate129 sources are reproducible. The edited orbit/image producers are checked against every maintained output byte; existing matching/orbit certificate bodies were not regenerated or changed.
- Repaired the shared fetch configuration, which had pointed only at a deleted branch; enabled automatic branch deletion after merge; retired stale local branch pointers and the clean maintenance working copy. The cleanup branch is temporary and must also disappear after integration.
- Protected main with both actual GitHub Actions check names, up-to-date branch enforcement, and pull-request integration without requiring an unavailable second reviewer. The rules apply to administrators. Locked the frozen release read-only; disabled force-pushes and deletion on both long-lived branches.
- The required `build` check is an always-running hosted result gate. It fails when the VM compilation/audit job is skipped, cancelled, or unsuccessful; this avoids GitHub's default acceptance of skipped required jobs. External-contributor workflow runs require approval, and the maintained VM job only accepts in-repository pull requests or an explicit dispatch. Workflow tokens remain read-only and cannot approve pull requests.
- Checked in the dependency lock with all ten package records identical to passing CI and the root package name corrected to match `lakefile.toml`. Added a real-lock regression and a narrow ignore file for build/cache/log outputs. No dependency revision changed.

Recovery does not require rewriting main. For example, create a temporary working copy from the relevant archive tag and inspect its contents there. Archive tags preserve history, not authority to promote an unverified claim.

## Regressions and trust boundary

Ten repository-structure checks enforce the two-workflow inventory, local import resolution, complete default-root reachability, audited-module reachability, retirement of old search imports, valid workflow script paths, comment-aware import extraction, rejection of skipped or failed compilation, finite-only imports for the complete DAG and terminal replay, and byte-identical regeneration of the maintained orbit/image outputs. Every retained library module is covered by a default build.

The first cleanup CI attempt stopped safely while recompiling the legacy case-13 terminal-reachability calculation: sampled compiler RSS reached 7,524,616 KiB, above the unchanged 7,500,000 KiB tripwire. It was not counted as a passing build. A narrow finite-only prototype passed, but a second terminal check exposed the same dependency problem elsewhere; that prototype was folded into a shared finite layer instead of retaining duplicated definitions.

The matching and target tables and pure support predicates now live once in `FiniteCombinatorics6`, shared by the analytic soundness proof and the full finite certificate replay. The finite monochromaticity predicate has a kernel-checked definitional-equality bridge to the original formal-conjecture predicate. No matching table, DAG node, plan code, terminal ID, final equation-system theorem, or compiler limit is changed. The new dependency-boundary regression prevents finite replay from importing the analytic layer again. The two previously failing case-13 targets and the original matching-sum bridge passed together, with sampled peak RSS 7,069,336 KiB and maximum sampled compiler lifetime 21.69 seconds (`finite-boundary-03.log`). Complete integration still requires its own final-revision checks.

The source/axiom audit has eleven regressions and requires all eighteen endpoints, including the new pointwise three-color axis lemma. All compiler limits and the separately approved read-only collector exception are unchanged. Exact arithmetic tests, source lint, hashes, and generator reproducibility supplement the Lean kernel; none replaces it.

The original `(6,4)` release and all archived research remain recoverable. This cleanup resolves the identified branch, workflow, duplicate-source, dependency-coverage, and working-copy debt; it is not a claim that every possible future defect has been ruled out or that the mathematical problem is solved.

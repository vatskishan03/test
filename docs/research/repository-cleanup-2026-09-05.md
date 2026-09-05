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
- Checked in the dependency lock with all ten package records identical to passing CI and the root package name corrected to match `lakefile.toml`. Added a real-lock regression and a narrow ignore file for build/cache/log outputs. No dependency revision changed.

Recovery does not require rewriting main. For example, create a temporary working copy from the relevant archive tag and inspect its contents there. Archive tags preserve history, not authority to promote an unverified claim.

## Regressions and trust boundary

Eight repository-structure checks enforce the two-workflow inventory, local import resolution, complete default-root reachability, audited-module reachability, retirement of old search imports, valid workflow script paths, comment-aware import extraction, and byte-identical regeneration of the maintained orbit/image outputs. Every retained library module is covered by a default build.

The source/axiom audit has eleven regressions and requires all eighteen endpoints, including the new pointwise three-color axis lemma. All compiler limits and the separately approved read-only collector exception are unchanged. Exact arithmetic tests, source lint, hashes, and generator reproducibility supplement the Lean kernel; none replaces it.

The original `(6,4)` release and all archived research remain recoverable. This cleanup resolves the identified branch, workflow, duplicate-source, dependency-coverage, and working-copy debt; it is not a claim that every possible future defect has been ruled out or that the mathematical problem is solved.

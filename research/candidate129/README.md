# Candidate129: compact partial-support refutation

Status on 2026-09-05: **the stronger partial-support theorem passes ordinary Lean kernel verification.** It requires 75 prescribed nonzero coordinates and 71 prescribed zero coordinates; the other 106 canonical coordinates are completely unrestricted complex numbers, including zero. This excludes a Boolean family of `2^106` exact supports, not every N8 support or the unrestricted conjecture.

The endpoints in [`PartialSupportTheorem.lean`](../../MonochromaticQuantumGraphs/N8D3/Candidate129/PartialSupportTheorem.lean) are `no_solution_partial_support`, `not_exists_partial_support`, and the learned clause `partial_support_escape`. The original two endpoints in [`ExactSupportTheorem.lean`](../../MonochromaticQuantumGraphs/N8D3/Candidate129/ExactSupportTheorem.lean) are now corollaries. All five have precisely the axiom closure `[propext, Classical.choice, Quot.sound]`; none depends on `sorryAx`, `Lean.ofReduceBool`, or `Lean.trustCompiler`.

## Certificate projection and its scope

The producer extracts two disjoint sets from the complete amplitudes actually used by the proof: `R` of 75 required nonzeros and `Z` of 71 required zeros. For each of the 60 colorings and each of its 105 matchings, Lean checks that the matching either contains a coordinate in `Z`, or uses only coordinates in `R`. The zero set lies outside the original support; the nonzero set lies inside it.

The formal bridge fills unused original-support variables with one. The matching dichotomy proves that all 60 actual amplitudes equal the amplitudes of this filled assignment. Every Laurent variable in the filled assignment is nonzero, so the existing complete certificate applies without assuming that unused actual coordinates are nonzero. In particular, 68 old support coordinates may now vanish and 38 formerly absent coordinates may now be present.

The learned clause says that every solution must have a zero somewhere in `R` or a nonzero somewhere in `Z`. Seven adversarial tests independently enumerate all matchings, test removal of every prescribed condition, and compare actual and filled amplitudes with exact integer arithmetic. The 71 zeros are minimum for this particular omitted-matching hitting-set recipe, witnessed by singleton clauses; no global minimality of the theorem's assumptions is claimed.

The distinct 144-coordinate tropical support is **not** covered: its extra coordinate 214 is required zero here. Nor does this theorem cover every proper sub-support of the original 143-coordinate support: the 75 required coordinates must remain nonzero.

## Small certificate and proof mechanism

For a signed character `χ = (d,b)`, put `Bχ(x) = x^d - (-1)^b` on the torus `(ℂ*)^143`. The certificate establishes eleven equations `Bχᵢ(x) Bc(x) = 0`. Since ℂ has no zero divisors, either `Bc(x) = 0` or every `Bχᵢ(x) = 0`. No vertex-cover enumeration or false-twin theorem is needed for this implication.

Each alternative is impossible:

| Case | Additional character implications | Complete amplitude flip |
| --- | ---: | --- |
| Center vanishes | 3 | Colorings 759 and 756: 8 common matchings, extra matching 43 |
| All 11 leaves vanish | 9 | Colorings 3132 and 3105: 5 common matchings, extra matching 26 |

In each flip, explicit integer witnesses make every common-matching ratio equal. Subtracting the correspondingly scaled **complete** amplitudes leaves exactly one supported monomial. Both amplitudes vanish because their colorings are nonmonochromatic; the remaining monomial cannot vanish in the filled Laurent assignment. The partial-support bridge is what makes this argument valid even when unused actual support coordinates vanish.

The backward dependency slice has **145 polynomial nodes: 57 full-amplitude premises and 88 shifted linear combinations**. It replaces reconstruction of 16,381 relations in the checking path. All signed-lattice implications include raw integer coefficient vectors, including the universal parity row `(0,…,0,2)`; the checker performs no Hermite normal form, saturation, factor search or cover enumeration.

## Reproduce

From the repository root, using the Python standard library only:

```sh
python3 research/candidate129/check_compact_star.py research/candidate129/candidate129_compact_star.json
python3 research/candidate129/test_compact_star.py
python3 research/candidate129/generate_lean_replay.py --check-sources
python3 research/candidate129/test_lean_replay_generator.py
python3 research/candidate129/generate_partial_support.py --check-sources
python3 research/candidate129/test_partial_support.py
```

The second command includes mutation tests for omitted amplitude terms, wrong coefficients, cyclic provenance, wrong character and ratio witnesses, and an incorrect final matching. It also checks that SymPy is never imported and the producer's factor-search routine is never called.

The source-generation checks cover 122 shared generated Lean modules and 62 partial-support modules, including exhaustive 105-entry matching tables for every amplitude. Sixty obsolete exact-support amplitude wrappers and their assembly module were retired after the exact-support theorem became a partial-support corollary. Six producer regressions and seven projection regressions supplement the thirteen exact-replay tests. These are reproducibility checks, not substitutes for compiling the proof.

On the pinned Linux VM, build the formal endpoint under the repository's resource guard:

```sh
bash scripts/ci/guarded_lake_build.sh "$PWD" .ci-logs/candidate129.log \
  MonochromaticQuantumGraphs.N8D3.Candidate129.ExactSupportTheorem
```

The first complete targeted replay finished successfully with 8,237 jobs including cached dependencies, 6,430,420 KiB peak Lean-process RSS, and 21.76 seconds maximum sampled single-process elapsed time. The original N8 matching table was not regenerated; the certificate's mirror was checked against all 420 official edge entries. The integrated whole-library build and its strict axiom allowlist are enforced separately by the trusted Lean workflow.

The [integrated CI receipt](../../docs/research/trusted-core-2026-09-05.md#integrated-ci-receipt) records a passing complete-root build and all thirteen theorem dependency audits on the identical tree of revision `cd6e09f3`, alongside the passing hosted exact replay. It distinguishes incremental checks from fresh compilation and records the first run's log-upload defect and its correction.

The stronger partial-support endpoint subsequently passed a targeted build with 8,239 jobs including cached dependencies, 6,566,340 KiB peak single-compiler RSS, and 6.80 seconds maximum sampled single-process elapsed time. A source-matched complete-root incremental build then passed with 7,398,252 KiB peak compiler RSS. The expanded seventeen-endpoint axiom gate passed, including the three new endpoints and the kernel-checked `75/71/106` coordinate counts. These are measured VM checks; older GitHub CI links do not certify this later source change.

The larger reconstruction and certificate extraction require `sympy==1.14.0`:

```sh
python3 research/candidate129/verify_candidate129_fatal_certificate_v2.py
python3 research/candidate129/extract_compact_star.py --output /tmp/candidate129_compact_star.rebuilt.json
python3 research/candidate129/check_compact_star.py /tmp/candidate129_compact_star.rebuilt.json
```

The authoritative full-reconstruction entry point is revision 2; revision 1 remains the shared arithmetic/reconstruction module and retains its historical brittle raw-edge entry point.

Frozen support SHA-256:

```text
f2e0a7910c9761e23923f467b7bb00a1677b7381bb531e75e91e31abc0a92815
```

Canonical JSON content SHA-256 (excluding the `content_sha256` field; not the pretty-printed file hash):

```text
0362b964c391a96ff915aac847cdb78cd9ef35bdd7b5e16e4e496f3b1853398f
```

The full v2 verifier was rerun after the lazy SymPy-import refactor: PASS, 11.73 seconds wall time, 413,300 KiB peak RSS on the Linux VM. This is a measured run, not a performance guarantee.

## Trust boundary and discharged Lean obligations

The compact Python checker is independent of the expensive discovery/reconstruction path, but it reuses the existing matching order and basic arithmetic helpers. That checker alone is not a Lean proof. The separate formal replay discharges every identity inside Lean and bridges it to the original equations. Hashes identify data; they do not establish the algebra. The ordinary Lean build is not an independent Nanoda/lean4checker replay of the pinned dependencies.

The historical sparse common-monomial normalizer is not idempotent on every Laurent input. This does not invalidate its use as multiplication by a Laurent unit, but uniqueness/idempotence must not be assumed. Every node is checked against its actual derivation. Star products are expanded directly and compared with a separate translation-invariant dense-exponent normalization. A small counterexample is preserved as a regression test.

The complete kernel chain now includes:

1. Exact coordinate lookup/inverse checks, agreement with the official N8 matching table, and a complete matching-sum bridge from `EqSystemN`.
2. All 60 distinct complete amplitudes needed by the 57 DAG premises and four flip inputs, including every omitted matching's zero justification.
3. All 88 polynomial combinations, eleven factor-product identities, twelve integer character implications, and both complete-amplitude flips.
4. The partial-support transfer for every required matching, the two-case partial-support theorem, its exact-support corollary, and their transitive axiom audits. The generic factor-star lemma alone would not discharge these obligations.

The finite-list adapter transports checked integer identities to the established `Finsupp` Laurent semantics. Matching entries use direct definitional equality; monomial representations are compared symbolically coordinate by coordinate. This avoids the memory-heavy generic comparison of reconstructed exponent functions without changing the equations or allowing a larger compiler budget.

Supports that escape the prescribed `R/Z` pattern and arbitrary vertex counts remain outside this theorem. A large partial-support exclusion cannot be substituted for a complete zero/nonzero support cover.

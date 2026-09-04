# Candidate129: compact exact-support refutation

Status on 2026-09-05: **exact Python replay passes; the support-specific Lean theorem is not yet implemented.** This is a statement about the fixed 143-coordinate exact support, not all weights supported inside it, not every N8 support, and not the unrestricted conjecture.

## Small certificate and proof mechanism

For a signed character `χ = (d,b)`, put `Bχ(x) = x^d - (-1)^b` on the torus `(ℂ*)^143`. The certificate establishes eleven equations `Bχᵢ(x) Bc(x) = 0`. Since ℂ has no zero divisors, either `Bc(x) = 0` or every `Bχᵢ(x) = 0`. No vertex-cover enumeration or false-twin theorem is needed for this implication.

Each alternative is impossible:

| Case | Additional character implications | Complete amplitude flip |
| --- | ---: | --- |
| Center vanishes | 3 | Colorings 759 and 756: 8 common matchings, extra matching 43 |
| All 11 leaves vanish | 9 | Colorings 3132 and 3105: 5 common matchings, extra matching 26 |

In each flip, explicit integer witnesses make every common-matching ratio equal. Subtracting the correspondingly scaled **complete** amplitudes leaves exactly one supported monomial. Both amplitudes vanish because their colorings are nonmonochromatic; the remaining monomial cannot vanish because every support coordinate is nonzero. This is why zero-coordinate boundary strata are not covered.

The backward dependency slice has **145 polynomial nodes: 57 full-amplitude premises and 88 shifted linear combinations**. It replaces reconstruction of 16,381 relations in the checking path. All signed-lattice implications include raw integer coefficient vectors, including the universal parity row `(0,…,0,2)`; the checker performs no Hermite normal form, saturation, factor search or cover enumeration.

## Reproduce

From the repository root, using the Python standard library only:

```sh
python3 research/candidate129/check_compact_star.py research/candidate129/candidate129_compact_star.json
python3 research/candidate129/test_compact_star.py
```

The second command includes mutation tests for omitted amplitude terms, wrong coefficients, cyclic provenance, wrong character and ratio witnesses, and an incorrect final matching. It also checks that SymPy is never imported and the producer's factor-search routine is never called.

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

## Trust boundary and next Lean obligations

The compact checker is independent of the expensive discovery/reconstruction path, but it reuses the existing matching order and basic arithmetic helpers. It is **not** an independently implemented kernel or a Lean certificate. Hashes identify data; they do not establish the algebra.

The historical sparse common-monomial normalizer is not idempotent on every Laurent input. This does not invalidate its use as multiplication by a Laurent unit, but uniqueness/idempotence must not be assumed. Every node is checked against its actual derivation. Star products are expanded directly and compared with a separate translation-invariant dense-exponent normalization. A small counterexample is preserved as a regression test.

Remaining kernel work:

1. Connect the fixed support and matching indices to the existing official `EqSystemN`/N8 matching bridge.
2. Replay the 57 amplitude premises and 88 polynomial identities using the existing Laurent certificate semantics.
3. Replay every integer character implication and both complete-amplitude flips.
4. Assemble the two cases into an exact-support theorem and audit its transitive axioms. The generic factor-star lemma alone does not do this.

Do not mark the draft PR as a completed nonattainment theorem until these obligations are discharged.

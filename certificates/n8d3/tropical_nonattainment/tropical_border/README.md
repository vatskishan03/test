# Canonical six-matching tropical certificate

This directory contains the exact tropical-border inputs for the 144-entry
support used by the support-specific `N = 8`, `D = 3` finite-non-attainment
theorem.  It is deliberately separate from the earlier 144-entry support,
whose replay has 77,878 competing inequalities.

The source bundle was supplied as
`monochromatic_quantum_graphs_codex_handoff.zip`, with outer SHA-256
`df8d76ed377a8c63f4517951556fb00a2860e1da5dde36dcf834f9aca14e2e15`.
The handoff's own SHA-256 inventory and structural verifier both pass.

Exact standalone replay:

```text
EXACT TROPICAL BORDER CERTIFICATE: PASS
support entries: 144
perfect matchings: 105
colorings: 6561
target PM indices: [59, 77, 12]
target valuation sums: [4, 3, 4]
total supported matching monomials: 82621
selected target monomials excluded: 3
checked inequalities: 82618
  monochromatic competitors: 58
  nonmonochromatic monomials: 82560
minimum strict margin: 1
violations: 0
```

Python is used only to validate and translate finite data.  All propositions
used by the Lean theorems are replayed by the Lean kernel in bounded shards.

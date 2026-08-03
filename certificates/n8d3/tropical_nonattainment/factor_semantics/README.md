# N=8,D=3 factor-semantics certificates

This directory contains deterministic finite data for the support-specific
non-attainment proof on the canonical **new six-matching 144-entry support**.
That support is the one with 82,618 tropical competing inequalities.  These
files must not be mixed with the older 77,878-inequality support or the live
142-entry CEGAR support.

## Retained pipeline

The generated data follows the recovered research generator exactly:

1. 200 six-term base relations;
2. 360 sparse translated-face eliminants (`min_face = 3`), producing the
   authoritative 560-row relation table;
3. component saturation of those 560 rows;
4. quotient overlap with `min_face = 2`, `source_min = 3`,
   `source_max = 6`, `max_output = 4`, and one root;
5. 70 quotient tetranomials for Component A and 88 for Component B;
6. factor saturation after appending those component-specific quotient rows;
7. signed-parity-audited factorization, exact false-twin compression, and
   exhaustive minimal-cover enumeration;
8. exact terminal dispatch for all 54 Component-A covers and all 288
   Component-B covers;
9. exact replay of the three residual Component-B states, the two necessary
   second-stage eliminants, their two-edge factor graph, and both minimal
   branch covers;
10. exact integer implication certificates for every derivative character in
    the six terminal branches.

The resulting graph summaries are:

```text
A: quotient=70 raw_edges=68 raw_vertices=59 classes=15 covers=54
B: quotient=88 raw_edges=59 raw_vertices=49 classes=23 covers=288
terminal: A=54 B=288 residual_B=3 branch_cases=6
```

The independently reproducible 68-row second overlap closure is also checked,
but only as a regression digest.  It is not an input to either factor graph.
This distinction is recorded in every component file and in
`generation_manifest.json`.

## Reproduction

The recovered exact engine is supplied separately.  The generator refuses to
import it unless its byte length is 25,736 and its SHA-256 is:

```text
75f55ccc4fa1f46e8b1ab1a22e489e2d93ff8370c4b8a8faca8deb0d02c749d0
```

The canonical support is checked against SHA-256:

```text
16bcc5dbb023bc4ed522633b462a81fa0d5dca6722aeac54e6bdc3dc2f44fbe1
```

The generator also consumes the canonical handoff ZIP (SHA-256
`df8d76ed377a8c63f4517951556fb00a2860e1da5dde36dcf834f9aca14e2e15`)
and the directory containing the six hash-pinned `B_state*_branch*.pkl`
research-state files.  The pickles are loaded by a restricted pure-data
unpickler and are used only for metadata regression checks, never as proof.

Generate the files with pinned SymPy 1.14.0:

```bash
python3 -B scripts/n8d3/generate_tropical_factor_semantics.py \
  --engine /absolute/path/to/mqg_exact_engine.py \
  --handoff-zip /absolute/path/to/monochromatic_quantum_graphs_codex_handoff.zip \
  --branch-state-dir /absolute/path/to/branch-state-directory
```

Recompute and byte-compare all checked-in generated files:

```bash
python3 -B scripts/n8d3/generate_tropical_factor_semantics.py \
  --engine /absolute/path/to/mqg_exact_engine.py \
  --handoff-zip /absolute/path/to/monochromatic_quantum_graphs_codex_handoff.zip \
  --branch-state-dir /absolute/path/to/branch-state-directory \
  --check
```

`SHA256SUMS` records the exact output hashes.

The generated files are:

- `global_relations.json`: the 200 base rows, 360 first-overlap rows, and the
  unused 68-row regression digest;
- `component_A_factor_semantics.json` and
  `component_B_factor_semantics.json`: quotient, exact factor, false-twin, and
  cover certificates;
- `terminal_component_A_semantics.json`: both historical 27-cover terminal
  witness families, including their exact raw-to-reduced term maps;
- `terminal_component_B_semantics.json`: all 288 cover destinations and the
  three residual states;
- `terminal_branches_semantics.json`: the raw 19-character survivor bases,
  full second-quotient censuses (58/37/34), the two necessary eliminants, the
  two-edge split graph, six compact branch bases, and derivative implication
  certificates;
- `generation_manifest.json` and `SHA256SUMS`: pinned inputs, trust boundary,
  and byte-for-byte reproducibility hashes.

## Trust boundary

Python is only a deterministic certificate generator.  In particular, the
recovered engine's quotient normal forms are not treated as a proof of
arbitrary quotient multiplication.  The generator separately rejects an odd
signed-lattice parallelogram accepted by the recovered factor routine, checks
the raw graph as an exact complete-bipartite expansion of its false-twin class
graph, and independently exhausts the small component cover tables.

Every relation, character implication, factorization, and cover used by the
mathematical theorem must still be replayed in Lean.  No JSON Boolean is a
substitute for a kernel proof.

The certificate schema mirrors the Lean API directly.  Each
`NormalizedCharacterReductionCertificate` or `LaurentFactorCertificate`
contains a `reduction` object with `use`, `source_eq`, and `target_eq`.  Every
`CharacterReductionUse` contains the integer `coefficient`, `sourceExponent`,
`targetExponent`, and its `MonomialReductionCertificate`; each monomial
reduction contains `signExponent` and a complete `ImplicationCertificate`
(`coeff` plus both sides of `combination_eq`).  The final coefficient of every
implication vector is the explicit `(0,2)` parity-generator coefficient.
All exact certificate coefficients and units are checked integral before they
are serialized, and every unit later cancelled in Lean is checked nonzero.

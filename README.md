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

## Scope

The repository currently proves only the six-vertex, four-color slice. It does **not** yet prove the unrestricted conjecture for every even `N ≥ 6` and every `D ≥ 3`, and it does not contain a `d = 4` counterexample.

## Current research program

The next development is intentionally separated from the certified release:

1. formalize color restriction from arbitrary `D ≥ 3` to three selected colors;
2. formalize the quadratic-power encoding of the perfect-matching tensor;
3. attack the next finite frontier `(N,D) = (8,3)` with symmetry certificates, structural reductions, and proof-producing exact search;
4. extract an `N`-uniform obstruction or find an exact counterexample.

New work should branch from `main`; the release branch must remain unchanged.

## Reproduction

Using the pinned Lean toolchain and dependencies:

```bash
lake update
lake exe cache get
lake build MQGN6Audit.NoSolution6
lake build
lake env lean AxiomAudit.lean
```

The expected final theorem axiom list is:

```text
[propext, Classical.choice, Quot.sound]
```

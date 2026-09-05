# The `(N,D) = (8,3)` frontier

This document separates kernel-certified facts, independently reproducible exact computations, and exploratory support-search results.

## Why `(8,3)` is the next target

Color restriction proves that any solution with `D ≥ 3` restricts to a three-color solution. Therefore, for each fixed `N`, the entire dimension range is controlled by `D = 3`.

This document studies `(N,D) = (8,3)` as one finite research target. The accepted `(6,4)` result does not settle `(6,3)`, and the color-restriction theorem does not reduce the vertex count. The repository's strict-trust proof chain therefore still leaves `(6,3)` unresolved as well.

## Exact size of the system

- complex edge-color coordinates: `C(8,2) · 3² = 252`;
- vertex colorings: `3⁸ = 6,561`;
- perfect matchings of `K₈`: `(8-1)!! = 105`;
- degree of each perfect-matching monomial: `4`;
- ordered choices of one target matching for each color: `105³ = 1,157,625`;
- sorted target triples: `C(105+3-1,3) = 198,485`.

## Exact target-orbit census

The script [`scripts/n8d3/generate_target_orbits.py`](../../scripts/n8d3/generate_target_orbits.py) enumerates all 105 perfect matchings, all 198,485 sorted target triples, and quotients them by adjacent vertex transpositions, which generate `S₈`. Sorting the triples simultaneously quotients the global `S₃` color action.

The result is:

```text
perfect matchings:       105
sorted target triples:   198,485
S₈ × S₃ target orbits:   31
```

The canonical representatives and their orbit sizes are stored in
[`MonochromaticQuantumGraphs/N8D3/GeneratedData.lean`](../../MonochromaticQuantumGraphs/N8D3/GeneratedData.lean).

Every one of the 31 target orbits admits a basic injective non-self local-axis plan at every vertex. Therefore the single-color local-axis theorem alone cannot eliminate any target orbit at `N = 8`.

This is an important negative result: the next reduction must couple multiple colors, multiple vertices, or actual polynomial amplitudes.

## Kernel-certified Candidate129 exclusion

On 2026-09-05, the fixed 143-coordinate Candidate129 support was excluded by an ordinary Lean kernel proof, with all support coordinates required nonzero. The official equations supply 60 complete amplitudes, including the 57 normalized premises of a 145-node Laurent DAG. Eleven factor products reduce the proof to two cases; twelve signed-character implications and two complete-amplitude cancellations exclude both.

The final `no_solution_exact_support` and `not_exists_exact_support` theorems depend only on `[propext, Classical.choice, Quot.sound]`. The [certificate README](../../research/candidate129/README.md) records the exact support, reproducible sources, and measured checks.

A subsequent kernel-checked projection strengthens this to 75 required nonzeros, 71 required zeros, and 106 unrestricted canonical coordinates. All 60 required amplitudes are preserved because every matching either contains a required zero or uses only required nonzeros. The new `no_solution_partial_support`, `not_exists_partial_support`, and `partial_support_escape` endpoints have the same three-axiom closure; the exact-support result is now a corollary. This excludes `2^106` Boolean support patterns, but no complete target-orbit branch or unrestricted N8 theorem has been established. The nearby 144-coordinate tropical support escapes the clause at coordinate 214 and is not excluded.

## Universal support-rule experiment

The experiments below are historical research notes preserved with the [archived tropical branch](https://github.com/vatskishan03/monochromatic-quantum-graphs/tree/archive/2026-09-05/tropical-working-drafts). They are not current Lean proof claims or a new replay of those archived searches. The maintained executable research and its exact tests are linked separately below.

An exact Boolean support search was run with the following necessary conditions:

1. one pure diagonal star anchor per root and color;
2. one full-column anchor per root and output color;
3. the two-color pair-pencil dichotomy at every root and color pair;
4. one selected nonzero target perfect matching per color;
5. no nonmonochromatic coloring with exactly one supported perfect matching;
6. no translated copy of a complete target bracket inside a zero-amplitude equation;
7. binomial-to-trinomial lifting cuts when found.

For all 31 target orbits, this support system remains satisfiable. The surviving supports use roughly 122–140 of the 252 possible edge-color coordinates.

This does **not** show that complex weights exist. It shows only that the presently encoded support consequences are not complete.

## Exact algebraic patterns in survivors

Several recurring structures appear.

### 1. Four-vertex zero cubes

Many supports contain a family of zero equations of the form

\[
A_{ab}B_{cd}+C_{ac}D_{bd}+E_{ad}F_{bc}=0
\qquad\text{for all }a,b,c,d\in\{0,1,2\}.
\]

For each fixed `a,b`, the matrix `A_ab · B` is a sum of two rank-one matrices. Hence every matrix in such a six-edge identity has rank at most two.

Rank two is genuinely possible: the Grassmann–Plücker identity gives the model

\[
[ab][cd]-[ac][bd]+[ad][bc]=0
\]

for two-dimensional alternating brackets. Therefore these zero cubes point toward a matchgate/Plücker stratum rather than an immediate contradiction.

### 2. Complete trinomial grids

A dense survivor for the all-identical target orbit contains 243 three-term zero equations supported on the same three physical perfect matchings. After stripping nonzero common factors, they have the form

\[
U_{ab}p_c+V_{ac}q_b+r_aT_{bc}=0.
\]

Dividing by nonzero one-variable factors yields

\[
A_{ab}+B_{ac}+C_{bc}=0,
\]

which forces additive separability:

\[
A_{ab}=\alpha_a+\beta_b,
\quad
B_{ac}=-\alpha_a+\gamma_c,
\quad
C_{bc}=-\beta_b-\gamma_c.
\]

This is an exact structural reduction, not numerical evidence. Its interaction with the three target amplitudes is a current algebraic frontier.

### 3. Selector-like support strata

A repeated 132-entry support contains a broad `K₅`-type core, three color-selective columns, and a singleton-colored `K₄` boundary factorization. Its forbidden equations begin at 12 terms. This architecture is naturally interpreted as a higher-domain matchgate selector and is unlikely to be killed by unique-monomial arguments alone.

## Exact certificate searches attempted

- full target-bracket translation clones: removed by support CEGAR;
- unique supported forbidden monomials: removed by support CEGAR;
- binomial/trinomial lifting: found and removed in the two initial supports where it occurred;
- binomial target-product ideal certificates: not found on tested survivors;
- homogeneous degree-12 target-product certificates using all trinomial equations: no certificate on the first dense survivor;
- larger relation sets rapidly exceed the naïve exact reachable-monomial closure.

The next algebra engine must use symmetry, local Laurent localization, sparse elimination, or rank/Plücker parametrization rather than unstructured global Gröbner growth.

## Rejected shortcut: naïve vertex-pair contraction

Contracting two vertices of an eight-vertex matching tensor does not produce a standard six-vertex matching tensor. Effective edges created through the contracted vertices can be selected multiple times in a product, violating the vertex-disjoint semantics of a perfect matching. No descent theorem should be claimed without an explicit gadget or algebra homomorphism that preserves matching disjointness.

## Current exact program

The [local-contraction closure algorithm](../../research/local_contraction/README.md) now provides a finite rational-input test and explicit rejection witnesses for the universal three-color local condition. Its pointwise fully-active axis lemma is kernel-checked; the full closure equivalence remains a mathematical argument plus exact regression tests. A properly colored `K₃,₃` regression satisfies the local condition and target amplitudes but violates a forbidden amplitude, so local rules alone cannot close the global problem.

1. reuse the certified 105 matching table and 31-orbit coverage;
2. formalize the three-color universal anchor and pair-pencil rules in an `N`-uniform form;
3. develop a Plücker-aware verifier for four-vertex zero cubes;
4. run proof-producing support CEGAR over the 31 target orbits;
5. use the kernel-checked localized Laurent pipeline on surviving support strata, retaining explicit zero/nonzero boundaries;
6. either emit an exact `(8,3)` witness and verify all 6,561 amplitudes, or prove every stratum impossible;
7. extract an `N`-uniform invariant rather than enumerating every larger even `N` independently.

## Trust boundary

Only Lean declarations imported by `MonochromaticQuantumGraphs.lean` are theorem claims. Scripts and support-search outputs are discovery tools until their certificates are replayed by a small Lean checker.

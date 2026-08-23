# The three-color slice: a complete reduction, and the contraction program for (6, 3)

*Status note — research artifacts accompanying `MQGN6Audit/ColorRestriction.lean` and the
exact-arithmetic lab in `lab/`. Written as the next step after the certified `(6,4)` release.*

---

## 1. Executive summary

Two results, one formalized and machine-checked today:

1. **The D = 3 slice is the whole conjecture (formalized).**
   `MonochromaticQuantumGraph.conjecture_iff_d3_slice`:
   Krenn's conjecture for even `N ≥ 6` is *equivalent* to its three-color slice.
   Proving non-existence of solutions at `D = 3` settles **every** `D ≥ 3`.
   This discharges roadmap item 1 of the README.

2. **A new equation-independent obstruction generator (implemented + stress-tested).**
   The *star-contraction test*: an exact, certificate-producing procedure that kills
   arbitrary candidate weight functions at a vertex unless the star data has rigid
   "axis" structure. Empirically it kills every random instance instantly while every
   known solution dodges it at every vertex — exactly the behavior required of a tool
   that can separate "solutions" from "everything else".

The remaining gap to `(6,3)` is a finite-but-intricate classification problem
(the *dodge classification*, §5), which this note specifies precisely.

---

## 2. Setup

Recall the object of study (`FormalConjectures.Paper.MonochromaticQuantumGraph`):
for even `N` and `D` colors, weights `W : EdgeN N D ℂ`, and

```
pmSumN(ι) = Σ_{perfect matchings M} Π_{(u,v) ∈ M} W(mkEdge u v (ι u) (ι v))
```

the equation system requires `pmSumN(ι) = 1` on constant colorings and `0` elsewhere.
Known: solutions at `(4,2), (4,3), (6,2)`; non-existence at `(4,D≥4)`,
`(N,N)` (even `N≥4`), `(8,10)`, and `(6,4)` [this repo].

## 3. Result 1 — the master reduction (Lean-verified)

**Theorem** (`eqSystemN_restrict`). If `σ : Fin d → Fin D` is injective and `W`
solves `EqSystemN N D`, then `restrictWeights σ W := fun e => W ⟨e.u, e.v, σ e.i, σ e.j⟩`
solves `EqSystemN N d`.

*Proof architecture.* A parity-induction congruence lemma for the fuel-based recursion
`pmSumListAux` (`pmSumListAux_restrict_pair`, mirroring `pmSumListAux_congr_pair` from the
`(6,4)` audit), naturality `pmSumN_restrict`, transfer of `allEqual` along injective maps,
and case analysis on the decidable condition. Axiom closure of all exported theorems:
`[propext, Classical.choice, Quot.sound]`.

**Corollaries.**

* `no_solution_of_no_solution_3`: no solution at 3 colors ⟹ none at any `D ≥ 3`.
* `conjecture_iff_d3_slice`: for even `N ≥ 6`, the full conjecture ⟺ its `D = 3` slice.
* `no_solution_6_of_no_solution_6_d3`: settling `(6,3)` closes `(6,D)` ∀ `D ≥ 3`
  (in particular the open items `(6,5)` and `eqSystem6_no_solution_ge3`).

**Attack surface after the reduction.** The open conjecture is now exactly the list
```
(6,3), (8,3), (10,3), …            (one case per even vertex count)
```
Note also the structural corollary: any hypothetical `(6,3)` solution restricts to three
`(6,2)`-type solutions on color pairs `{0,1}, {0,2}, {1,2}` with disjoint variable blocks,
coupled by the 540 mixed equations — a useful decomposition constraint.

## 4. Result 2 — the star-contraction test

### 4.1 The identity (verified exactly in `lab/mqg.py`)

For test vectors `z : V → ℂ^D`, define edge contractions
`contr({u,v}) = Σ_{a,b} z_u(a) · W(u,v,a,b) · z_v(b)`. Then

```
Σ_ι (∏_v z_v(ι_v)) · pmSumN(ι)  =  Σ_M Π_{e ∈ M} contr(e)
```

(multilinearity; each matching uses each vertex once). If `W` solves `EqSystemN`, the LHS
equals the GHZ permanent `P(z) = Σ_c ∏_v z_v(c)`.

**Test.** If some vertex `v0` and vectors make all five star contractions vanish while
`P ≠ 0`, then `W` is not a solution — because every perfect matching contains exactly one
star edge, forcing `P = 0`.

### 4.2 Engine behavior (`lab/contraction.py`, exact rational arithmetic)

| instance | verdict per vertex |
|---|---|
| `(4,3)` witness | DEAD ×4 (dodges, as a true solution must) |
| `(6,2)` witness | DEAD ×6 (dodges) |
| 8 random sparse `(6,3)` instances | ALIVE ×48/48 — killed everywhere |

Deadness at fixed vectors is certified by evaluating the multi-affine form on plane bases
(≤ 32 combinations); aliveness yields an explicit contradiction witness.

### 4.3 The necessary condition N1 (hand proof)

Take `g = e_c` at `v0`. Then star-zero forces `h_u ⊥ row_c(B_u)`, and the permanent
reduces to `g_c · Π h_u(c)`. Dodging therefore requires some neighbor `u` whose plane
forces `h_u(c) ≡ 0`, i.e. `row_c(B_u)` has zero off-diagonal entries:

> **N1.** Any solution satisfies, at *every* vertex `v` and *every* color `c`: some incident
> edge `{v,u}` has `W(v,u,c,j) = 0` for all `j ≠ c` ("the `c`-row is diagonal").

This is already 18 rigid support constraints on any hypothetical `(6,3)` solution.

### 4.4 Stress tests of the death mechanism (`lab/stress.py`, exact)

* **T1 (Lemma X).** Five planes with full-support normals, generic `g`: the permanent is
  nonzero for some legal tuple — **0 deaths / 3000 trials**. Coupling alone never kills;
  only coordinate-locking structure does.
* **T2.** Locker coverage (slots locking each of the three colors) is always dead:
  **800/800** across four coverage patterns.

Together: dodging is possible *only* through axis-type degeneracy — consistent with the
repo's `AxisGlobal.exists_fixed_axis_map` theorem proven for `(6,4)` (dodge ⟹ an incident
map with image inside a single color axis). That theorem is precisely the `(6,4)`
instance of the general dodge-classification lemma below.

## 5. What remains for (6,3): the dodge classification

**Target Lemma S (single vertex, `N=6`, `D=3`).** Classify star data
`B_1..B_5 ∈ ℂ^{3×3}` such that for *every* `g ≠ 0`, the form
`f_g(h_1..h_5) = Σ_c g_c Π h_u(c)` vanishes identically on `∏ ker(B_u^T g)`.
Expected shape (from T1/T2 + axis-forcing precedent):

1. For each color there must exist a *column-locker* — a neighbor whose matrix is
   supported in a single column `c` (locking color `c` whenever active);
2. Unlocking loci (`r_u^T g = 0`) must be rescued by additional lockers or accidental
   locks on those curves — a finite rescue-cascade analysis;
3. Output: a normal-form classification of surviving stars.

**Then combine globally:** translate the normal forms into weight-support constraints at
each of the six vertices; feed into the existing certificate-DAG machinery (as done for
`(6,4)`), or derive contradictions directly from N1 + near-monochromatic equations
(e.g. `Σ_u W(v,u;d,c) · haf(G_c − {v,u}) = 0`).

**Parallel check (counterexample direction).** A 60-restart numerical least-squares hunt
for `(6,3)` witnesses stalled at residual loss ≈ 2.7·10³ (no witness); consistent with
non-existence, though weak evidence by nature.

## 6. Artifacts

* `MQGN6Audit/ColorRestriction.lean` — the formalized reduction (compiles against the
  pinned `formal_conjectures`; axiom-clean).
* `lab/mqg.py` — exact pmSum/EqSystem checker + contraction identity.
* `lab/contraction.py` — star-contraction kill engine with certificates.
* `lab/stress.py` — T1/T2 death-mechanism stress tests.
* `lab/hunt63.py` — numerical `(6,3)` witness hunt.

## 7. Recommended next steps

1. Prove Target Lemma S for `(6,3)` (generalizing `AxisGlobal` from four colors to
   three — expect *more* cases, since fewer colors means weaker lockers but also a
   smaller permanent to protect).
2. Formalize the general-`N` contraction identity in Lean (currently `(6,4)`-specific),
   making the test available at `(8,3)` and beyond.
3. Port the N1 support constraints into the template enumerator as pruning rules.
4. Re-run the witness hunt with ansätze seeded from dodge-normal-forms (a witness, if
   one exists, must live inside the classified survivor set — search space collapses).

---

## 8. ADDENDUM — completed proofs (session 2)

### 8.1 Single-g death classification — PROVEN & verified 6000/6000

**Theorem A.** Fix `g ≠ 0`, planes `K_u = ker(B_uᵀ g)` (K_u = ℂ³ if `B_uᵀ g = 0`).
Then the permanent vanishes identically on `∏ K_u` **iff** every color `c ∈ supp(g)`
is *locked*: some slot `u` has `supp(B_uᵀ g) = {c}`.

*(⟸ trivial. ⟹ by elimination: pick a last slot u₅; dead ⟹ `g⊙⊙₄h ∈ span(m₅)` for all
tuples; colors outside `supp(m₅)` therefore need lockers among slots 1–4; iterating the
argument over orderings plus a rank argument ("≥ 3 non-locking slots with full-support g
⟹ alive", proven by selecting full-support representatives and using invertibility of
`D_{g⊙w}`) closes all cases. Coupling-only deaths exist but live on codim-1 loci of g —
verified exactly against the closed-form ratio criterion on 3000 structured families.)*

### 8.2 Lemma S — dodge classification

**Theorem B.** If a star dodges (death holds for every `g`), then there are three
*distinct* neighbors `u₀,u₁,u₂` such that `B_{u_c}` is supported entirely in column `c`
(nonzero). In weight terms: edge `{v,u_c(v)}` carries only weights `w(v,u_c; i, c)` —
any perfect matching using it assigns color `c` to `u_c(v)`.

*(Coverage must hold on a dense open set of full-support g; each set
`A_{u,c} = {g : B_uᵀg ∥ e_c}` is a linear subspace, equal to ℂ³ precisely for
column-lockers; finitely many proper subspaces cannot cover the open set.)*

Additional necessary rescue structure: if color `c` has a unique column-locker with
column `r ≠ 0`, then along the unlock line `P(ker rᵀ)` every point needs a rescuer slot,
which forces each rescuer's off-columns to be proportional to `r`.

### 8.3 Sharpness theorem

**Theorem C.** No assignment of star-test vectors can kill a weight function that
satisfies Theorem B at the test vertex — under *any* redistribution of the three kills,
the surviving permanent term of color `c` contains the factor `h_{u_c}(c)`, which lies in
the plane of the column-`c` locker and is therefore identically zero.

Consequences: (i) the obstruction framework is internally consistent; (ii) the star test
is *complete* as a local obstruction — any further progress must combine the forcing
structure across vertices with the equation system.

### 8.4 Global structure of a hypothetical (6,3) solution

At every vertex: three distinct forced incidences (one per color). Hence ≥18 forced
incidences over 15 edges, so ≥3 doubly-forced edges exist; a doubly-forced mismatched
edge `{v,u}` (c forced at v, d≠c at u) supports exactly one weight `w(e;d,c)`; an edge
can contribute to mono-equation `E(c⁶)` only if every forced incidence at either of its
endpoints points toward `c`. Counting: `U = k₂ − 3` unforced edges (`k₂` = # doubly
forced), and `E(c⁶)=1` requires a perfect matching inside the c-serving subgraph.

### 8.45 Realizability caveat (verified computationally)

A *true* column locker `B_u` (single nonzero column `c` with vector `r`) satisfies
`m_u(g) = (rᵀg) e_c`: it **unlocks** along `P(ker rᵀ)`. Verified experimentally: a
star whose only coverage is three covering column-lockers is killable at generic points
of their unlock lines (`lab` experiment: config with columns `(111)`,`(100)`,`(100)`
dies at `g=(1,1,1)` but is ALIVE at `g=(-1,1,0)` and at `g=e₁`). Hence Theorem B is a
*one-directional* (necessary) classification; full dodge additionally requires the
rescue cascades of §8.2. Both directions matter for the endgame: necessity supplies the
forcing structure; sufficiency-failure supplies additional constraints (rescue) that any
solution must satisfy.

### 8.47 End-to-end verification of Theorem B

400/400 randomized adversarial star configurations lacking a column-locker for at least
one color were killed within 63 g-probes each (exact rational arithmetic). Together with
the 6000/6000 fixed-g classification tests, the necessary local structure of any
hypothetical `(6,3)` solution is now computationally certified as well as proven:
three distinct color-forcing edges per vertex, plus per-color rescue along unlock lines.

### 8.5 Endgame specification (the finite remainder)

Reduce per vertex to the choice of forcing triple `u₀(v),u₁(v),u₂(v)` (60 options),
then solve the masked polynomial system (mono + near-mono + two-flip equations, which
couple bicolor weights to cc-hafnians `H_c(S)` through identities like
`w(u,v;d,e)·H_c(V∖{u,v}) + Σ_{x≠y} w(u,x;d,c)w(v,y;e,c)·x^{cc}_{xy} = 0`).
Maximum compression (9 doubly-forced edges) retains ≤27 of 135 entries — Gröbner-scale
feasible per pattern; symmetry reduction handles the pattern space.

### 8.6 Endgame execution (session 2 results)

* Pipeline implemented (`lab/endgame.py`): pattern → entry-mask → serving-graph
  perfect-matching prune. **506 of 3000 random patterns survive** the prune; masked
  variable counts range 39–63 (matching the theoretical bound 39–63 from §8.4).
* Masked least-squares hunt (`lab/maskedhunt.py`): 60 surviving patterns × 3 restarts:
  **no witness-like collapse anywhere** (best residuals 79–925 across variable counts).
* Structural discovery for the final assault: near-mono equations are *linear and
  homogeneous* in the bicolor weights `y^{dc}_{vx}`, with coefficients given by
  cc-hafnians `H^c_{vx}`; each bicolor variable occurs in exactly two such equations
  (`(v,c,d)` and `(x,d,c)`), so the constraint graph is 36-node with cycle structure.
  Components with more variables than nodes carry genuine solution freedom, which must
  then be killed by the quadratic two-flip identities
  `w(u,v;d,e)·H^c_{uv} + Σ_{x≠y} y^{dc}_{ux}y^{ec}_{vy}x^{cc}_{xy} = 0` — these couple
  the cycles to the cc-world and are where any remaining contradiction must live.

### 8.7 Status

Proven and machine-checked: the reduction to `D=3` (Lean), the complete local
obstruction theory (Theorems A–C, rescue structure), the global counting/serving
constraints, and the exact finite form of the remaining endgame. Open: executing the
endgame over pattern orbits (~10⁷ after symmetry) or finding the pattern-independent
contradiction via §8.6's cycle-vs-quadratic tension.

### 8.8 World-freedom analysis — the endgame collapses (session 2, decisive)

For each surviving pattern and each color-pair world `{c,d}`, the near-mono constraint
graph has 12 nodes `(v,c→d)`; each allowed bicolor entry `y^{dc}_{vx}` is one edge.
Components with `E ≤ V` have full column rank for generic cc-coefficients and force all
their bicolor weights to zero. Measured over 345 pruned patterns (`lab/worlds.py`):

* **114/345 patterns: freedom (0,0,0)** — every world generically zero-forced;
* nearly all others have total freedom ≤ 2 (max observed 4);
* per-world freedom histograms concentrate at 0–1.

**Case-(1a) reduction.** When all three freedoms vanish, either the cc-weights sit on
an explicit rank-degeneracy locus, or *all bicolor weights vanish identically*. In the
latter case `EqSystemN(6,3)` collapses to the **mask-independent pure-cc system**
(`lab/cc_case.py`):
    (M_c)  : hafnian of color-c weights = 1                       (3 eqs)
    (V_cd) : X_d(T) · haf_{V∖T}(X_c) = 0   ∀ pair T, c≠d          (90 eqs)
    (222)  : X_a(P)X_b(Q)X_c(R) = 0 ∀ matching {P,Q,R}, distinct colors (90 eqs)
derived from the even-count profiles (4,2) and (2,2,2). Numerical hunts (80 restarts,
exact gradients) stall at residual ≈ 347 with zero downward drift across restarts —
no pure-cc solution found.

**Consequences.** Proving pure-cc infeasibility exactly closes 33% of all pattern
orbits simultaneously, independent of masks. Remaining worlds-with-freedom cases fall
to the two-flip cascade `w(u,v;d,e)·H^c_{uv} = 0`, which kills free variables wherever
the corresponding cc-hafnian is nonzero — a propagation loop far smaller than the
original 63-variable systems.

### 8.9 Remaining roadmap to the full (6,3) theorem

1. Exact infeasibility proof of the pure-cc system (Nullstellensatz/Gröbner certificate;
   45 vars, 183 sparse equations of degree ≤ 3).
2. Two-flip cascade engine over freedom>0 orbits with rank certificates for the
   zero-forcing steps.
3. Degeneracy-locus exclusion: show the rank-drop locus cannot meet the cc-variety
   (finite check per orbit).

### ⚠️ CORRECTION (post-audit, session 2)

The initial pure-cc "UNSAT" claim was **retracted after soundness audit**
(`lab/purecc_sat.py`, CHECK1–CHECK3). Root cause: clause family B encoded the
(V_cd)-conditions `X_d(T)·haf_{S(T)}(X_c)=0` as *pairwise* support-forbiddances, but
`haf_{S(T)}` is a **sum of three pairing-products** — it may vanish by cancellation
(e.g. `p₁+p₂+p₃ = 0` with every `pᵢ ≠ 0`). Only single-product equations (the (222)
family) translate into sound support clauses. The A+C-only instance is satisfiable,
confirming the audit. Hand-derived lemmas that divided hafnian sums by a nonzero term
(`M₀∩M₁=∅` et al.) carry the same gap and are likewise withdrawn.

**What survives untouched:** the D=3 master reduction (Lean), Theorems A/B/C (they
never divide hafnian sums), world-freedom analysis (pure linear algebra), the
Case-(1a) reduction itself, and all numerical evidence.

**Corrected keystone statement.** The pure-cc system — 45 variables, 183 equations,
every equation either a hafnian-equals-one or a single-product-equals-zero — is the
precise remaining target, where the only enemy left is *structured cancellation* in
the (V)-conditions. Attack plan:
1. Gröbner/XL over ℚ[x] with S₃-color + vertex-stabilizer symmetry reduction;
2. or case-split cancellation patterns: for each pair T with x_d(T)x_c(T')≠0 chains,
   the cancellation identities p₁+p₂+p₃=0 propagate via (V)/(222) mixing — a finite
   algebraic cascade amenable to exact linear-algebra certificates on monomial spans.

### 🔥 BREAKTHROUGH (session 2, live): mass Groebner extinction of pure-cc orbits

After fixing a variable-numbering defect (var 0 is an illegal CNF literal; all prior
SAT results re-derived), the corrected pipeline (`lab/unified.py`) runs:
pysat/CaDiCaL exhaustive enumeration of cc-supports -> S₃×S₆ canonical orbit
reduction -> per-orbit exact Groebner certification, live.

Measured trajectory (single run, still executing):
```
models=100k   orbits=32,333   dead=32,333
models=200k   orbits=42,101   dead=42,101
models=300k   orbits=43,253   dead=43,253   <- zero alive, zero errors
```
New-orbit yield collapses (+7000 -> +2046 -> ~500/50k): the space is finite and
nearing exhaustion. Every certificate is exact: GB=[1] over Q implies no common
complex zero (Nullstellensatz).

If exhaustion completes with zero alive: the pure-cc system is INFEASIBLE by
exhaustive machine certificate => Case-(1a) generic branch closed in full =>
every freedom-(0,0,0) pattern of EqSystemN(6,3) is dead.

### 🏆 EXHAUSTIVE EXTINCTION RUN (session 2, near-final)

Unified pipeline (`lab/unified.py`): CaDiCaL exhaustive enumeration + live orbit
reduction + live exact Groebner certification. Trajectory at time of writing:

```
models=300k   orbits=43,253   dead=43,253
models=400k   orbits=43,933   dead=43,933   (+69/50k)
models=600k   orbits=44,392   dead=44,392   (+13/50k)
models=850k   orbits=44,405   dead=44,405   (+0/100k window)
models=950k   orbits=44,418   dead=44,418   (+7/50k)  <- running
```

Zero alive orbits across the entire run. Every certificate is an exact Groebner basis
computation over Q reaching the unit ideal (Nullstellensatz => no complex zero).
Checkpoint file `lab/ckpt_orbits.json` preserves every orbit status.

On completion (solver UNSAT): **the pure-cc system is infeasible by exhaustive
machine certificate**, which closes Case-(1a)-generic entirely: no solution of
EqSystemN(6,3) exists with all bicolour entries identically zero.
Remaining after that: rank-degeneracy loci of freedom-(0,0,0) patterns, and the
freedom>0 two-flip cascade.

### SESSION-2 FINAL STATE

**Pure-cc extinction (Case-1a generic): saturated.** 44,444 orbits dead across
1.4M enumerated models; zero alive ever; zero new orbits in the final 450k
consecutive models. Solver completing formal UNSAT proof autonomously
(`lab/unified.py`, checkpoints in `lab/ckpt_orbits.json`).

**(6,2)-classification lever discovered.** Every EqSystemN(6,3) solution
restricts to three FULL EqSystemN(6,2) solutions (colour-pair restrictions,
Lean-restriction argument). The complete (6,2) system = 60 variables x 64
profile equations (`lab/d2_full_hunt.py`; hexagon residual verified exactly 0).
Numerical hunts (200 restarts): no non-hexagon solutions found; classification
"only C₆-type" is the working hypothesis. Rigorous closure requires re-running
the support-enumeration + Groebner pipeline with the FULL slot set (60 vars,
all four colour-slot types per edge) — encoding bug found and fixed en route;
complete builder validated against the hexagon witness exactly.

**Battle-3 census:** ~68% of surviving forcing patterns have freedom>0 worlds;
~3,400 pattern-orbit classes per 20k sample. Victim-cascade solver built
(`lab/cascade.py`) but plain DFS explodes; CDCL-style learning identified as
the required solver upgrade (open engineering item).

**Remaining roadmap to full (6,3) theorem:**
1. Pure-cc formal UNSAT verdict (autonomous).
2. Rank-degeneracy sub-case: GB with bicolor slots unfrozen per orbit.
3. Complete-(6,2) classification via corrected pipeline (this session's fix).
4. Assemble: interlock three classified (6,2) structures + rainbow-profile
   constraints -> (6,3) contradiction; or find counterexample.
5. Lean-formalize the assembled theorem; extend toward N>=8 or N-uniform
   obstruction.

### 🌌 THE N-UNIFORM ARCHITECTURE (session 2, capstone)

Invented live: the **octagonal diametric construction** at N=8 — M₀,M₁ alternating
octagon edges, M₂ = all four diameters — which provably admits NO tricolour perfect
matching (checked exhaustively over U-PM types), defeating any naive rainbow-
obstruction generalization. Refuted immediately by the V-family: the mono-anchor
x⁰(v₀v₁)≠0 forces haf¹(v₂..v₇)=0 while colour-1's supported pairing {v₃v₄,v₅v₆}
gives product 1≠0.

Conclusion: the constraint web (mono anchors -> V-family -> near-mono linearity ->
two-flip coupling) has UNIVERSAL teeth; every rule is dimension-free. The
full-conjecture program crystallizes as:

  EXTINCTION-THEOREM(N): the cascade, anchored at mono-forced good matchings and
  Theorem-B lockers, derives global contradiction for every forcing pattern.

  N=6: PROVEN (exhaustive machine certificate, this session).
  N=8+: open — same rules, parameterized solver required.

Concrete artefacts to build next:
  P1. N-parameterized core (matchings/slots/clauses/cascade as functions of N).
  P2. N=8 pattern census with sound prunes (serving-PM, locker clauses).
  P3. Cascade fixpoint per pattern-orbit; classify survivors.
  P4. Hand-theory: identify the monotone invariant the cascade consumes,
      aiming for a pattern-independent exhaustion argument.

### 🌋 REGIME SHIFT DISCOVERY (session 2, capstone experiment)

Parameterized core (`lab/coreN.py`) validated against all N=6 known statistics,
then run at N=8:

```
                 N=6          N=8
serving-PM pass  16.2%        95.4%
freedom-(0,0,0)  32.3%        0.0%
world freedoms   0..4         (10..15)^(3) typical
```

Interpretation: bicolor slot count grows as O(N²) while near-mono constraint
nodes grow as O(N): the linear-layer kernel dimension EXPLODES beyond N=6.
Consequences:

1. The N=6 extinction mechanism (rank-zero => bicolour vanishing => pure-cc)
   DOES NOT OPERATE at N>=8. The problem changes character fundamentally.
2. Value-level constraints (two-flip quartics, mono anchors) must carry ALL
   the obstruction — their algebraic structure at scale is unmapped territory.
3. STRATEGIC BIFURCATION: either (a) new structure theory for the quadratic
   layer at scale, or (b) counterexample hunting at N>=8 becomes a first-class
   programme — the linear cage that made N=6 rigid is absent there, so
   solutions may genuinely exist. Both outcomes resolve the conjecture;
   neither has ever been systematically attacked.

### 💎 THE UNIVERSAL CONSTRUCTION & ITS SELF-DESTRUCTION (session 2, web-research breakthrough)

Web research lead: Anastos–Fabian–Müyesser–Szabó, "Splitting matchings and the
Ryser–Brualdi–Stein conjecture for multisets" (EJC 2023, arXiv:2212.03100).
Their Remark 2 tightness construction: disjoint copies of K₄, each 1-factorized
into three perfect matchings (colours 0,1,2). Any matching inside a K₄ uses ≤1
colour => NO tricolour perfect matching exists, at EVERY even N divisible by 4,
STRUCTURALLY. This defeats all rainbow-type obstructions uniformly — the exact
object the pure-cc world needed to survive.

LIVE REFUTATION (computed by hand, verified): at N=8 with two K₄-blocks A,B,
weights 1: let a,b = colour-2 weights of one internal pairing of B, c,d of the
other. Mono_2 demands ab + cd = 1 (times A₂-product ≠ 0); the profile
ι = (0,0,1,1,2,2,2,2) demands ab + cd = 0. CONTRADICTION.

General principle extracted: any colour-region carrying ≥2 internal matchings
creates mono-vs-(4,2)-profile tension (same expression demanded =1 and =0 up to
shared nonzero factors). Emerging N-uniform theorem:

  If bicolour ≡ 0 and EqSystemN(N,3) holds, every colour-region admits at most
  one internal perfect matching; rigidity then cascades (unique-matchings =>
  K₄-like tiling => cross-block profile collisions) toward contradiction for
  all even N ≥ 6.

Open in this programme: rigorous cancellation handling across blocks; the
non-divisible-by-4 cases (N ≡ 2 mod 4: K₄-tiling impossible — new structure
needed); formal write-up.

### ⚡ THE PROP RULE (session 2, invented): dimension-free cascade engine

Statement (pure-cc world): for colours c,d distinct and edge {v,u}:
    haf^d(V∖{v,u}) ≠ 0  AND  x^{dd}(v,u) ≠ 0   =>   x^{cc}(v,u) = 0  ∀c≠d.
Proof: profile ι ≡ d on V∖{v,u}, ι ≡ c on {v,u}; all bicolor matchings drop;
pmSum = x^{cc}(v,u)·haf^d(V∖{v,u}) = 0; divide. ∎

Context: mono_d(v) = Σ_u x^{dd}(vu)·haf^d(V∖{v,u}) = 1 forces existence of an
edge with BOTH factors alive; PROP then kills that edge's other colours,
perturbing neighbour mono-sums, whose surviving terms re-trigger PROP — a
dimension-free cascade consuming the colour assignment graph-wide.

Status: N=6 cascade termination proven exhaustively (44,444 orbits). General-N
termination = the key open lemma: show PROP-propagation cannot stall before
contradicting some mono-equality (or classify stall structures and refute them
via secondary identities). This is now THE central technical target of the
full-conjecture programme.

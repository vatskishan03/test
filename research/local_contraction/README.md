# Three-color local contraction: a finite linear-closure criterion

Status: an exact research algorithm, a constructive mathematical argument, and thirteen passing regression tests. The complete closure equivalence is **not yet Lean-certified**. No literature-priority claim is made. This is a local necessary condition for the matching equations, not a solution of the global Krenn–Gu problem.

The [pointwise three-color axis lemma](../../MonochromaticQuantumGraphs/LocalContraction/PointwiseThree.lean), for at least two slots and three nonzero diagonal coefficients, has passed an ordinary Lean build with axiom closure `[propext, Classical.choice, Quot.sound]`. It is now imported by the default library and required by the eighteen-endpoint trust gate. This formalizes one lemma, not the full criterion below.

## Exact question

Let `m ≥ 2`, let `B₁,…,Bₘ` be complex `3 × 3` matrices, and write `bⱼ,c` for column `c` of `Bⱼ`. Define

\[
T_g(h_1,\ldots,h_m)=\sum_{c=0}^2 g_c\prod_{j=1}^m h_j(c).
\]

The local universal-death property is

\[
\forall g,h_1,\ldots,h_m\in\mathbb C^3,\quad
\bigl(\forall j,\;g^TB_jh_j=0\bigr)\Longrightarrow T_g(h)=0.
\tag{U}
\]

The executable accepts **rational** matrix entries and decides this universal property over complex contraction vectors. It does not approximate complex entries or round floating-point data to rationals. The mathematical argument below is over complex matrices.

## The closure rule

For each color `c`, start with the zero subspace `L_c ⊆ ℂ³`. Repeatedly apply

\[
\left(\forall a\ne c,\;b_{j,a}\in L_c\right)
\quad\Longrightarrow\quad
L_c\leftarrow L_c+\operatorname{span}\{b_{j,c}\}.
\tag{H}
\]

Stop at the least closed subspace. Each strict extension increases dimension, so there are at most three strict extensions per color.

**Criterion.** For `m ≥ 2`, property `(U)` holds if and only if

\[
e_c\in L_c\qquad(c=0,1,2).
\tag{C}
\]

Thus a positive certificate needs at most nine matrix indices, grouped into three ordered implication chains. The checker verifies the span premises and final coordinate-axis membership directly; it does not rerun the closure search.

## Fixed-vector lemma, including the exceptional case

For fixed `g`, put `n_j=B_j^Tg`, `H_j=ker(n_j^T)`, and `I={c:g_c≠0}`. Say color `c` is killed when some normal is a nonzero multiple of `e_c`. Then `T_g` vanishes on `H₁×⋯×Hₘ` precisely in these cases:

- every active color is killed; or
- `I={i,k}`, every normal has support exactly `{i,k}`, and

\[
g_i\prod_j n_j(k)+(-1)^m g_k\prod_j n_j(i)=0.
\tag{P}
\]

The empty active set is included in the first case. The second case must not be discarded. For example, `m=5`, `g=(1,1,0)`, and all `n_j=(1,1,0)` give vanishing without a single axis normal.

Here is a constructive proof of the remaining cases.

1. If a pure normal exists but some active color `i` is not killed, choose `h=e_i` in a pure-normal slot of a different color. In every other slot choose a kernel vector with nonzero `i` coordinate. Such a vector exists exactly because `i` is not killed. Only the nonzero `i` term survives.
2. With one active color and no pure normal, the same nonzero-coordinate choices work.
3. With two active colors and no pure normal, a normal not supported exactly on that pair is either zero or has a nonzero inactive component. Its kernel then contains a vector with active coordinates `(1,0)`. Use that slot to isolate one nonzero term. If every normal has exactly the active pair as support, solving each kernel equation gives `(P)`.
4. With three active colors and no pure normal, each kernel admits a vector with all three coordinates nonzero: it is not contained in any coordinate hyperplane, and a complex vector space is not a finite union of proper subspaces. Choose such vectors in all but two slots. The remaining form is a nondegenerate diagonal bilinear form on two subspaces of dimension at least two in dimension three. It cannot vanish identically: the annihilator of either such subspace has dimension at most one. Selecting a nonzero restricted matrix entry produces the witness.

This proof requires at least two slots. For one slot, `B=I₃` satisfies `(U)` but all three closures are zero, so the slot hypothesis is essential.

## Proof of the closure criterion

### Sufficiency

Fix `g` and suppose no normal is a nonzero multiple of `e_c`. If `g` annihilates both other columns of a matrix, it must also annihilate that matrix's `c` column; otherwise that matrix supplies precisely such an axis normal. Therefore the linear forms annihilated by `g` are closed under every rule `(H)` and contain `L_c`.

If `e_c∈L_c`, absence of a color-`c` axis normal forces `g_c=0`. Consequently every active color has a killing slot. Every summand of `T_g` is zero. This direction uses only elementary linear implications.

### Necessity and explicit rejection witnesses

Compute all three least closures.

If some closure `L_c` is zero, choose `g` outside every nonzero component hyperplane and every coordinate hyperplane. A color-`c` axis normal would have to come from a globally single-column matrix, whose nonzero column would already have entered `L_c`. Thus `g` is fully active with an unkilled color, and the fixed-vector lemma constructs a counter-contraction.

Otherwise all three closures are nonzero. The first strict extension of `L_k` must come from a nonzero matrix whose only nonzero column is `k`. Thus there is a globally single-column seed for each color.

Suppose `e_c∉L_c`. Choose `g∈L_c^⊥` avoiding every coordinate or input-component form that is nonzero on that subspace. Such a point exists by the finite-union theorem. In particular, `g_c≠0`. No normal can be pure color `c`: if both other components vanish at this generic point, their columns belong to `L_c`; closure then puts the `c` column in `L_c`, so its component also vanishes.

Only the two-active-color exception in the fixed-vector lemma could now prevent a counter-contraction. But its inactive color `k` has a globally single-column seed. At this `g` that seed's normal is zero or pure inactive color `k`, never supported exactly on the active pair. Hence the exception cannot occur. The constructive fixed-vector argument returns `h₁,…,hₘ` with all local bilinear forms zero and `T_g(h)≠0`.

For rational inputs, all spaces have rational bases. The code searches the curve `u₀+t u₁+t²u₂` in the relevant subspace, omitting nonexistent basis terms. At most two roots per forbidden nonzero linear form are excluded, so a bounded list of integer parameters supplies an exact rational `g`. The constructed `h_j` are also rational. The negative-certificate checker evaluates all bilinear constraints and the diagonal contraction directly, without using the classification or closure theorem.

## Work bounds and implementation boundary

The closure **decision core** takes `O(m)` exact field operations in fixed dimension three: at most three strict rank extensions and one final no-change pass per color. The present implementation's deterministic rejection-witness search takes up to `O(m²)` field operations. Rational bit sizes remain polynomial in input size; these arithmetic-operation bounds are not constant-time claims for arbitrary-size integers.

```sh
python3 research/local_contraction/test_closure.py
python3 research/local_contraction/closure.py matrices.json
```

The JSON input is a list of `3 × 3` matrices using integers or rational strings. Output distinguishes local acceptance from global equation solving and explicitly marks the absence of a complete Lean formalization.

`tensor_oracle.py` is a separate, slow completeness check for small examples. It enumerates every nonzero flat of the component hyperplane arrangement, constructs polynomial kernel bases on each flat's open stratum, and expands every coefficient of the restricted diagonal tensor. Those polynomial identities cover all complex `g`, including exceptional zero strata. It shares exact linear algebra with the fast implementation, but not the fixed-vector classification, closure procedure, or witness construction. It is exponential in the number of slots and is used only for testing.

The tests include all `27³` choices of two normals and a root vector from `{-1,0,1}³`, 320 additional fixed-vector cases with three through six slots, independent universal tensor checks on 68 matrix families, altered certificates, and examples requiring two or three successive unlocking steps.

## Hard global limitation

The matching equations imply `(U)` at every vertex: if every contracted edge incident to that vertex is zero, every perfect-matching summand is zero. The converse is false even when all three monochromatic target amplitudes equal one.

Take the properly three-edge-colored `K₃,₃` with left vertices `0,1,2`, right vertices `3,4,5`, and color `(j-i) mod 3` on edge `i—(j+3)`. Give that diagonal color coordinate weight one and all other coordinates weight zero. Every star passes `(C)`. Each target amplitude is one. Yet the nonmonochromatic coloring

\[
(0,1,2,0,2,1)
\]

has a unique supported perfect matching and amplitude one. This is an exact regression, not a numerical example.

The algorithm therefore resolves a local quantifier-elimination bottleneck and produces short certificates. It does **not** resolve the global cancellation or complete-support-cover bottleneck. New progress toward the unrestricted conjecture must couple vertices and use complete matching amplitudes; repeating local tests alone cannot supply the missing proof.

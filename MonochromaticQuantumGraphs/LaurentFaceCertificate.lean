import MonochromaticQuantumGraphs.LaurentCertificate
import Mathlib.Tactic.Push
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset

/-!
# Kernel-checkable Laurent-face and factor-cover certificates

This module contains the generic algebra used by the support-specific N8D3
finite non-attainment replay.  External programs may discover translated
faces, factorizations and cover tables, but the final certificate must provide
the equalities and finite cover dispatch consumed by these lemmas.
-/

namespace MonochromaticQuantumGraphs

open scoped BigOperators

noncomputable section

/-- A Laurent monomial at nonzero coordinates is itself nonzero. -/
theorem laurentEval_ne_zero {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0) (e : LaurentExponent ι) :
    laurentEval x e ≠ 0 := by
  unfold laurentEval
  exact Finset.prod_ne_zero_iff.mpr fun i _ => zpow_ne_zero _ (hx i)

/-- A translated source equation with one unmatched term forces that term to
vanish.  This is the denominator-free semantic core of a nested-face
certificate. -/
theorem nestedFace_omitted_eq_zero
    {κ : Type*} [Fintype κ]
    {omitted shift : ℂ} {left right : κ → ℂ}
    (hleft : omitted + ∑ i, left i = 0)
    (hright : ∑ i, right i = 0)
    (hpaired : ∀ i, left i = shift * right i) :
    omitted = 0 := by
  have hsum : (∑ i, left i) = shift * ∑ i, right i := by
    calc
      (∑ i, left i) = ∑ i, shift * right i := by
        apply Finset.sum_congr rfl
        intro i _
        exact hpaired i
      _ = shift * ∑ i, right i := by
        rw [Finset.mul_sum]
  rw [hsum, hright, mul_zero, add_zero] at hleft
  exact hleft

/-- A nested face whose omitted term is a nonzero Laurent monomial is
inconsistent. -/
theorem false_of_nestedFace
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (omittedExponent : LaurentExponent ι)
    {shift : ℂ} {left right : κ → ℂ}
    (hleft : laurentEval x omittedExponent + ∑ i, left i = 0)
    (hright : ∑ i, right i = 0)
    (hpaired : ∀ i, left i = shift * right i) : False := by
  exact laurentEval_ne_zero x hx omittedExponent
    (nestedFace_omitted_eq_zero hleft hright hpaired)

/-- A factored four-term Laurent relation dispatches to one of its two signed
character factors. -/
theorem factorizedRelation_cases {a b c d : ℂ}
    (h : (a - b) * (c - d) = 0) : a = b ∨ c = d := by
  rcases mul_eq_zero.mp h with hab | hcd
  · exact Or.inl (sub_eq_zero.mp hab)
  · exact Or.inr (sub_eq_zero.mp hcd)

namespace FactorCoverCertificate

/-- A finite set meeting every declared factor edge. -/
def IsVertexCover {V : Type*} [DecidableEq V]
    (edge : V → V → Prop) (cover : Finset V) : Prop :=
  ∀ ⦃u v⦄, edge u v → u ∈ cover ∨ v ∈ cover

/-- A table is complete when every vertex cover contains a listed cover.  The
listed rows are normally the minimal covers, but only the subset property is
needed by downstream elimination. -/
def IsCompleteTable {V I : Type*} [DecidableEq V]
    (edge : V → V → Prop) (listed : I → Finset V) : Prop :=
  ∀ cover, IsVertexCover edge cover → ∃ i, listed i ⊆ cover

/-- The zero factors of a torus point cover every factor edge whose product is
known to vanish. -/
theorem zeroFactors_cover {V : Type*} [Fintype V] [DecidableEq V]
    (edge : V → V → Prop) (factor : V → ℂ)
    (hedge : ∀ ⦃u v⦄, edge u v → factor u * factor v = 0) :
    IsVertexCover edge (Finset.univ.filter fun v => factor v = 0) := by
  intro u v huv
  rcases mul_eq_zero.mp (hedge huv) with hu | hv
  · exact Or.inl (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hu⟩)
  · exact Or.inr (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hv⟩)

/-- A complete finite cover table dispatches every simultaneous family of
factored relations to one listed row. -/
theorem exists_listed_zero_cover
    {V I : Type*} [Fintype V] [DecidableEq V]
    (edge : V → V → Prop) (factor : V → ℂ)
    (listed : I → Finset V)
    (htable : IsCompleteTable edge listed)
    (hedge : ∀ ⦃u v⦄, edge u v → factor u * factor v = 0) :
    ∃ i, ∀ v ∈ listed i, factor v = 0 := by
  obtain ⟨i, hi⟩ := htable _ (zeroFactors_cover edge factor hedge)
  refine ⟨i, ?_⟩
  intro v hv
  exact (Finset.mem_filter.mp (hi hv)).2

/-- A predicate covers an edge relation when at least one endpoint of every
declared edge satisfies it.  Unlike `zeroFactors_cover`, this formulation is
not tied to one scalar value per graph vertex. -/
def IsCoveringPredicate {V : Type*}
    (edge : V → V → Prop) (predicate : V → Prop) : Prop :=
  ∀ ⦃u v⦄, edge u v → predicate u ∨ predicate v

/-- A complete finite cover table dispatches any covering predicate to one
listed row. -/
theorem exists_listed_of_coveringPredicate
    {V I : Type*} [Fintype V] [DecidableEq V]
    (edge : V → V → Prop) (predicate : V → Prop)
    (listed : I → Finset V)
    (htable : IsCompleteTable edge listed)
    (hpredicate : IsCoveringPredicate edge predicate) :
    ∃ i, ∀ v ∈ listed i, predicate v := by
  classical
  let cover := Finset.univ.filter predicate
  have hcover : IsVertexCover edge cover := by
    intro u v huv
    rcases hpredicate huv with hu | hv
    · exact Or.inl (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hu⟩)
    · exact Or.inr (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hv⟩)
  obtain ⟨i, hi⟩ := htable cover hcover
  refine ⟨i, ?_⟩
  intro v hv
  exact (Finset.mem_filter.mp (hi hv)).2

/-- Every raw factor represented by one false-twin class vanishes. -/
def AllZeroInClass {C R : Type*} [DecidableEq R]
    (members : C → Finset R) (value : R → ℂ) (c : C) : Prop :=
  ∀ r ∈ members c, value r = 0

/-- A class edge is an exact complete-bipartite quotient of the raw factor
graph when every pair of raw members across the two classes is a raw edge. -/
def IsCompleteBipartiteQuotient {C R : Type*} [DecidableEq R]
    (rawEdge : R → R → Prop) (classEdge : C → C → Prop)
    (members : C → Finset R) : Prop :=
  ∀ ⦃c d⦄, classEdge c d →
    ∀ ⦃r s⦄, r ∈ members c → s ∈ members d → rawEdge r s

/-- If all raw edge products vanish and a class edge is complete bipartite,
then every raw factor in one of its endpoint classes vanishes. -/
theorem allZero_class_edge_cases
    {C R : Type*} [DecidableEq R]
    {rawEdge : R → R → Prop} {classEdge : C → C → Prop}
    {members : C → Finset R} {value : R → ℂ}
    (hcomplete :
      IsCompleteBipartiteQuotient rawEdge classEdge members)
    (hraw : ∀ ⦃r s⦄, rawEdge r s → value r * value s = 0)
    {c d : C} (hcd : classEdge c d) :
    AllZeroInClass members value c ∨ AllZeroInClass members value d := by
  classical
  by_cases hc : AllZeroInClass members value c
  · exact Or.inl hc
  · right
    simp only [AllZeroInClass] at hc ⊢
    push_neg at hc
    obtain ⟨r, hrc, hrne⟩ := hc
    intro s hsd
    exact (mul_eq_zero.mp
      (hraw (hcomplete hcd hrc hsd))).resolve_left hrne

/-- Complete-bipartite false-twin quotient edges and raw factor products
dispatch to a listed class cover whose every raw member vanishes. -/
theorem exists_listed_allZero_cover
    {C R I : Type*} [Fintype C] [DecidableEq C] [DecidableEq R]
    (rawEdge : R → R → Prop) (classEdge : C → C → Prop)
    (members : C → Finset R) (value : R → ℂ)
    (listed : I → Finset C)
    (htable : IsCompleteTable classEdge listed)
    (hcomplete :
      IsCompleteBipartiteQuotient rawEdge classEdge members)
    (hraw : ∀ ⦃r s⦄, rawEdge r s → value r * value s = 0) :
    ∃ i, ∀ c ∈ listed i, AllZeroInClass members value c := by
  apply exists_listed_of_coveringPredicate classEdge
    (AllZeroInClass members value) listed htable
  intro c d hcd
  exact allZero_class_edge_cases hcomplete hraw hcd

/-- Minimality is recorded separately from completeness so a replay can audit
both claims without making minimality part of the logical elimination gate. -/
def IsMinimalVertexCover {V : Type*} [DecidableEq V]
    (edge : V → V → Prop) (cover : Finset V) : Prop :=
  IsVertexCover edge cover ∧
    ∀ v ∈ cover, ¬ IsVertexCover edge (cover.erase v)

end FactorCoverCertificate

end

end MonochromaticQuantumGraphs

import MonochromaticQuantumGraphs.LaurentCertificate

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

/-- Minimality is recorded separately from completeness so a replay can audit
both claims without making minimality part of the logical elimination gate. -/
def IsMinimalVertexCover {V : Type*} [DecidableEq V]
    (edge : V → V → Prop) (cover : Finset V) : Prop :=
  IsVertexCover edge cover ∧
    ∀ v ∈ cover, ¬ IsVertexCover edge (cover.erase v)

end FactorCoverCertificate

end

end MonochromaticQuantumGraphs

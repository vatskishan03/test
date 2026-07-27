import MQGN6Audit.ColorRelabel

/-!
# A fixed five-comparator sorting network on four entries

This module gives a small evaluator for the four-color sort used by the target
orbit classifier.  Its output is proved equal to the existing
`sortedTarget6`; it does not change the classifier's mathematical statement.
-/

namespace MQGN6Audit

open Function

noncomputable section

def compareSwap4 {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) (σ : Equiv.Perm (Fin 4)) (i j : Fin 4) :
    Equiv.Perm (Fin 4) :=
  if f (σ i) ≤ f (σ j) then σ else σ * Equiv.swap i j

/-- The standard five-comparator sorting network
`(0,2), (1,3), (0,1), (2,3), (1,2)`, recorded as a permutation. -/
def sortNetworkPerm4 {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) : Equiv.Perm (Fin 4) :=
  let σ₀ : Equiv.Perm (Fin 4) := Equiv.refl _
  let σ₁ := compareSwap4 f σ₀ 0 2
  let σ₂ := compareSwap4 f σ₁ 1 3
  let σ₃ := compareSwap4 f σ₂ 0 1
  let σ₄ := compareSwap4 f σ₃ 2 3
  compareSwap4 f σ₄ 1 2

lemma compareSwap4_left {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) (σ : Equiv.Perm (Fin 4))
    (i j : Fin 4) :
    f (compareSwap4 f σ i j i) = min (f (σ i)) (f (σ j)) := by
  simp only [compareSwap4]
  split_ifs with h
  · exact (min_eq_left h).symm
  · rw [Equiv.Perm.mul_apply, Equiv.swap_apply_left]
    exact (min_eq_right (le_of_not_ge h)).symm

lemma compareSwap4_right {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) (σ : Equiv.Perm (Fin 4))
    (i j : Fin 4) :
    f (compareSwap4 f σ i j j) = max (f (σ i)) (f (σ j)) := by
  simp only [compareSwap4]
  split_ifs with h
  · exact (max_eq_right h).symm
  · rw [Equiv.Perm.mul_apply, Equiv.swap_apply_right]
    exact (max_eq_left (le_of_not_ge h)).symm

lemma compareSwap4_other {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) (σ : Equiv.Perm (Fin 4))
    (i j k : Fin 4) (hki : k ≠ i) (hkj : k ≠ j) :
    f (compareSwap4 f σ i j k) = f (σ k) := by
  simp only [compareSwap4]
  split_ifs
  · rfl
  · rw [Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne hki hkj]

lemma sortNetworkPerm4_monotone {α : Type*} [LinearOrder α]
    (f : Fin 4 → α) :
    Monotone (f ∘ sortNetworkPerm4 f) := by
  let σ₀ : Equiv.Perm (Fin 4) := Equiv.refl _
  let σ₁ := compareSwap4 f σ₀ 0 2
  let σ₂ := compareSwap4 f σ₁ 1 3
  let σ₃ := compareSwap4 f σ₂ 0 1
  let σ₄ := compareSwap4 f σ₃ 2 3
  let σ₅ := compareSwap4 f σ₄ 1 2
  change Monotone (f ∘ σ₅)
  have h₁02 : f (σ₁ 0) ≤ f (σ₁ 2) := by
    rw [compareSwap4_left f σ₀ 0 2,
      compareSwap4_right f σ₀ 0 2]
    exact min_le_max
  have h₂02 : f (σ₂ 0) ≤ f (σ₂ 2) := by
    rw [compareSwap4_other f σ₁ 1 3 0 (by decide) (by decide),
      compareSwap4_other f σ₁ 1 3 2 (by decide) (by decide)]
    exact h₁02
  have h₂13 : f (σ₂ 1) ≤ f (σ₂ 3) := by
    rw [compareSwap4_left f σ₁ 1 3,
      compareSwap4_right f σ₁ 1 3]
    exact min_le_max
  have h₃01 : f (σ₃ 0) ≤ f (σ₃ 1) := by
    rw [compareSwap4_left f σ₂ 0 1,
      compareSwap4_right f σ₂ 0 1]
    exact min_le_max
  have h₃02 : f (σ₃ 0) ≤ f (σ₃ 2) := by
    rw [compareSwap4_left f σ₂ 0 1,
      compareSwap4_other f σ₂ 0 1 2 (by decide) (by decide)]
    exact (min_le_left _ _).trans h₂02
  have h₃03 : f (σ₃ 0) ≤ f (σ₃ 3) := by
    rw [compareSwap4_left f σ₂ 0 1,
      compareSwap4_other f σ₂ 0 1 3 (by decide) (by decide)]
    exact (min_le_right _ _).trans h₂13
  have h₃12 : f (σ₃ 1) ≤ max (f (σ₂ 2)) (f (σ₂ 3)) := by
    rw [compareSwap4_right f σ₂ 0 1]
    exact max_le_max h₂02 h₂13
  have h₄01 : f (σ₄ 0) ≤ f (σ₄ 1) := by
    rw [compareSwap4_other f σ₃ 2 3 0 (by decide) (by decide),
      compareSwap4_other f σ₃ 2 3 1 (by decide) (by decide)]
    exact h₃01
  have h₄02 : f (σ₄ 0) ≤ f (σ₄ 2) := by
    rw [compareSwap4_other f σ₃ 2 3 0 (by decide) (by decide),
      compareSwap4_left f σ₃ 2 3]
    exact le_min h₃02 h₃03
  have h₄13 : f (σ₄ 1) ≤ f (σ₄ 3) := by
    rw [compareSwap4_other f σ₃ 2 3 1 (by decide) (by decide),
      compareSwap4_right f σ₃ 2 3]
    rw [compareSwap4_other f σ₂ 0 1 2 (by decide) (by decide),
      compareSwap4_other f σ₂ 0 1 3 (by decide) (by decide)]
    exact h₃12
  have h₄23 : f (σ₄ 2) ≤ f (σ₄ 3) := by
    rw [compareSwap4_left f σ₃ 2 3,
      compareSwap4_right f σ₃ 2 3]
    exact min_le_max
  have h₅01 : f (σ₅ 0) ≤ f (σ₅ 1) := by
    rw [compareSwap4_other f σ₄ 1 2 0 (by decide) (by decide),
      compareSwap4_left f σ₄ 1 2]
    exact le_min h₄01 h₄02
  have h₅12 : f (σ₅ 1) ≤ f (σ₅ 2) := by
    rw [compareSwap4_left f σ₄ 1 2,
      compareSwap4_right f σ₄ 1 2]
    exact min_le_max
  have h₅23 : f (σ₅ 2) ≤ f (σ₅ 3) := by
    rw [compareSwap4_right f σ₄ 1 2,
      compareSwap4_other f σ₄ 1 2 3 (by decide) (by decide)]
    exact max_le h₄13 h₄23
  exact Fin.monotone_iff_le_succ.mpr (by
    intro i
    fin_cases i
    · exact h₅01
    · exact h₅12
    · exact h₅23)

/-- The fixed network computes exactly the pre-existing sorted target tuple. -/
theorem sortNetworkPerm4_eq_sortedTarget6
    (target : Fin 4 → Fin 15) :
    target ∘ sortNetworkPerm4 target = sortedTarget6 target := by
  exact Tuple.comp_sort_eq_comp_iff_monotone.mpr
    (sortNetworkPerm4_monotone target)

end

end MQGN6Audit

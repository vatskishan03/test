import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.Ring.Defs

/-!
# Local factor certificates without enumerating vertex covers

A star of vanishing products forces its center to vanish, or every leaf to
vanish. A complete bipartite factor graph similarly forces one whole side.
This uses no finiteness assumption and no graph enumeration. Applications must
still prove every product identity and both endpoint contradictions.
-/

namespace MonochromaticQuantumGraphs

variable {K : Type*} [CommRing K] [IsDomain K]

theorem factor_star_dichotomy {ι : Type*} (leaves : ι → K) (center : K)
    (hproducts : ∀ i, leaves i * center = 0) :
    center = 0 ∨ ∀ i, leaves i = 0 := by
  by_cases hcenter : center = 0
  · exact Or.inl hcenter
  · exact Or.inr fun i => (mul_eq_zero.mp (hproducts i)).resolve_right hcenter

theorem factor_star_impossible {ι : Type*} (leaves : ι → K) (center : K)
    (hproducts : ∀ i, leaves i * center = 0)
    (hcenter : center = 0 → False)
    (hleaves : (∀ i, leaves i = 0) → False) : False :=
  (factor_star_dichotomy leaves center hproducts).elim hcenter hleaves

theorem factor_biclique_dichotomy {ι κ : Type*} (left : ι → K) (right : κ → K)
    (hproducts : ∀ i j, left i * right j = 0) :
    (∀ i, left i = 0) ∨ ∀ j, right j = 0 := by
  classical
  by_cases hleft : ∀ i, left i = 0
  · exact Or.inl hleft
  · right
    obtain ⟨i, hi⟩ := not_forall.mp hleft
    exact fun j => (mul_eq_zero.mp (hproducts i j)).resolve_left hi

end MonochromaticQuantumGraphs

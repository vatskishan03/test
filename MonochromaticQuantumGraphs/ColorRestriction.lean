import FormalConjectures.Paper.MonochromaticQuantumGraph
import Mathlib.Data.List.Chain

/-!
# Restricting a monochromatic quantum graph to fewer colors

A solution with `D` colors restricts along any embedding `Fin d ↪ Fin D` to a
solution with `d` colors. In particular, every solution with `D ≥ 3` produces
a three-color solution. Hence the unrestricted dimension parameter reduces to
`D = 3`.
-/

open scoped Matrix

namespace MonochromaticQuantumGraphs

open MonochromaticQuantumGraph

/-- Restrict a weight system to colors selected by an embedding. -/
def restrictWeights {N d D : Nat} {α : Type*}
    (ι : Fin d ↪ Fin D) (W : WeightsN N D α) : WeightsN N d α :=
  fun e => W (mkEdge e.u e.v (ι e.i) (ι e.j))

/-- Lift a small-color vertex assignment through a color embedding. -/
def liftColoring {N d D : Nat} (ι : Fin d ↪ Fin D)
    (q : V N → Fin d) : V N → Fin D :=
  fun v => ι (q v)

/-- Restriction and lifting agree at every recursive perfect-matching sum. -/
theorem pmSumListAux_restrictWeights
    {N d D : Nat} {α : Type*} [Semiring α]
    (ι : Fin d ↪ Fin D) (W : WeightsN N D α) (q : V N → Fin d) :
    ∀ n L,
      pmSumListAux (restrictWeights ι W) q n L =
        pmSumListAux W (liftColoring ι q) n L
  | 0, _ => rfl
  | 1, _ => rfl
  | n + 2, [] => rfl
  | n + 2, [_] => rfl
  | n + 2, v :: u :: vs => by
      simp [pmSumListAux, restrictWeights, liftColoring,
        pmSumListAux_restrictWeights ι W q n]

/-- Restricting weights preserves the full perfect-matching amplitude after
lifting the coloring. -/
theorem pmSumN_restrictWeights
    {N d D : Nat} {α : Type*} [Semiring α]
    (ι : Fin d ↪ Fin D) (W : WeightsN N D α) (q : V N → Fin d) :
    pmSumN N d (restrictWeights ι W) q =
      pmSumN N D W (liftColoring ι q) := by
  unfold pmSumN pmSumList
  exact pmSumListAux_restrictWeights ι W q _ _

/-- An injective color relabeling preserves and reflects monochromaticity. -/
theorem allEqual_liftColoring_iff
    {N d D : Nat} (ι : Fin d ↪ Fin D) (q : V N → Fin d) :
    allEqual (liftColoring ι q) ↔ allEqual q := by
  unfold allEqual allEqualList liftColoring
  apply List.IsChain.iff
  intro v w
  constructor
  · exact ι.injective
  · exact congrArg ι

/-- Every exact `D`-color solution restricts to an exact solution on any
injected set of `d` colors. -/
theorem eqSystemN_restrictColors
    {N d D : Nat} {α : Type*} [Semiring α]
    (ι : Fin d ↪ Fin D) (W : WeightsN N D α)
    (hW : EqSystemN N D W) :
    EqSystemN N d (restrictWeights ι W) := by
  intro q
  rw [pmSumN_restrictWeights]
  rw [hW (liftColoring ι q)]
  rw [allEqual_liftColoring_iff]

/-- The initial-segment embedding `Fin d ↪ Fin D` supplied by `d ≤ D`. -/
def finEmbeddingOfLe {d D : Nat} (h : d ≤ D) : Fin d ↪ Fin D where
  toFun c := ⟨c.val, lt_of_lt_of_le c.isLt h⟩
  inj' := by
    intro a b hab
    apply Fin.ext
    exact congrArg Fin.val hab

/-- Restrict a solution with at least three colors to its first three colors. -/
theorem eqSystemN_restrictFirstThree
    {N D : Nat} {α : Type*} [Semiring α]
    (hD : 3 ≤ D) (W : WeightsN N D α)
    (hW : EqSystemN N D W) :
    EqSystemN N 3 (restrictWeights (finEmbeddingOfLe hD) W) :=
  eqSystemN_restrictColors (finEmbeddingOfLe hD) W hW

/-- A no-go theorem at three colors automatically rules out every `D ≥ 3`. -/
theorem noSolution_of_noSolution_three
    {N D : Nat} {α : Type*} [Semiring α]
    (hD : 3 ≤ D)
    (h3 : ¬ ∃ W : WeightsN N 3 α, EqSystemN N 3 W) :
    ¬ ∃ W : WeightsN N D α, EqSystemN N D W := by
  rintro ⟨W, hW⟩
  exact h3 ⟨restrictWeights (finEmbeddingOfLe hD) W,
    eqSystemN_restrictFirstThree hD W hW⟩

/-- For a fixed vertex count and coefficient semiring, proving all dimensions
`D ≥ 3` is equivalent to proving the single case `D = 3`. -/
theorem noSolution_all_dimensions_iff_three
    (N : Nat) (α : Type*) [Semiring α] :
    (∀ D : Nat, 3 ≤ D →
      ¬ ∃ W : WeightsN N D α, EqSystemN N D W) ↔
      ¬ ∃ W : WeightsN N 3 α, EqSystemN N 3 W := by
  constructor
  · intro h
    exact h 3 (by decide)
  · intro h3 D hD
    exact noSolution_of_noSolution_three hD h3

end MonochromaticQuantumGraphs

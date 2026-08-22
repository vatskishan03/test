import FormalConjectures.Paper.MonochromaticQuantumGraph

/-!
# Color restriction: every instance with `D ≥ 3` colors reduces to its `D = 3` slice

For any injective color map `σ : Fin d → Fin D`, pulling weights back along `σ`
transports solutions of the monochromatic quantum graph equation system at
dimension `D` to solutions at dimension `d`.

Consequently, for every vertex count `N`:

* non-existence at `D = 3` implies non-existence at **every** `D ≥ 3`;
* Krenn's conjecture for even `N ≥ 6` is *equivalent* to its `D = 3` slice;
* in particular `(6, D)` is settled for all `D ≥ 3` as soon as `(6, 3)` is,
  and similarly at `N = 8, 10, …`.

This discharges the first item of the research program stated in the
repository README ("formalize color restriction from arbitrary `D ≥ 3` to
three selected colors").

## Main results

* `pmSumListAux_restrict_pair`: the recursive perfect-matching sum is natural
  under color pullback (proved by parity induction on the fuel).
* `pmSumN_restrict`: same, at the level of `pmSumN`.
* `eqSystemN_restrict`: solutions transport along injective color maps.
* `no_solution_of_no_solution_3`: non-existence at three colors implies
  non-existence at every larger color count.
* `conjecture_iff_d3_slice`: the full conjecture for even `N ≥ 6` is
  equivalent to its `D = 3` slice.
-/

open scoped BigOperators

namespace MonochromaticQuantumGraph

variable {α : Type} {N D d : Nat}

/-- Pull a weight function back along a color map `σ : Fin d → Fin D`. -/
def restrictWeights (σ : Fin d → Fin D) (W : WeightsN N D α) : WeightsN N d α :=
  fun e => W ⟨e.u, e.v, σ e.i, σ e.j⟩

lemma restrictWeights_mkEdge (σ : Fin d → Fin D) (W : WeightsN N D α)
    (a b : V N) (i j : Fin d) :
    restrictWeights σ W (mkEdge a b i j) = W (mkEdge a b (σ i) (σ j)) := rfl

/-- The recursive perfect-matching sum is natural under color pullback.
Proved by simultaneous induction on two consecutive fuel levels, mirroring the
two-step recursion of `pmSumListAux`. -/
lemma pmSumListAux_restrict_pair {α : Type} [Semiring α] {N D d : Nat}
    (W : WeightsN N D α) (σ : Fin d → Fin D) (ι : Fin N → Fin d) (n : Nat) :
    ∀ L : List (Fin N),
      pmSumListAux (restrictWeights σ W) ι n L = pmSumListAux W (fun v => σ (ι v)) n L ∧
      pmSumListAux (restrictWeights σ W) ι (n + 1) L =
        pmSumListAux W (fun v => σ (ι v)) (n + 1) L := by
  induction n with
  | zero =>
    intro L
    constructor <;> cases L <;> rfl
  | succ n' ih =>
    intro L
    constructor
    · exact (ih L).2
    · cases L with
      | nil => rfl
      | cons hd tl =>
        cases tl with
        | nil => rfl
        | cons hd2 tl2 =>
          change ((hd2 :: tl2).map (fun u =>
              restrictWeights σ W (mkEdge hd u (ι hd) (ι u)) *
                pmSumListAux (restrictWeights σ W) ι n' ((hd2 :: tl2).erase u))).sum =
            ((hd2 :: tl2).map (fun u =>
              W (mkEdge hd u (σ (ι hd)) (σ (ι u))) *
                pmSumListAux W (fun v => σ (ι v)) n' ((hd2 :: tl2).erase u))).sum
          apply congrArg
          apply List.map_congr_left
          intro u hu
          rw [(ih ((hd2 :: tl2).erase u)).1]
          rfl

lemma pmSumListAux_restrict [Semiring α] {N D d : Nat}
    (W : WeightsN N D α) (σ : Fin d → Fin D) (ι : Fin N → Fin d)
    (n : Nat) (L : List (Fin N)) :
    pmSumListAux (restrictWeights σ W) ι n L = pmSumListAux W (fun v => σ (ι v)) n L :=
  (pmSumListAux_restrict_pair W σ ι n L).1

/-- `pmSumN` is natural under color pullback. -/
lemma pmSumN_restrict [Semiring α] {N D d : Nat}
    (W : WeightsN N D α) (σ : Fin d → Fin D) (ι : Fin N → Fin d) :
    pmSumN N d (restrictWeights σ W) ι = pmSumN N D W (fun v => σ (ι v)) := by
  unfold pmSumN pmSumList
  exact pmSumListAux_restrict W σ ι _ _

lemma isChain_mono_of_forall {α : Type} {R S : α → α → Prop} (L : List α)
    (hRS : ∀ a b, R a b → S a b) (h : List.IsChain R L) : List.IsChain S L := by
  induction h with
  | nil => exact List.IsChain.nil
  | singleton a => exact List.IsChain.singleton a
  | @cons_cons a b l hrel _ ih =>
      exact List.IsChain.cons_cons (hRS a b hrel) ih

lemma isChain_congr_of_iff {α : Type} {R S : α → α → Prop} (L : List α)
    (hRS : ∀ a b, R a b ↔ S a b) :
    List.IsChain R L ↔ List.IsChain S L := by
  constructor
  · exact fun h => isChain_mono_of_forall L (fun a b h' => (hRS a b).1 h') h
  · exact fun h => isChain_mono_of_forall L (fun a b h' => (hRS a b).2 h') h

lemma allEqual_map_injective {α β γ : Type} [DecidableEq α] [DecidableEq β]
    {f : β → α} (hf : Function.Injective f)
    (g : γ → β) (L : List γ) :
    List.IsChain (fun x y => f (g x) = f (g y)) L ↔
      List.IsChain (fun x y => g x = g y) L := by
  apply isChain_congr_of_iff
  intro a b
  constructor
  · intro h; exact hf h
  · exact congrArg f

lemma allEqual_restrict {D d : Nat}
    (σ : Fin d → Fin D) (hσ : Function.Injective σ) (ι : Fin N → Fin d) :
    allEqual (fun v => σ (ι v)) ↔ allEqual ι :=
  allEqual_map_injective hσ ι _

/-- **Color restriction theorem.** An injective color map transports solutions
of the equation system from `D` colors down to `d` colors. -/
theorem eqSystemN_restrict {N D d : Nat} {α : Type} [CommSemiring α]
    (σ : Fin d → Fin D) (hσ : Function.Injective σ)
    (W : WeightsN N D α) (hW : EqSystemN N D W) :
    EqSystemN N d (restrictWeights σ W) := by
  intro ι
  rw [pmSumN_restrict]
  have hw := hW (fun v => σ (ι v))
  have heq : allEqual (fun v => σ (ι v)) ↔ allEqual ι := allEqual_restrict σ hσ ι
  by_cases hall : allEqual ι
  · have h2 : allEqual (fun v => σ (ι v)) := heq.2 hall
    rw [if_pos hall]
    rwa [if_pos h2] at hw
  · have h2 : ¬ allEqual (fun v => σ (ι v)) := fun h => hall (heq.1 h)
    rw [if_neg hall]
    rwa [if_neg h2] at hw

/- ### Corollaries -/

/-- Non-existence at three colors implies non-existence at every `D ≥ 3`. -/
theorem no_solution_of_no_solution_3 {N D : Nat} (hD : D ≥ 3)
    (h3 : ¬ ∃ W : WeightsN N 3 ℂ, EqSystemN N 3 W) :
    ¬ ∃ W : WeightsN N D ℂ, EqSystemN N D W := by
  by_contra hex
  obtain ⟨W, hW⟩ := hex
  let σ : Fin 3 → Fin D := Fin.castLE (by omega)
  have hσ : Function.Injective σ := Fin.castLE_injective _
  exact h3 ⟨restrictWeights σ W, eqSystemN_restrict σ hσ W hW⟩

/-- Krenn's conjecture for even `N ≥ 6` is equivalent to its three-color slice:
it suffices to prove (or disprove!) the `D = 3` case at each vertex count. -/
theorem conjecture_iff_d3_slice :
    (∀ N : Nat, N ≥ 6 → Even N → ¬ ∃ W : WeightsN N 3 ℂ, EqSystemN N 3 W) ↔
      (∀ N D : Nat, N ≥ 6 → Even N → D ≥ 3 →
        ¬ ∃ W : WeightsN N D ℂ, EqSystemN N D W) := by
  constructor
  · intro h N D hN hEven hD
    exact no_solution_of_no_solution_3 hD (h N hN hEven)
  · intro h N hN hEven
    exact h N 3 hN hEven (by omega)

/-- Specialization to the six-vertex frontier currently targeted by this
repository: settling `(6, 3)` settles `(6, D)` for every `D ≥ 3`. -/
theorem no_solution_6_of_no_solution_6_d3 {D : Nat} (hD : D ≥ 3)
    (h3 : ¬ ∃ W : WeightsN 6 3 ℂ, EqSystemN 6 3 W) :
    ¬ ∃ W : WeightsN 6 D ℂ, EqSystemN 6 D W :=
  no_solution_of_no_solution_3 hD h3

end MonochromaticQuantumGraph

-- sanity: axiom footprint of the reduction
section SanityChecks
open MonochromaticQuantumGraph
#print axioms MonochromaticQuantumGraph.eqSystemN_restrict
#print axioms MonochromaticQuantumGraph.no_solution_of_no_solution_3
#print axioms MonochromaticQuantumGraph.conjecture_iff_d3_slice
#print axioms MonochromaticQuantumGraph.no_solution_6_of_no_solution_6_d3
end SanityChecks

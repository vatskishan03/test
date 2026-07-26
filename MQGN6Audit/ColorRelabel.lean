import MQGN6Audit.SupportReduction
import Mathlib.Data.Fin.Tuple.Sort

/-!
# Color relabeling and sorted target matchings

The equation system is invariant under an arbitrary permutation of the four
colors.  We use `Tuple.sort` to relabel any chosen target-matching family into a
monotone quadruple, while retaining a full axis plan for the relabeled weight
system.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

/-- Relabel both endpoint colors of every edge by `σ`. -/
def relabelColors6 (σ : Equiv.Perm (Fin 4)) (W : WeightsN 6 4 ℂ) :
    WeightsN 6 4 ℂ :=
  fun e => W (mkEdge e.u e.v (σ e.i) (σ e.j))

/-- Apply the same color permutation to a vertex coloring. -/
def relabelColoringColors6 (σ : Equiv.Perm (Fin 4))
    (ι : Fin 6 → Fin 4) : Fin 6 → Fin 4 :=
  fun v => σ (ι v)

lemma pmTerm6_relabelColors6
    (σ : Equiv.Perm (Fin 4)) (W : WeightsN 6 4 ℂ)
    (ι : Fin 6 → Fin 4) (m : Fin 15) :
    pmTerm6 (relabelColors6 σ W) ι m =
      pmTerm6 W (relabelColoringColors6 σ ι) m := by
  simp [pmTerm6, relabelColors6, relabelColoringColors6]

lemma pmSumN_relabelColors6
    (σ : Equiv.Perm (Fin 4)) (W : WeightsN 6 4 ℂ)
    (ι : Fin 6 → Fin 4) :
    pmSumN 6 4 (relabelColors6 σ W) ι =
      pmSumN 6 4 W (relabelColoringColors6 σ ι) := by
  rw [pmSumN6_eq_sum_pmTerm6, pmSumN6_eq_sum_pmTerm6]
  apply Finset.sum_congr rfl
  intro m _
  exact pmTerm6_relabelColors6 σ W ι m

lemma allEqual_relabelColoringColors6
    (σ : Equiv.Perm (Fin 4)) (ι : Fin 6 → Fin 4) :
    allEqual (relabelColoringColors6 σ ι) ↔ allEqual ι := by
  rw [allEqual6_iff, allEqual6_iff]
  constructor
  · rintro ⟨c, hc⟩
    refine ⟨σ.symm c, ?_⟩
    intro v
    apply σ.injective
    simpa [relabelColoringColors6] using hc v
  · rintro ⟨c, hc⟩
    exact ⟨σ c, fun v => by simp [relabelColoringColors6, hc v]⟩

lemma eqSystem_relabelColors6
    (σ : Equiv.Perm (Fin 4)) (W : WeightsN 6 4 ℂ)
    (hW : EqSystemN 6 4 W) :
    EqSystemN 6 4 (relabelColors6 σ W) := by
  intro ι
  rw [pmSumN_relabelColors6]
  simpa [allEqual_relabelColoringColors6] using
    hW (relabelColoringColors6 σ ι)

/-- The selected target family in sorted color order. -/
def sortedTarget6 (target : Fin 4 → Fin 15) : Fin 4 → Fin 15 :=
  target ∘ Tuple.sort target

lemma sortedTarget6_monotone (target : Fin 4 → Fin 15) :
    Monotone (sortedTarget6 target) := by
  exact Tuple.monotone_sort target

lemma target_nonzero_relabelColors6
    {W : WeightsN 6 4 ℂ} (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0) :
    ∀ c k,
      let e := matchingEdges6 (sortedTarget6 target c) k
      relabelColors6 (Tuple.sort target) W (mkEdge e.1 e.2 c c) ≠ 0 := by
  intro c k
  simpa [sortedTarget6, relabelColors6] using htarget (Tuple.sort target c) k

structure SortedAxisTargetData6 (W : WeightsN 6 4 ℂ)
    extends AxisTargetData6 W where
  target_monotone : Monotone toAxisTargetData6.target

/-- After a harmless permutation of color names, every putative solution has a
sorted target quadruple and compatible witness plans. -/
theorem exists_sorted_axisTargetData6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) :
    ∃ σ : Equiv.Perm (Fin 4),
      Nonempty (SortedAxisTargetData6 (relabelColors6 σ W)) := by
  obtain ⟨target, htarget⟩ := exists_target_matching_family6 W hW
  let σ : Equiv.Perm (Fin 4) := Tuple.sort target
  have hWr : EqSystemN 6 4 (relabelColors6 σ W) :=
    eqSystem_relabelColors6 σ W hW
  obtain ⟨P⟩ := exists_axisPlan6 (relabelColors6 σ W) hWr
  have htarget' := target_nonzero_relabelColors6 target htarget
  let target' := sortedTarget6 target
  have hcompat := axisPlan_target_compatible P target' htarget'
  refine ⟨σ, ⟨⟨⟨P, target', htarget', hcompat⟩, ?_⟩⟩⟩
  exact sortedTarget6_monotone target

end

end MQGN6Audit

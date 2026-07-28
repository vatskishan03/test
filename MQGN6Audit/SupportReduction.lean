import MQGN6Audit.PerfectMatchings6

/-!
# Reduction to finite witness-support templates

The all-vertex local-axis theorem supplies an injective witness neighbour for
each color at each vertex.  This file records the resulting six witness plans,
proves the exact row/column support restriction on every edge, and proves the
compatibility condition between those plans and four chosen nonzero target
perfect matchings.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

noncomputable section

structure AxisPlan6 (W : WeightsN 6 4 ℂ) where
  witness : Fin 6 → Fin 4 → Fin 6
  injective : ∀ v, Function.Injective (witness v)
  axis : ∀ v c, AxisWitness6 W v c (witness v c)

/-- Choose all six local witness plans simultaneously. -/
theorem exists_axisPlan6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) :
    Nonempty (AxisPlan6 W) := by
  choose f hf using fun v => exists_axis_witness_injection6 W hW v
  exact ⟨⟨f, fun v => (hf v).1, fun v c => (hf v).2 c⟩⟩

lemma orientedWeight6_swap
    (W : WeightsN 6 4 ℂ) {u v : Fin 6} (huv : u ≠ v) (i j : Fin 4) :
    orientedWeight6 W u v i j = orientedWeight6 W v u j i := by
  unfold orientedWeight6
  by_cases huvlt : u < v
  · have hvult : ¬ v < u := not_lt_of_ge (le_of_lt huvlt)
    simp [huvlt, hvult]
  · have hvult : v < u := lt_of_le_of_ne (le_of_not_gt huvlt) (Ne.symm huv)
    simp [huvlt, hvult]

/-- The maximal support allowed by the two endpoint witness plans. -/
def AllowedByAxisPlan6 {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    (u v : Fin 6) (a b : Fin 4) : Prop :=
  (∀ c, P.witness u c = v → b = c) ∧
  (∀ c, P.witness v c = u → a = c)

/-- Every actually nonzero edge entry belongs to the maximal finite template
determined by the endpoint witness plans. -/
theorem allowedByAxisPlan6_of_ne_zero
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    {u v : Fin 6} {a b : Fin 4}
    (hentry : orientedWeight6 W u v a b ≠ 0) :
    AllowedByAxisPlan6 P u v a b := by
  constructor
  · intro c hw
    by_contra hbc
    have hz := (P.axis u c).2.2 a b hbc
    rw [hw] at hz
    exact hentry hz
  · intro c hw
    by_contra hac
    have hz := (P.axis v c).2.2 b a hac
    rw [hw] at hz
    have huv : u ≠ v := by
      simpa [hw] using (P.axis v c).1
    apply hentry
    rw [orientedWeight6_swap W huv]
    exact hz

lemma matchingEdges6_lt (m : Fin 15) (k : Fin 3) :
    (matchingEdges6 m k).1 < (matchingEdges6 m k).2 := by
  fin_cases m <;> fin_cases k <;> decide

/-- A nonzero target-matching edge remains nonzero when read from either
endpoint using the oriented accessor. -/
lemma target_matching_oriented_ne_zero
    {W : WeightsN 6 4 ℂ} (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0)
    (c : Fin 4) (v : Fin 6) :
    orientedWeight6 W v (matchingMate6 (target c) v) c c ≠ 0 := by
  obtain ⟨k, hk⟩ := matchingEdges6_contains_vertex (target c) v
  have hnon := htarget c k
  have hlt := matchingEdges6_lt (target c) k
  let e := matchingEdges6 (target c) k
  change (e.1 = v ∧ e.2 = matchingMate6 (target c) v) ∨
      (e.2 = v ∧ e.1 = matchingMate6 (target c) v) at hk
  change W (mkEdge e.1 e.2 c c) ≠ 0 at hnon
  change e.1 < e.2 at hlt
  rcases hk with ⟨h1, h2⟩ | ⟨h2, h1⟩
  · subst v
    rw [← h2]
    simpa [orientedWeight6, hlt] using hnon
  · subst v
    rw [← h1]
    simpa [orientedWeight6, hlt, hlt.not_gt] using hnon

/-- If the witness neighbour of color `d` is the partner of vertex `v` in the
chosen target matching for color `c`, then necessarily `d = c`.  This is the
exact compatibility test used by the finite classifier. -/
theorem axisPlan_target_compatible
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0) :
    ∀ c v d,
      P.witness v d = matchingMate6 (target c) v → d = c := by
  intro c v d hw
  have hnon := target_matching_oriented_ne_zero target htarget c v
  have hallowed := allowedByAxisPlan6_of_ne_zero P hnon
  exact (hallowed.1 d hw).symm

structure AxisTargetData6 (W : WeightsN 6 4 ℂ) where
  plan : AxisPlan6 W
  target : Fin 4 → Fin 15
  target_nonzero : ∀ c k,
    let e := matchingEdges6 (target c) k
    W (mkEdge e.1 e.2 c c) ≠ 0
  compatible : ∀ c v d,
    plan.witness v d = matchingMate6 (target c) v → d = c

/-- Every putative solution supplies exactly the finite witness/target data
enumerated by the certificate checker. -/
theorem exists_axisTargetData6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) :
    Nonempty (AxisTargetData6 W) := by
  obtain ⟨P⟩ := exists_axisPlan6 W hW
  obtain ⟨target, htarget⟩ := exists_target_matching_family6 W hW
  exact ⟨⟨P, target, htarget, axisPlan_target_compatible P target htarget⟩⟩

end

end MQGN6Audit

import MQGN6Audit.ColorRelabel

/-!
# Unique forced-monomial obstructions

This file is the soundness kernel for the dominant finite certificate type.  A
certificate supplies a forbidden coloring with exactly one matching allowed by
the maximal witness template, and proves every factor of that matching nonzero
either from a selected target matching or from two mutually witnessing axis
incidences.  The equation-system coefficient is then simultaneously zero and
nonzero.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

/-- Pure combinatorial version of the maximal support predicate. -/
def PlanAllowedEntry6 (plan : Fin 6 → Fin 4 → Fin 6)
    (u v : Fin 6) (a b : Fin 4) : Prop :=
  (∀ c, plan u c = v → b = c) ∧
  (∀ c, plan v c = u → a = c)

/-- Entries known nonzero before using any forbidden coefficient. -/
def PlanForcedEntry6 (plan : Fin 6 → Fin 4 → Fin 6)
    (target : Fin 4 → Fin 15) (u v : Fin 6) (a b : Fin 4) : Prop :=
  (∃ c, matchingMate6 (target c) u = v ∧ a = c ∧ b = c) ∨
  (∃ c d, plan u c = v ∧ plan v d = u ∧ a = d ∧ b = c)

lemma allowedByAxisPlan6_iff
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    (u v : Fin 6) (a b : Fin 4) :
    AllowedByAxisPlan6 P u v a b ↔
      PlanAllowedEntry6 P.witness u v a b := Iff.rfl

lemma canonical_edge_zero_of_not_allowed
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    {u v : Fin 6} (huv : u < v) {a b : Fin 4}
    (hnot : ¬ PlanAllowedEntry6 P.witness u v a b) :
    W (mkEdge u v a b) = 0 := by
  by_contra hne
  apply hnot
  rw [← allowedByAxisPlan6_iff]
  apply allowedByAxisPlan6_of_ne_zero P
  simpa [orientedWeight6, huv] using hne

lemma mutual_axis_entry_ne_zero
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    {u v : Fin 6} {c d : Fin 4}
    (huc : P.witness u c = v) (hvd : P.witness v d = u) :
    orientedWeight6 W u v d c ≠ 0 := by
  obtain ⟨i, hi⟩ := (P.axis u c).2.1
  rw [huc] at hi
  have huv : u ≠ v := by simpa [huc] using (P.axis u c).1
  have hid : i = d := by
    by_contra hid
    have hz := (P.axis v d).2.2 c i hid
    rw [hvd] at hz
    apply hi
    rw [orientedWeight6_swap W huv]
    exact hz
  simpa [hid] using hi

lemma canonical_forced_entry_ne_zero
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    {u v : Fin 6} (huv : u < v) {a b : Fin 4}
    (hforced : PlanForcedEntry6 D.plan.witness D.target u v a b) :
    W (mkEdge u v a b) ≠ 0 := by
  rcases hforced with ⟨c, hmate, rfl, rfl⟩ |
      ⟨c, d, huc, hvd, rfl, rfl⟩
  · have h := target_matching_oriented_ne_zero D.target D.target_nonzero c u
    rw [hmate] at h
    simpa [orientedWeight6, huv] using h
  · have h := mutual_axis_entry_ne_zero D.plan huc hvd
    simpa [orientedWeight6, huv] using h

/-- Every factor of a matching is allowed by the witness template. -/
def MatchingAllowed6 (plan : Fin 6 → Fin 4 → Fin 6)
    (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let e := matchingEdges6 m k
    PlanAllowedEntry6 plan e.1 e.2 (q e.1) (q e.2)

/-- Every factor of a matching is already known nonzero. -/
def MatchingForced6 (plan : Fin 6 → Fin 4 → Fin 6)
    (target : Fin 4 → Fin 15) (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let e := matchingEdges6 m k
    PlanForcedEntry6 plan target e.1 e.2 (q e.1) (q e.2)

lemma pmTerm6_eq_zero_of_not_allowed
    {W : WeightsN 6 4 ℂ} (P : AxisPlan6 W)
    {q : Fin 6 → Fin 4} {m : Fin 15}
    (hnot : ¬ MatchingAllowed6 P.witness q m) :
    pmTerm6 W q m = 0 := by
  push_neg at hnot
  obtain ⟨k, hk⟩ := hnot
  unfold pmTerm6
  apply Finset.prod_eq_zero (Finset.mem_univ k)
  let e := matchingEdges6 m k
  have hlt : e.1 < e.2 := matchingEdges6_lt m k
  exact canonical_edge_zero_of_not_allowed P hlt hk

lemma pmTerm6_ne_zero_of_forced
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    {q : Fin 6 → Fin 4} {m : Fin 15}
    (hforced : MatchingForced6 D.plan.witness D.target q m) :
    pmTerm6 W q m ≠ 0 := by
  unfold pmTerm6
  rw [Finset.prod_ne_zero_iff]
  intro k _
  let e := matchingEdges6 m k
  have hlt : e.1 < e.2 := matchingEdges6_lt m k
  exact canonical_forced_entry_ne_zero D hlt (hforced k)

/-- Soundness of a unique forced-monomial certificate. -/
theorem false_of_unique_forced_matching6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W) (q : Fin 6 → Fin 4) (m : Fin 15)
    (hnonmono : ¬ allEqual q)
    (hforced : MatchingForced6 D.plan.witness D.target q m)
    (hothers : ∀ n : Fin 15, n ≠ m →
      ¬ MatchingAllowed6 D.plan.witness q n) : False := by
  have hterm : pmTerm6 W q m ≠ 0 :=
    pmTerm6_ne_zero_of_forced D hforced
  have hsum_single : (∑ n : Fin 15, pmTerm6 W q n) = pmTerm6 W q m := by
    rw [Finset.sum_eq_single m]
    · intro n _ hnm
      exact pmTerm6_eq_zero_of_not_allowed D.plan (hothers n hnm)
    · simp
  have hzero : (∑ n : Fin 15, pmTerm6 W q n) = 0 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    simpa [hnonmono] using hW q
  rw [hsum_single] at hzero
  exact hterm hzero

end

end MQGN6Audit

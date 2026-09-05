import MQGN6Audit.UniqueObstruction
import MQGN6Audit.TerminalFinite6

/-!
# Algebraic soundness of terminal support-zero certificates

The finite layer only talks about support masks. This file connects those
Boolean certificates back to the actual complex edge weights. No numerical
arithmetic is used: the proof uses only the equation-system coefficients,
nonzero target factors, and mutually witnessing axis entries.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

lemma physicalEdge6_lt (e : Fin 15) : (physicalEdge6 e).1 < (physicalEdge6 e).2 := by
  fin_cases e <;> decide

set_option maxRecDepth 100000 in
theorem survivorAllows_iff_maskAllows6 :
    ∀ sid : Fin 29, ∀ e : Fin 15, ∀ a b : Fin 4,
      survivorAllows6 sid e a b ↔ MaskAllowsEntry6 sid e a b := by
  intro sid e a b
  unfold survivorAllows6 MaskAllowsEntry6
  simp [Nat.testBit, Nat.shiftRight_eq_div_pow, Nat.one_and_eq_mod_two]

set_option maxRecDepth 100000 in
theorem singletonMaskAllows6 :
    ∀ a b x y : Fin 4,
      Nat.testBit (2 ^ (4 * a.val + b.val)) (4 * x.val + y.val) = true ↔
        x = a ∧ y = b := by
  intro a b x y
  simp only [Nat.testBit_two_pow, decide_eq_true_eq]
  constructor
  · intro h
    have hx : x.val = a.val := by omega
    have hy : y.val = b.val := by omega
    exact ⟨Fin.ext hx, Fin.ext hy⟩
  · rintro ⟨rfl, rfl⟩
    rfl

lemma planAllowed_iff_maskAllowed6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (e : Fin 15) (a b : Fin 4) :
    PlanAllowedEntry6 D.plan.witness
        (physicalEdge6 e).1 (physicalEdge6 e).2 a b ↔
      MaskAllowsEntry6 sid e a b := by
  rw [htemplate e a b]
  exact survivorAllows_iff_maskAllows6 sid e a b

lemma matchingAllowed_iff_maskMatchingAllowed6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (q : Fin 6 → Fin 4) (m : Fin 15) :
    MatchingAllowed6 D.plan.witness q m ↔
      MaskMatchingAllowed6 sid q m := by
  constructor
  · intro h k
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    have hlt : uv.1 < uv.2 := matchingEdges6_lt m k
    have he : physicalEdge6 e = uv := physicalEdgeIndex6_spec uv.1 uv.2 hlt
    have hp := h k
    have hm := (planAllowed_iff_maskAllowed6 D sid htemplate e (q uv.1) (q uv.2)).1
    simpa [he] using hm (by simpa [he] using hp)
  · intro h k
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    have hlt : uv.1 < uv.2 := matchingEdges6_lt m k
    have he : physicalEdge6 e = uv := physicalEdgeIndex6_spec uv.1 uv.2 hlt
    have hm := h k
    have hp := (planAllowed_iff_maskAllowed6 D sid htemplate e (q uv.1) (q uv.2)).2
    simpa [he] using hp (by simpa [he] using hm)

/-- If exactly one endpoint-color entry is allowed on an edge, both endpoints
must use that edge as a witness, so the entry is a forced mutual-axis entry. -/
lemma planForced_of_singletonAllowed6
    (plan : Fin 6 → Fin 4 → Fin 6) (target : Fin 4 → Fin 15)
    {u v : Fin 6} {a b : Fin 4}
    (hsingle : ∀ x y : Fin 4,
      PlanAllowedEntry6 plan u v x y ↔ x = a ∧ y = b) :
    PlanForcedEntry6 plan target u v a b := by
  have horig : PlanAllowedEntry6 plan u v a b :=
    (hsingle a b).2 ⟨rfl, rfl⟩
  have hu : ∃ c : Fin 4, plan u c = v := by
    by_contra hnone
    push_neg at hnone
    obtain ⟨b', hb'⟩ := exists_ne b
    have hallow : PlanAllowedEntry6 plan u v a b' := by
      refine ⟨?_, horig.2⟩
      intro c hc
      exact False.elim (hnone c hc)
    exact hb' ((hsingle a b').1 hallow).2
  have hv : ∃ d : Fin 4, plan v d = u := by
    by_contra hnone
    push_neg at hnone
    obtain ⟨a', ha'⟩ := exists_ne a
    have hallow : PlanAllowedEntry6 plan u v a' b := by
      refine ⟨horig.1, ?_⟩
      intro d hd
      exact False.elim (hnone d hd)
    exact ha' ((hsingle a' b).1 hallow).1
  obtain ⟨c, huc⟩ := hu
  obtain ⟨d, hvd⟩ := hv
  exact Or.inr ⟨c, d, huc, hvd, horig.2 d hvd, horig.1 c huc⟩

lemma actualEntry_ne_zero_of_maskForces6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (e : Fin 15) (a b : Fin 4)
    (hforced : MaskForcesEntry6 D.target sid e a b) :
    W (mkEdge (physicalEdge6 e).1 (physicalEdge6 e).2 a b) ≠ 0 := by
  have hlt := physicalEdge6_lt e
  rcases hforced with htarget | hsingleton
  · exact canonical_forced_entry_ne_zero D hlt (Or.inl htarget)
  · have hsingle : ∀ x y : Fin 4,
        PlanAllowedEntry6 D.plan.witness
            (physicalEdge6 e).1 (physicalEdge6 e).2 x y ↔
          x = a ∧ y = b := by
      intro x y
      rw [planAllowed_iff_maskAllowed6 D sid htemplate e x y]
      unfold MaskAllowsEntry6
      rw [hsingleton]
      exact singletonMaskAllows6 a b x y
    exact canonical_forced_entry_ne_zero D hlt
      (planForced_of_singletonAllowed6 D.plan.witness D.target hsingle)

lemma actualEntry_eq_zero_of_maskDisallows6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (e : Fin 15) (a b : Fin 4)
    (hnot : ¬ MaskAllowsEntry6 sid e a b) :
    W (mkEdge (physicalEdge6 e).1 (physicalEdge6 e).2 a b) = 0 := by
  have hlt := physicalEdge6_lt e
  apply canonical_edge_zero_of_not_allowed D.plan hlt
  intro hp
  exact hnot ((planAllowed_iff_maskAllowed6 D sid htemplate e a b).1 hp)

lemma pmTerm6_ne_zero_of_maskForced6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    {q : Fin 6 → Fin 4} {m : Fin 15}
    (hforced : MaskMatchingForced6 D.target sid q m) :
    pmTerm6 W q m ≠ 0 := by
  unfold pmTerm6
  rw [Finset.prod_ne_zero_iff]
  intro k _
  let uv := matchingEdges6 m k
  let e := physicalEdgeIndex6 uv.1 uv.2
  have hlt : uv.1 < uv.2 := matchingEdges6_lt m k
  have he : physicalEdge6 e = uv := physicalEdgeIndex6_spec uv.1 uv.2 hlt
  have hnon := actualEntry_ne_zero_of_maskForces6 D sid htemplate e
    (q uv.1) (q uv.2) (hforced k)
  simpa [he] using hnon

lemma pmTerm6_eq_zero_of_maskNotAllowed6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    {q : Fin 6 → Fin 4} {m : Fin 15}
    (hnot : ¬ MaskMatchingAllowed6 sid q m) :
    pmTerm6 W q m = 0 := by
  apply pmTerm6_eq_zero_of_not_allowed D.plan
  intro hp
  exact hnot ((matchingAllowed_iff_maskMatchingAllowed6 D sid htemplate q m).1 hp)

lemma actualEntry_eq_zero_of_maskDerived6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W) (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (e : Fin 15) (a b : Fin 4)
    (hderived : MaskDerivedZero6 D.target sid e a b) :
    W (mkEdge (physicalEdge6 e).1 (physicalEdge6 e).2 a b) = 0 := by
  by_contra hentry
  obtain ⟨q, m, k, hnonmono, hedge, hqa, hqb, hallowed, hunique, hother⟩ := hderived
  have hterm : pmTerm6 W q m ≠ 0 := by
    unfold pmTerm6
    rw [Finset.prod_ne_zero_iff]
    intro l _
    by_cases hl : l = k
    · subst l
      simpa [hedge, hqa, hqb] using hentry
    · let uv := matchingEdges6 m l
      let f := physicalEdgeIndex6 uv.1 uv.2
      have hlt : uv.1 < uv.2 := matchingEdges6_lt m l
      have hf : physicalEdge6 f = uv := physicalEdgeIndex6_spec uv.1 uv.2 hlt
      have hnon := actualEntry_ne_zero_of_maskForces6 D sid htemplate f
        (q uv.1) (q uv.2) (hother l hl)
      simpa [hf] using hnon
  have hsum_single : (∑ n : Fin 15, pmTerm6 W q n) = pmTerm6 W q m := by
    rw [Finset.sum_eq_single m]
    · intro n _ hnm
      apply pmTerm6_eq_zero_of_maskNotAllowed6 D sid htemplate
      intro hnallowed
      exact hnm (hunique n hnallowed)
    · simp
  have hzero : (∑ n : Fin 15, pmTerm6 W q n) = 0 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    simpa [hnonmono] using hW q
  rw [hsum_single] at hzero
  exact hterm hzero

/-- Soundness of the twenty-eight reconstructed support-zero terminal
certificates. -/
theorem false_of_maskSupportZeroContradiction6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W) (sid : Fin 29)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness sid)
    (hcert : MaskSupportZeroContradiction6 D.target sid) : False := by
  obtain ⟨q, m, hnonmono, hallowed, hforced, hkill⟩ := hcert
  have hterm : pmTerm6 W q m ≠ 0 :=
    pmTerm6_ne_zero_of_maskForced6 D sid htemplate hforced
  have hsum_single : (∑ n : Fin 15, pmTerm6 W q n) = pmTerm6 W q m := by
    rw [Finset.sum_eq_single m]
    · intro n _ hnm
      by_cases hnallowed : MaskMatchingAllowed6 sid q n
      · obtain ⟨k, hk⟩ := hkill n hnm hnallowed
        unfold pmTerm6
        apply Finset.prod_eq_zero (Finset.mem_univ k)
        let uv := matchingEdges6 n k
        let e := physicalEdgeIndex6 uv.1 uv.2
        have hlt : uv.1 < uv.2 := matchingEdges6_lt n k
        have he : physicalEdge6 e = uv := physicalEdgeIndex6_spec uv.1 uv.2 hlt
        have hz := actualEntry_eq_zero_of_maskDerived6 hW D sid htemplate e
          (q uv.1) (q uv.2) hk
        simpa [he] using hz
      · exact pmTerm6_eq_zero_of_maskNotAllowed6 D sid htemplate hnallowed
    · simp
  have hzero : (∑ n : Fin 15, pmTerm6 W q n) = 0 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    simpa [hnonmono] using hW q
  rw [hsum_single] at hzero
  exact hterm hzero

end

end MQGN6Audit

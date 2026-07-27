import MQGN6Audit.UniqueDagCheckFast6
import MQGN6Audit.TerminalSoundness6
import MQGN6Audit.CartesianTerminal6
import MQGN6Audit.IdenticalTarget6

/-!
# Nonexistence for six vertices and four colors

This file assembles the analytic local-axis theorem, the exact target-orbit
classification, the compressed 830,909-template replay, and the terminal
algebraic certificates.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

noncomputable section

/-- Turn a compatible axis plan into the dependent finite choice expected by
one feasible target-orbit classifier. -/
def feasibleChoiceOfData6 {W : WeightsN 6 4 ℂ}
    (D : AxisTargetData6 W) (ci : Fin 14)
    (htarget : D.target = feasibleTargetRep6 ci) : FeasiblePlanChoice6 ci :=
  fun v => ⟨D.plan.witness v, D.plan.injective v, by
    intro c d h
    exact D.compatible c v d (by simpa [htarget] using h)⟩

@[simp] lemma planOf_feasibleChoiceOfData6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W) (ci : Fin 14)
    (htarget : D.target = feasibleTargetRep6 ci) :
    planOfChoice6 (feasibleChoiceOfData6 D ci htarget) = D.plan.witness := rfl

lemma false_of_infeasibleTargetData6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W) (ci : Fin 6)
    (htarget : D.target = infeasibleTargetRep6 ci) : False := by
  obtain ⟨v, hv⟩ := infeasibleTargetRep6_no_local_plan ci
  apply hv
  refine ⟨D.plan.witness v, D.plan.injective v, ?_⟩
  intro c d h
  exact D.compatible c v d (by simpa [htarget] using h)

lemma false_of_feasibleTargetData6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W) (ci : Fin 14)
    (htarget : D.target = feasibleTargetRep6 ci) : False := by
  let choice := feasibleChoiceOfData6 D ci htarget
  rcases feasibleTemplateClassification6_fromFastDag ci choice with hunique | hterminal
  · obtain ⟨q, m, hnonmono, hforced, hallowed, huniq⟩ := hunique
    apply false_of_unique_forced_matching6 hW D q m hnonmono
    · simpa [choice, htarget] using hforced
    · intro n hnm
      intro hnallowed
      apply hnm
      apply huniq n
      simpa [choice, htarget] using hnallowed
  · obtain ⟨sid, hsidTarget, htemplate⟩ := hterminal
    have hDTarget : D.target = survivorTarget6 sid :=
      htarget.trans hsidTarget.symm
    have htemplateD : PlanHasSurvivorTemplate6 D.plan.witness sid := by
      simpa [choice] using htemplate
    by_cases hcart : sid.val = 26
    · have hsid : sid = cartesianSid6 := by
        apply Fin.ext
        exact hcart
      subst sid
      exact false_of_cartesianTerminal6 hW D hDTarget htemplateD
    · have hcert := supportZeroTerminalCertificates6 sid hcart
      have hcertD : MaskSupportZeroContradiction6 D.target sid := by
        simpa [hDTarget] using hcert
      exact false_of_maskSupportZeroContradiction6 hW D sid htemplateD hcertD

/-- Repackage a selected target family after a vertex relabeling and a final
color sort. -/
def normalizedAxisTargetData6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0)
    (π : Equiv.Perm (Fin 6)) :
    AxisTargetData6
      (relabelColors6 (Tuple.sort (relabelTargetVertices6 π target))
        (relabelVertices6 π W)) := by
  let Wv := relabelVertices6 π W
  let targetv := relabelTargetVertices6 π target
  let ρ : Equiv.Perm (Fin 4) := Tuple.sort targetv
  let W₂ := relabelColors6 ρ Wv
  have hWv : EqSystemN 6 4 Wv := eqSystem_relabelVertices6 π W hW
  have htargetv : ∀ c k,
      let e := matchingEdges6 (targetv c) k
      Wv (mkEdge e.1 e.2 c c) ≠ 0 :=
    target_nonzero_relabelVertices6 π target htarget
  have hW₂ : EqSystemN 6 4 W₂ := eqSystem_relabelColors6 ρ Wv hWv
  have htarget₂ : ∀ c k,
      let e := matchingEdges6 (sortedTarget6 targetv c) k
      W₂ (mkEdge e.1 e.2 c c) ≠ 0 :=
    target_nonzero_relabelColors6 targetv htargetv
  obtain ⟨P⟩ := exists_axisPlan6 W₂ hW₂
  exact ⟨P, sortedTarget6 targetv, htarget₂,
    axisPlan_target_compatible P (sortedTarget6 targetv) htarget₂⟩

/-- There is no complex solution of the six-vertex, four-color equation
system. -/
theorem no_solution_6_4 :
    ¬ ∃ W : WeightsN 6 4 ℂ, EqSystemN 6 4 W := by
  rintro ⟨W, hW⟩
  obtain ⟨σ, ⟨S⟩⟩ := exists_sorted_axisTargetData6 W hW
  let Wc := relabelColors6 σ W
  have hWc : EqSystemN 6 4 Wc := eqSystem_relabelColors6 σ W hW
  obtain ⟨π, horbit⟩ := targetOrbitTrichotomy6 S.target S.target_monotone
  let Wv := relabelVertices6 π Wc
  let targetv := relabelTargetVertices6 π S.target
  let ρ : Equiv.Perm (Fin 4) := Tuple.sort targetv
  let W₂ := relabelColors6 ρ Wv
  have hWv : EqSystemN 6 4 Wv := eqSystem_relabelVertices6 π Wc hWc
  have hW₂ : EqSystemN 6 4 W₂ := eqSystem_relabelColors6 ρ Wv hWv
  let D₂ : AxisTargetData6 W₂ :=
    normalizedAxisTargetData6 hWc S.target S.target_nonzero π
  have hDtarget : D₂.target = sortedTarget6 targetv := rfl
  rcases horbit with hid | hinf | hfea
  · exact false_of_identicalTarget6 hW₂ D₂ (hDtarget.trans hid)
  · obtain ⟨ci, hci⟩ := hinf
    exact false_of_infeasibleTargetData6 D₂ ci (hDtarget.trans hci)
  · obtain ⟨ci, hci⟩ := hfea
    exact false_of_feasibleTargetData6 hW₂ D₂ ci (hDtarget.trans hci)

end

end MQGN6Audit

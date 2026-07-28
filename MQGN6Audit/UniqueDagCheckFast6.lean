import MQGN6Audit.UniqueDagCompatiblePlanKernel6
import MQGN6Audit.UniqueDagStructuralKernel6

/-!
# Fast kernel replay of the compressed `K₆` classification

The earlier checker quantified over proof-bearing local-plan subtypes and was
correct but too expensive for the hosted CI budget. This version evaluates the
same 900-node certificate DAG over the six compact base-six plan codes. The
only bridge back to the mathematical witness plans is a separately checked
local encoding theorem.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

lemma decode_encodeLocalPlanFast6 (p : Fin 4 → Fin 6) :
    decodeLocalPlanFast6 (encodeLocalPlanFast6 p) = p := by
  funext c
  apply Fin.ext
  fin_cases c <;>
    simp [decodeLocalPlanFast6, encodeLocalPlanFast6] <;> omega

/-- Codes extracted from an actual feasible witness-plan choice. -/
def codesOfChoiceFast6 {ci : Fin 14} (choice : FeasiblePlanChoice6 ci) :
    Fin 6 → Nat := fun v => encodeLocalPlanFast6 (choice v).1

lemma rawPlan_codesOfChoiceFast6 {ci : Fin 14}
    (choice : FeasiblePlanChoice6 ci) :
    rawPlanFast6 (codesOfChoiceFast6 choice) = planOfChoice6 choice := by
  funext v c
  exact congrFun (decode_encodeLocalPlanFast6 (choice v).1) c

lemma rawDagLeafValid_choiceFast6 {ci : Fin 14}
    (choice : FeasiblePlanChoice6 ci) :
    RawDagLeafValidFast6 ci (codesOfChoiceFast6 choice) := by
  let c0 := codesOfChoiceFast6 choice 0
  let c1 := codesOfChoiceFast6 choice 1
  let c2 := codesOfChoiceFast6 choice 2
  let c3 := codesOfChoiceFast6 choice 3
  let c4 := codesOfChoiceFast6 choice 4
  let c5 := codesOfChoiceFast6 choice 5
  have h0 : c0 ∈ (uniqueDagCase6 ci).planCodes 0 :=
    compatiblePlanCode_memFast6 ci 0 (choice 0).1 (choice 0).2
  have h1 : c1 ∈ (uniqueDagCase6 ci).planCodes 1 :=
    compatiblePlanCode_memFast6 ci 1 (choice 1).1 (choice 1).2
  have h2 : c2 ∈ (uniqueDagCase6 ci).planCodes 2 :=
    compatiblePlanCode_memFast6 ci 2 (choice 2).1 (choice 2).2
  have h3 : c3 ∈ (uniqueDagCase6 ci).planCodes 3 :=
    compatiblePlanCode_memFast6 ci 3 (choice 3).1 (choice 3).2
  have h4 : c4 ∈ (uniqueDagCase6 ci).planCodes 4 :=
    compatiblePlanCode_memFast6 ci 4 (choice 4).1 (choice 4).2
  have h5 : c5 ∈ (uniqueDagCase6 ci).planCodes 5 :=
    compatiblePlanCode_memFast6 ci 5 (choice 5).1 (choice 5).2
  have hraw := rawDagCasesValidFast6 ci c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  have hcodes : (![c0, c1, c2, c3, c4, c5] : Fin 6 → Nat) =
      codesOfChoiceFast6 choice := by
    funext v
    fin_cases v <;> rfl
  simpa [hcodes] using hraw

/-- Fast replay of the complete `830909 = 830880 + 29` classification. -/
theorem feasibleTemplateClassification6_fromFastDag :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      HasUniqueForcedMatching6 (feasibleTargetRep6 ci) (planOfChoice6 choice) ∨
      ∃ sid : Fin 29,
        survivorTarget6 sid = feasibleTargetRep6 ci ∧
        PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid := by
  intro ci choice
  have h := rawDagLeafValid_choiceFast6 choice
  unfold RawDagLeafValidFast6 at h
  rw [rawPlan_codesOfChoiceFast6 choice] at h
  let node := uniqueDagNodeAtFast6 (uniqueDagCase6 ci)
    (rawDagEvalIdFast6 (uniqueDagCase6 ci) (codesOfChoiceFast6 choice))
  have hleaf :
      match node with
      | .unique z m =>
          let q := decodeDagColoringFast6 z
          ¬ allEqual q ∧
          MatchingForced6 (planOfChoice6 choice) (feasibleTargetRep6 ci) q m ∧
          MatchingAllowed6 (planOfChoice6 choice) q m ∧
          ∀ n : Fin 15,
            MatchingAllowed6 (planOfChoice6 choice) q n → n = m
      | .survivor sid =>
          survivorTarget6 sid = feasibleTargetRep6 ci ∧
          PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid
      | .branch _ => False := h.2
  generalize hnode : node = node' at hleaf
  cases node' with
  | unique z m =>
      left
      exact ⟨decodeDagColoringFast6 z, m, hleaf.1, hleaf.2.1,
        hleaf.2.2.1, hleaf.2.2.2⟩
  | survivor sid => exact Or.inr ⟨sid, hleaf.1, hleaf.2⟩
  | branch children => exact False.elim hleaf

end MQGN6Audit

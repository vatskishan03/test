import MQGN6Audit.FiniteDefinitions6
import MQGN6Audit.UniqueDagCheckFast6

/-!
# Compatibility wrapper for the finite classification

The original direct search has been replaced by the independently generated,
kernel-replayed 900-node certificate DAG. The finite definitions and audited
terminal masks remain in `FiniteDefinitions6`.
-/

namespace MQGN6Audit

/-- Backwards-compatible statement of the complete finite classification. -/
theorem feasibleTemplateClassification6 :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      HasUniqueForcedMatching6 (feasibleTargetRep6 ci) (planOfChoice6 choice) ∨
      ∃ sid : Fin 29, PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid := by
  intro ci choice
  rcases feasibleTemplateClassification6_fromFastDag ci choice with h | ⟨sid, _, hs⟩
  · exact Or.inl h
  · exact Or.inr ⟨sid, hs⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagCheckFast6

/-!
# Compatibility alias for the compressed classifier

The original proof-bearing replay was correct but exceeded the hosted CI
budget. The maintained implementation is the base-six checker in
`UniqueDagCheckFast6`.
-/

namespace MQGN6Audit

/-- Backwards-compatible name for the fast compressed classification theorem. -/
theorem feasibleTemplateClassification6_fromDag :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      HasUniqueForcedMatching6 (feasibleTargetRep6 ci) (planOfChoice6 choice) ∨
      ∃ sid : Fin 29, PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid := by
  intro ci choice
  rcases feasibleTemplateClassification6_fromFastDag ci choice with h | ⟨sid, _, hs⟩
  · exact Or.inl h
  · exact Or.inr ⟨sid, hs⟩

end MQGN6Audit

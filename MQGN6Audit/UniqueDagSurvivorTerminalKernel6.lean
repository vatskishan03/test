import MQGN6Audit.UniqueDagPossibleCodesKernel6

/-!
# Survivor-leaf semantic validation from possible local codes
-/

namespace MQGN6Audit

def rawDagPairAllowedPossible6 (cu cv : Nat) (u v : Fin 6)
    (a b : Fin 4) : Prop :=
  (∀ c, decodeLocalPlanFast6 cu c = v → b = c) ∧
  (∀ c, decodeLocalPlanFast6 cv c = u → a = c)

instance rawDagPairAllowedPossible6Decidable
    (cu cv : Nat) (u v : Fin 6) (a b : Fin 4) :
    Decidable (rawDagPairAllowedPossible6 cu cv u v a b) := by
  unfold rawDagPairAllowedPossible6
  infer_instance

def rawDagSurvivorLocalValidPossible6 (C : UniqueDagCase6)
    (sid : Fin 29) : Prop :=
  let leaf := UniqueDagNode6.survivor sid
  ∀ e : Fin 15, ∀ a b : Fin 4,
    ∀ cu ∈ rawDagPossibleCodesPossible6 C leaf (physicalEdge6 e).1,
    ∀ cv ∈ rawDagPossibleCodesPossible6 C leaf (physicalEdge6 e).2,
      rawDagPairAllowedPossible6 cu cv
        (physicalEdge6 e).1 (physicalEdge6 e).2 a b ↔
      survivorAllows6 sid e a b

instance rawDagSurvivorLocalValidPossible6Decidable
    (C : UniqueDagCase6) (sid : Fin 29) :
    Decidable (rawDagSurvivorLocalValidPossible6 C sid) := by
  unfold rawDagSurvivorLocalValidPossible6 rawDagPairAllowedPossible6
    survivorAllows6
  infer_instance

lemma rawDagPairAllowed_rawPlanPossible6 (codes : Fin 6 → Nat)
    (u v : Fin 6) (a b : Fin 4) :
    PlanAllowedEntry6 (rawPlanFast6 codes) u v a b ↔
      rawDagPairAllowedPossible6 (codes u) (codes v) u v a b := by
  rfl

theorem planHasSurvivorTemplate_of_possible6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (sid : Fin 29)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .survivor sid)
    (hvalid : rawDagSurvivorLocalValidPossible6 C sid) :
    PlanHasSurvivorTemplate6 (rawPlanFast6 codes) sid := by
  intro e a b
  rw [rawDagPairAllowed_rawPlanPossible6]
  exact hvalid e a b (codes (physicalEdge6 e).1)
    (rawDagCode_mem_possiblePossible6 C codes hcodes (.survivor sid) hleaf
      (physicalEdge6 e).1)
    (codes (physicalEdge6 e).2)
    (rawDagCode_mem_possiblePossible6 C codes hcodes (.survivor sid) hleaf
      (physicalEdge6 e).2)

end MQGN6Audit

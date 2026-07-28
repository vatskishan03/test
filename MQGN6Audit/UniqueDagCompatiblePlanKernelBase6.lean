import MQGN6Audit.FiniteDefinitions6
import MQGN6Audit.UniqueDagData6

namespace MQGN6Audit

/-- Base-six encoding used by the independent generator. -/
def encodeLocalPlanFast6 (p : Fin 4 → Fin 6) : Nat :=
  p 0 + 6 * p 1 + 36 * p 2 + 216 * p 3

/-- Transparent tuple presentation used to bound kernel-validation shards. -/
def kernelLocalPlanTupleFast6 (p0 p1 p2 p3 : Fin 6) : Fin 4 → Fin 6 :=
  ![p0, p1, p2, p3]

theorem kernelLocalPlan_eq_tupleFast6 (p : Fin 4 → Fin 6) :
    p = kernelLocalPlanTupleFast6 (p 0) (p 1) (p 2) (p 3) := by
  funext c
  fin_cases c <;> rfl

end MQGN6Audit

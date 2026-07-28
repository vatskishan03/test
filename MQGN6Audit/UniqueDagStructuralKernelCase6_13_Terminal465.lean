import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal465Target
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal465Local

/-!
# Singleton kernel replay of case-13 survivor terminal 465
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13Terminal465ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 465 := by
  change
    survivorTarget6 19 = feasibleTargetRep6 13 ∧
      rawDagSurvivorLocalValidPossible6 (uniqueDagCase6 13) 19
  exact ⟨case13Terminal465TargetPossible6,
    case13Terminal465LocalPossible6⟩

end MQGN6Audit

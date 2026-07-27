import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal447Target
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal447Local

/-!
# Singleton kernel replay of case-13 survivor terminal 447
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13Terminal447ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 447 := by
  change
    survivorTarget6 18 = feasibleTargetRep6 13 ∧
      rawDagSurvivorLocalValidPossible6 (uniqueDagCase6 13) 18
  exact ⟨case13Terminal447TargetPossible6,
    case13Terminal447LocalPossible6⟩

end MQGN6Audit

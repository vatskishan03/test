import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273Unique

/-!
# Singleton kernel replay of case-13 terminal 273
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal273ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 273 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 273 27 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal273AllowedPossible6,
    case13Terminal273ForcedPossible6,
    case13Terminal273UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362Unique

/-!
# Singleton kernel replay of case-13 terminal 362
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal362ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 362 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 362 108 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal362AllowedPossible6,
    case13Terminal362ForcedPossible6,
    case13Terminal362UniquePossible6⟩

end MQGN6Audit

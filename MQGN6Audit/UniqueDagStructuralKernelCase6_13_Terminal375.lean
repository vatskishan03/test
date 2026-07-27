import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375Unique

/-!
# Singleton kernel replay of case-13 terminal 375
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal375ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 375 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 375 39 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal375AllowedPossible6,
    case13Terminal375ForcedPossible6,
    case13Terminal375UniquePossible6⟩

end MQGN6Audit

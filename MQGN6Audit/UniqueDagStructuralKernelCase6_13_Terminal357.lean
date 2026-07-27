import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357Unique

/-!
# Singleton kernel replay of case-13 terminal 357
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal357ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 357 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 357 47 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal357AllowedPossible6,
    case13Terminal357ForcedPossible6,
    case13Terminal357UniquePossible6⟩

end MQGN6Audit

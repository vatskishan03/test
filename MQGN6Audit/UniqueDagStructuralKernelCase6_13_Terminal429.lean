import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429Unique

/-!
# Singleton kernel replay of case-13 terminal 429
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal429ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 429 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 429 55 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal429AllowedPossible6,
    case13Terminal429ForcedPossible6,
    case13Terminal429UniquePossible6⟩

end MQGN6Audit

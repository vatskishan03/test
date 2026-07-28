import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422Unique

/-!
# Singleton kernel replay of case-13 terminal 422
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal422ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 422 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 422 126 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal422AllowedPossible6,
    case13Terminal422ForcedPossible6,
    case13Terminal422UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459Unique

/-!
# Singleton kernel replay of case-13 terminal 459
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal459ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 459 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 459 73 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal459AllowedPossible6,
    case13Terminal459ForcedPossible6,
    case13Terminal459UniquePossible6⟩

end MQGN6Audit

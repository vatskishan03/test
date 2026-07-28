import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal473Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal473Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal473Unique

/-!
# Singleton kernel replay of case-13 terminal 473
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal473ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 473 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 473 76 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal473AllowedPossible6,
    case13Terminal473ForcedPossible6,
    case13Terminal473UniquePossible6⟩

end MQGN6Audit

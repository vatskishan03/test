import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431Unique

/-!
# Singleton kernel replay of case-13 terminal 431
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal431ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 431 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 431 180 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal431AllowedPossible6,
    case13Terminal431ForcedPossible6,
    case13Terminal431UniquePossible6⟩

end MQGN6Audit

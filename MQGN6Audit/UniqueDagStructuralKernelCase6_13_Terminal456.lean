import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456Unique

/-!
# Singleton kernel replay of case-13 terminal 456
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal456ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 456 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 456 137 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal456AllowedPossible6,
    case13Terminal456ForcedPossible6,
    case13Terminal456UniquePossible6⟩

end MQGN6Audit

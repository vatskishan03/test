import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482Unique

/-!
# Singleton kernel replay of case-13 terminal 482
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal482ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 482 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 482 68 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal482AllowedPossible6,
    case13Terminal482ForcedPossible6,
    case13Terminal482UniquePossible6⟩

end MQGN6Audit

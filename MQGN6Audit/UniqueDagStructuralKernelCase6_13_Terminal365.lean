import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365Unique

/-!
# Singleton kernel replay of case-13 terminal 365
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal365ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 365 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 365 111 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal365AllowedPossible6,
    case13Terminal365ForcedPossible6,
    case13Terminal365UniquePossible6⟩

end MQGN6Audit

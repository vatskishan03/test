import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409Unique

/-!
# Singleton kernel replay of case-13 terminal 409
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal409ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 409 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 409 121 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal409AllowedPossible6,
    case13Terminal409ForcedPossible6,
    case13Terminal409UniquePossible6⟩

end MQGN6Audit

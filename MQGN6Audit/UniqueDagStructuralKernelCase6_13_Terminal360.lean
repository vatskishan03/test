import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360Unique

/-!
# Singleton kernel replay of case-13 terminal 360
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal360ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 360 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 360 173 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal360AllowedPossible6,
    case13Terminal360ForcedPossible6,
    case13Terminal360UniquePossible6⟩

end MQGN6Audit

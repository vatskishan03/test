import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348Unique

/-!
# Singleton kernel replay of case-13 terminal 348
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal348ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 348 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 348 106 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal348AllowedPossible6,
    case13Terminal348ForcedPossible6,
    case13Terminal348UniquePossible6⟩

end MQGN6Audit

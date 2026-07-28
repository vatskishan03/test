import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448Unique

/-!
# Singleton kernel replay of case-13 terminal 448
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal448ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 448 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 448 263 14
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal448AllowedPossible6,
    case13Terminal448ForcedPossible6,
    case13Terminal448UniquePossible6⟩

end MQGN6Audit

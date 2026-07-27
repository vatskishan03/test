import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356Unique

/-!
# Singleton kernel replay of case-13 terminal 356
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal356ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 356 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 356 46 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal356AllowedPossible6,
    case13Terminal356ForcedPossible6,
    case13Terminal356UniquePossible6⟩

end MQGN6Audit

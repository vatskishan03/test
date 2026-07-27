import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406Unique

/-!
# Singleton kernel replay of case-13 terminal 406
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal406ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 406 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 406 185 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal406AllowedPossible6,
    case13Terminal406ForcedPossible6,
    case13Terminal406UniquePossible6⟩

end MQGN6Audit

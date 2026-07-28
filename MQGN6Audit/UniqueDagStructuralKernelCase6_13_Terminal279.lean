import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279Unique

/-!
# Singleton kernel replay of case-13 terminal 279
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal279ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 279 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 279 89 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal279AllowedPossible6,
    case13Terminal279ForcedPossible6,
    case13Terminal279UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383Unique

/-!
# Singleton kernel replay of case-13 terminal 383
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal383ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 383 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 383 103 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal383AllowedPossible6,
    case13Terminal383ForcedPossible6,
    case13Terminal383UniquePossible6⟩

end MQGN6Audit

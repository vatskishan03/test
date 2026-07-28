import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295Unique

/-!
# Singleton kernel replay of case-13 terminal 295
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal295ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 295 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 295 95 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal295AllowedPossible6,
    case13Terminal295ForcedPossible6,
    case13Terminal295UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318Unique

/-!
# Singleton kernel replay of case-13 terminal 318
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal318ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 318 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 318 262 14
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal318AllowedPossible6,
    case13Terminal318ForcedPossible6,
    case13Terminal318UniquePossible6⟩

end MQGN6Audit

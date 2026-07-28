import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394Unique

/-!
# Singleton kernel replay of case-13 terminal 394
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal394ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 394 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 394 113 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal394AllowedPossible6,
    case13Terminal394ForcedPossible6,
    case13Terminal394UniquePossible6⟩

end MQGN6Audit

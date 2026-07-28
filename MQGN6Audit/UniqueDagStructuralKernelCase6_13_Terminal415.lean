import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415Unique

/-!
# Singleton kernel replay of case-13 terminal 415
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal415ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 415 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 415 61 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal415AllowedPossible6,
    case13Terminal415ForcedPossible6,
    case13Terminal415UniquePossible6⟩

end MQGN6Audit

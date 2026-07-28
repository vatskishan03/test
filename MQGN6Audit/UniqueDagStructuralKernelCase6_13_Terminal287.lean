import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287Unique

/-!
# Singleton kernel replay of case-13 terminal 287
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal287ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 287 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 287 31 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal287AllowedPossible6,
    case13Terminal287ForcedPossible6,
    case13Terminal287UniquePossible6⟩

end MQGN6Audit

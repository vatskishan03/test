import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290Unique

/-!
# Singleton kernel replay of case-13 terminal 290
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal290ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 290 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 290 157 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal290AllowedPossible6,
    case13Terminal290ForcedPossible6,
    case13Terminal290UniquePossible6⟩

end MQGN6Audit

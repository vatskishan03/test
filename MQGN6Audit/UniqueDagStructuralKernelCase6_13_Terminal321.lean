import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321Unique

/-!
# Singleton kernel replay of case-13 terminal 321
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal321ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 321 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 321 33 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal321AllowedPossible6,
    case13Terminal321ForcedPossible6,
    case13Terminal321UniquePossible6⟩

end MQGN6Audit

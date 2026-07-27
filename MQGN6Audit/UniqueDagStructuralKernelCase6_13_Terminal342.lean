import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342Unique

/-!
# Singleton kernel replay of case-13 terminal 342
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal342ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 342 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 342 168 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal342AllowedPossible6,
    case13Terminal342ForcedPossible6,
    case13Terminal342UniquePossible6⟩

end MQGN6Audit

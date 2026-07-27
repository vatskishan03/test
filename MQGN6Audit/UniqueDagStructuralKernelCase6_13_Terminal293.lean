import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293Unique

/-!
# Singleton kernel replay of case-13 terminal 293
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal293ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 293 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 293 93 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal293AllowedPossible6,
    case13Terminal293ForcedPossible6,
    case13Terminal293UniquePossible6⟩

end MQGN6Audit

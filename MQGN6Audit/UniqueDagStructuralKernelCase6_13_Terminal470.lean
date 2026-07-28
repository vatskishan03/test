import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470Unique

/-!
# Singleton kernel replay of case-13 terminal 470
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal470ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 470 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 470 140 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal470AllowedPossible6,
    case13Terminal470ForcedPossible6,
    case13Terminal470UniquePossible6⟩

end MQGN6Audit

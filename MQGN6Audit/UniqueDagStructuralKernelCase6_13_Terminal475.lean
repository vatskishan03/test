import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475Unique

/-!
# Singleton kernel replay of case-13 terminal 475
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal475ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 475 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 475 78 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal475AllowedPossible6,
    case13Terminal475ForcedPossible6,
    case13Terminal475UniquePossible6⟩

end MQGN6Audit

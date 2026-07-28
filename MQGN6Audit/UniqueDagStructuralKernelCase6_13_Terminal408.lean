import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408Unique

/-!
# Singleton kernel replay of case-13 terminal 408
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal408ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 408 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 408 120 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal408AllowedPossible6,
    case13Terminal408ForcedPossible6,
    case13Terminal408UniquePossible6⟩

end MQGN6Audit

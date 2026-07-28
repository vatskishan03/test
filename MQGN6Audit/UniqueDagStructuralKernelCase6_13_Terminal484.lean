import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484Unique

/-!
# Singleton kernel replay of case-13 terminal 484
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal484ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 484 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 484 70 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal484AllowedPossible6,
    case13Terminal484ForcedPossible6,
    case13Terminal484UniquePossible6⟩

end MQGN6Audit

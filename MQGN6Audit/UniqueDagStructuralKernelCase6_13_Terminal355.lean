import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355Unique

/-!
# Singleton kernel replay of case-13 terminal 355
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal355ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 355 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 355 45 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal355AllowedPossible6,
    case13Terminal355ForcedPossible6,
    case13Terminal355UniquePossible6⟩

end MQGN6Audit

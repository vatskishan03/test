import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479Unique

/-!
# Singleton kernel replay of case-13 terminal 479
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal479ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 479 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 479 132 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal479AllowedPossible6,
    case13Terminal479ForcedPossible6,
    case13Terminal479UniquePossible6⟩

end MQGN6Audit

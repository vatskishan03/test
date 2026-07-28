import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280Unique

/-!
# Singleton kernel replay of case-13 terminal 280
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal280ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 280 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 280 90 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal280AllowedPossible6,
    case13Terminal280ForcedPossible6,
    case13Terminal280UniquePossible6⟩

end MQGN6Audit

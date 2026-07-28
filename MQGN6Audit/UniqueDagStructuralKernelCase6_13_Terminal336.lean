import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336Unique

/-!
# Singleton kernel replay of case-13 terminal 336
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal336ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 336 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 336 41 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal336AllowedPossible6,
    case13Terminal336ForcedPossible6,
    case13Terminal336UniquePossible6⟩

end MQGN6Audit

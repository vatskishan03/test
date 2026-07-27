import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343Unique

/-!
# Singleton kernel replay of case-13 terminal 343
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal343ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 343 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 343 169 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal343AllowedPossible6,
    case13Terminal343ForcedPossible6,
    case13Terminal343UniquePossible6⟩

end MQGN6Audit

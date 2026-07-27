import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266Unique

/-!
# Singleton kernel replay of case-13 terminal 266
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal266ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 266 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 266 145 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal266AllowedPossible6,
    case13Terminal266ForcedPossible6,
    case13Terminal266UniquePossible6⟩

end MQGN6Audit

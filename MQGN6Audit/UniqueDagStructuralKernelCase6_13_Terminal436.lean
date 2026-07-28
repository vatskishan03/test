import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436Unique

/-!
# Singleton kernel replay of case-13 terminal 436
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal436ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 436 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 436 118 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal436AllowedPossible6,
    case13Terminal436ForcedPossible6,
    case13Terminal436UniquePossible6⟩

end MQGN6Audit

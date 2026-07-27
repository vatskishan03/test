import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377Unique

/-!
# Singleton kernel replay of case-13 terminal 377
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal377ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 377 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 377 164 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal377AllowedPossible6,
    case13Terminal377ForcedPossible6,
    case13Terminal377UniquePossible6⟩

end MQGN6Audit

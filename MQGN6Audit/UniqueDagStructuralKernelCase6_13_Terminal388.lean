import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388Unique

/-!
# Singleton kernel replay of case-13 terminal 388
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal388ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 388 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 388 49 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal388AllowedPossible6,
    case13Terminal388ForcedPossible6,
    case13Terminal388UniquePossible6⟩

end MQGN6Audit

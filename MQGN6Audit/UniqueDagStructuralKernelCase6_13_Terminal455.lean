import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455Unique

/-!
# Singleton kernel replay of case-13 terminal 455
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal455ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 455 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 455 136 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal455AllowedPossible6,
    case13Terminal455ForcedPossible6,
    case13Terminal455UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396Unique

/-!
# Singleton kernel replay of case-13 terminal 396
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal396ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 396 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 396 115 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal396AllowedPossible6,
    case13Terminal396ForcedPossible6,
    case13Terminal396UniquePossible6⟩

end MQGN6Audit

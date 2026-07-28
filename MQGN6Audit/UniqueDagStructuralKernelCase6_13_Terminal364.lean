import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364Unique

/-!
# Singleton kernel replay of case-13 terminal 364
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal364ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 364 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 364 110 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal364AllowedPossible6,
    case13Terminal364ForcedPossible6,
    case13Terminal364UniquePossible6⟩

end MQGN6Audit

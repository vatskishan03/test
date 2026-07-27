import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286Unique

/-!
# Singleton kernel replay of case-13 terminal 286
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal286ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 286 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 286 30 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal286AllowedPossible6,
    case13Terminal286ForcedPossible6,
    case13Terminal286UniquePossible6⟩

end MQGN6Audit

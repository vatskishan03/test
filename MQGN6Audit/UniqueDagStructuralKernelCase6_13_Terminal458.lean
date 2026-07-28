import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458Unique

/-!
# Singleton kernel replay of case-13 terminal 458
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal458ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 458 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 458 72 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal458AllowedPossible6,
    case13Terminal458ForcedPossible6,
    case13Terminal458UniquePossible6⟩

end MQGN6Audit

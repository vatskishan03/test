import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483Unique

/-!
# Singleton kernel replay of case-13 terminal 483
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal483ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 483 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 483 69 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal483AllowedPossible6,
    case13Terminal483ForcedPossible6,
    case13Terminal483UniquePossible6⟩

end MQGN6Audit

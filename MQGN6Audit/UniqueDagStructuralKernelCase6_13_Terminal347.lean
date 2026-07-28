import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347Unique

/-!
# Singleton kernel replay of case-13 terminal 347
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal347ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 347 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 347 105 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal347AllowedPossible6,
    case13Terminal347ForcedPossible6,
    case13Terminal347UniquePossible6⟩

end MQGN6Audit

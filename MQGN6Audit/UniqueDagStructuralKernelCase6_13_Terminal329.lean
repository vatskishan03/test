import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329Unique

/-!
# Singleton kernel replay of case-13 terminal 329
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal329ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 329 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 329 99 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal329AllowedPossible6,
    case13Terminal329ForcedPossible6,
    case13Terminal329UniquePossible6⟩

end MQGN6Audit

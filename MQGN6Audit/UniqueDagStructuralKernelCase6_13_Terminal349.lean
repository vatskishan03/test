import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349Unique

/-!
# Singleton kernel replay of case-13 terminal 349
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal349ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 349 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 349 107 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal349AllowedPossible6,
    case13Terminal349ForcedPossible6,
    case13Terminal349UniquePossible6⟩

end MQGN6Audit

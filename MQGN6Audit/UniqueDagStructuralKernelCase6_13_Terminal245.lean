import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245Unique

/-!
# Singleton kernel replay of case-13 terminal 245
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal245ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 245 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 245 1258 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal245AllowedPossible6,
    case13Terminal245ForcedPossible6,
    case13Terminal245UniquePossible6⟩

end MQGN6Audit

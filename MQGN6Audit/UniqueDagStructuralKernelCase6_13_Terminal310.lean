import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310Unique

/-!
# Singleton kernel replay of case-13 terminal 310
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal310ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 310 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 310 84 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal310AllowedPossible6,
    case13Terminal310ForcedPossible6,
    case13Terminal310UniquePossible6⟩

end MQGN6Audit

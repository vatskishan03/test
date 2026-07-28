import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338Unique

/-!
# Singleton kernel replay of case-13 terminal 338
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal338ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 338 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 338 43 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal338AllowedPossible6,
    case13Terminal338ForcedPossible6,
    case13Terminal338UniquePossible6⟩

end MQGN6Audit

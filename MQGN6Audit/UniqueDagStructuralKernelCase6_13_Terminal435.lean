import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435Unique

/-!
# Singleton kernel replay of case-13 terminal 435
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal435ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 435 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 435 117 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal435AllowedPossible6,
    case13Terminal435ForcedPossible6,
    case13Terminal435UniquePossible6⟩

end MQGN6Audit

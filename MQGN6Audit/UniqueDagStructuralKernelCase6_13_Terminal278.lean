import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278Unique

/-!
# Singleton kernel replay of case-13 terminal 278
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal278ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 278 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 278 88 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal278AllowedPossible6,
    case13Terminal278ForcedPossible6,
    case13Terminal278UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313Unique

/-!
# Singleton kernel replay of case-13 terminal 313
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal313ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 313 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 313 87 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal313AllowedPossible6,
    case13Terminal313ForcedPossible6,
    case13Terminal313UniquePossible6⟩

end MQGN6Audit

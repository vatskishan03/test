import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428Unique

/-!
# Singleton kernel replay of case-13 terminal 428
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal428ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 428 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 428 54 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal428AllowedPossible6,
    case13Terminal428ForcedPossible6,
    case13Terminal428UniquePossible6⟩

end MQGN6Audit

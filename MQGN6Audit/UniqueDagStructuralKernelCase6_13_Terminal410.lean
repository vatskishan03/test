import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410Unique

/-!
# Singleton kernel replay of case-13 terminal 410
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal410ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 410 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 410 122 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal410AllowedPossible6,
    case13Terminal410ForcedPossible6,
    case13Terminal410UniquePossible6⟩

end MQGN6Audit

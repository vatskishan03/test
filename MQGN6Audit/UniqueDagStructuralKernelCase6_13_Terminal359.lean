import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359Unique

/-!
# Singleton kernel replay of case-13 terminal 359
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal359ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 359 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 359 172 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal359AllowedPossible6,
    case13Terminal359ForcedPossible6,
    case13Terminal359UniquePossible6⟩

end MQGN6Audit

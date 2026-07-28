import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405Unique

/-!
# Singleton kernel replay of case-13 terminal 405
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal405ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 405 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 405 184 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal405AllowedPossible6,
    case13Terminal405ForcedPossible6,
    case13Terminal405UniquePossible6⟩

end MQGN6Audit

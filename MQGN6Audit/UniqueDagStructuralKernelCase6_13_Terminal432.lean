import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432Unique

/-!
# Singleton kernel replay of case-13 terminal 432
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal432ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 432 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 432 181 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal432AllowedPossible6,
    case13Terminal432ForcedPossible6,
    case13Terminal432UniquePossible6⟩

end MQGN6Audit

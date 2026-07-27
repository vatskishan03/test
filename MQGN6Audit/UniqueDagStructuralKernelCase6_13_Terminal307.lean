import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal307Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal307Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal307Unique

/-!
# Singleton kernel replay of case-13 terminal 307
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal307ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 307 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 307 148 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal307AllowedPossible6,
    case13Terminal307ForcedPossible6,
    case13Terminal307UniquePossible6⟩

end MQGN6Audit

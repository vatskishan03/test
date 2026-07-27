import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340Unique

/-!
# Singleton kernel replay of case-13 terminal 340
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal340ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 340 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 340 234 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal340AllowedPossible6,
    case13Terminal340ForcedPossible6,
    case13Terminal340UniquePossible6⟩

end MQGN6Audit

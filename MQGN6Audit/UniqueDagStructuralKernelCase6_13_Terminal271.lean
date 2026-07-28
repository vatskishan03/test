import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271Unique

/-!
# Singleton kernel replay of case-13 terminal 271
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal271ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 271 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 271 25 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal271AllowedPossible6,
    case13Terminal271ForcedPossible6,
    case13Terminal271UniquePossible6⟩

end MQGN6Audit

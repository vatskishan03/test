import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389Unique

/-!
# Singleton kernel replay of case-13 terminal 389
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal389ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 389 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 389 50 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal389AllowedPossible6,
    case13Terminal389ForcedPossible6,
    case13Terminal389UniquePossible6⟩

end MQGN6Audit

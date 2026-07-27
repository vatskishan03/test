import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401Unique

/-!
# Singleton kernel replay of case-13 terminal 401
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal401ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 401 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 401 57 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal401AllowedPossible6,
    case13Terminal401ForcedPossible6,
    case13Terminal401UniquePossible6⟩

end MQGN6Audit

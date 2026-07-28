import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437Unique

/-!
# Singleton kernel replay of case-13 terminal 437
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal437ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 437 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 437 119 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal437AllowedPossible6,
    case13Terminal437ForcedPossible6,
    case13Terminal437UniquePossible6⟩

end MQGN6Audit

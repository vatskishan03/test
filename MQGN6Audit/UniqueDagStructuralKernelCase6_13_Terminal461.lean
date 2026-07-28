import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461Unique

/-!
# Singleton kernel replay of case-13 terminal 461
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal461ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 461 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 461 75 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal461AllowedPossible6,
    case13Terminal461ForcedPossible6,
    case13Terminal461UniquePossible6⟩

end MQGN6Audit

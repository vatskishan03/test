import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423Unique

/-!
# Singleton kernel replay of case-13 terminal 423
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal423ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 423 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 423 127 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal423AllowedPossible6,
    case13Terminal423ForcedPossible6,
    case13Terminal423UniquePossible6⟩

end MQGN6Audit

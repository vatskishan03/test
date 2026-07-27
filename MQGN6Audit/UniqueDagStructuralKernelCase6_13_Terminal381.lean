import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381Unique

/-!
# Singleton kernel replay of case-13 terminal 381
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal381ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 381 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 381 101 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal381AllowedPossible6,
    case13Terminal381ForcedPossible6,
    case13Terminal381UniquePossible6⟩

end MQGN6Audit

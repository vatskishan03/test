import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395Unique

/-!
# Singleton kernel replay of case-13 terminal 395
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal395ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 395 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 395 114 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal395AllowedPossible6,
    case13Terminal395ForcedPossible6,
    case13Terminal395UniquePossible6⟩

end MQGN6Audit

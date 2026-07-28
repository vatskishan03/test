import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416Unique

/-!
# Singleton kernel replay of case-13 terminal 416
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal416ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 416 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 416 62 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal416AllowedPossible6,
    case13Terminal416ForcedPossible6,
    case13Terminal416UniquePossible6⟩

end MQGN6Audit

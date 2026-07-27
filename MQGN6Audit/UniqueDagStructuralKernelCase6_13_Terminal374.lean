import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374Unique

/-!
# Singleton kernel replay of case-13 terminal 374
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal374ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 374 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 374 38 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal374AllowedPossible6,
    case13Terminal374ForcedPossible6,
    case13Terminal374UniquePossible6⟩

end MQGN6Audit

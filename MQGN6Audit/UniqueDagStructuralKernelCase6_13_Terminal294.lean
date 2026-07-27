import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294Unique

/-!
# Singleton kernel replay of case-13 terminal 294
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal294ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 294 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 294 94 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal294AllowedPossible6,
    case13Terminal294ForcedPossible6,
    case13Terminal294UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480Unique

/-!
# Singleton kernel replay of case-13 terminal 480
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal480ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 480 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 480 133 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal480AllowedPossible6,
    case13Terminal480ForcedPossible6,
    case13Terminal480UniquePossible6⟩

end MQGN6Audit

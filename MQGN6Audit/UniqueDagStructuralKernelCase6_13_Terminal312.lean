import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312Unique

/-!
# Singleton kernel replay of case-13 terminal 312
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal312ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 312 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 312 86 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal312AllowedPossible6,
    case13Terminal312ForcedPossible6,
    case13Terminal312UniquePossible6⟩

end MQGN6Audit

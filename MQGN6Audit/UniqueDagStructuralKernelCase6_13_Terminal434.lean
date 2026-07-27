import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434Unique

/-!
# Singleton kernel replay of case-13 terminal 434
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal434ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 434 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 434 116 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal434AllowedPossible6,
    case13Terminal434ForcedPossible6,
    case13Terminal434UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460Unique

/-!
# Singleton kernel replay of case-13 terminal 460
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal460ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 460 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 460 74 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal460AllowedPossible6,
    case13Terminal460ForcedPossible6,
    case13Terminal460UniquePossible6⟩

end MQGN6Audit

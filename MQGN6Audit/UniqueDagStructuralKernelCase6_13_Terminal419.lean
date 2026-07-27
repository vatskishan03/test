import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419Unique

/-!
# Singleton kernel replay of case-13 terminal 419
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal419ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 419 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 419 189 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal419AllowedPossible6,
    case13Terminal419ForcedPossible6,
    case13Terminal419UniquePossible6⟩

end MQGN6Audit

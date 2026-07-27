import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325Unique

/-!
# Singleton kernel replay of case-13 terminal 325
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal325ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 325 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 325 161 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal325AllowedPossible6,
    case13Terminal325ForcedPossible6,
    case13Terminal325UniquePossible6⟩

end MQGN6Audit

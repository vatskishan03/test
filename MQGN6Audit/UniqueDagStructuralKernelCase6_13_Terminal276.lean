import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276Unique

/-!
# Singleton kernel replay of case-13 terminal 276
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal276ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 276 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 276 153 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal276AllowedPossible6,
    case13Terminal276ForcedPossible6,
    case13Terminal276UniquePossible6⟩

end MQGN6Audit

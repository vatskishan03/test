import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328Unique

/-!
# Singleton kernel replay of case-13 terminal 328
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal328ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 328 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 328 98 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal328AllowedPossible6,
    case13Terminal328ForcedPossible6,
    case13Terminal328UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262Unique

/-!
# Singleton kernel replay of case-13 terminal 262
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal262ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 262 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 262 17 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal262AllowedPossible6,
    case13Terminal262ForcedPossible6,
    case13Terminal262UniquePossible6⟩

end MQGN6Audit

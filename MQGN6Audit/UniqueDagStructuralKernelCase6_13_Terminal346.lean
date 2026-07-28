import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal346Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal346Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal346Unique

/-!
# Singleton kernel replay of case-13 terminal 346
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal346ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 346 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 346 104 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal346AllowedPossible6,
    case13Terminal346ForcedPossible6,
    case13Terminal346UniquePossible6⟩

end MQGN6Audit

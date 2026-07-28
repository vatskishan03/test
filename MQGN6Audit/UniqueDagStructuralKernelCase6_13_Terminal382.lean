import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382Unique

/-!
# Singleton kernel replay of case-13 terminal 382
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal382ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 382 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 382 102 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal382AllowedPossible6,
    case13Terminal382ForcedPossible6,
    case13Terminal382UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378Unique

/-!
# Singleton kernel replay of case-13 terminal 378
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal378ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 378 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 378 165 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal378AllowedPossible6,
    case13Terminal378ForcedPossible6,
    case13Terminal378UniquePossible6⟩

end MQGN6Audit

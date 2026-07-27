import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380Unique

/-!
# Singleton kernel replay of case-13 terminal 380
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal380ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 380 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 380 100 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal380AllowedPossible6,
    case13Terminal380ForcedPossible6,
    case13Terminal380UniquePossible6⟩

end MQGN6Audit

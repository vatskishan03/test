import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485Unique

/-!
# Singleton kernel replay of case-13 terminal 485
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal485ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 485 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 485 71 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal485AllowedPossible6,
    case13Terminal485ForcedPossible6,
    case13Terminal485UniquePossible6⟩

end MQGN6Audit

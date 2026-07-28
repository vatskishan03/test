import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285Unique

/-!
# Singleton kernel replay of case-13 terminal 285
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal285ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 285 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 285 29 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal285AllowedPossible6,
    case13Terminal285ForcedPossible6,
    case13Terminal285UniquePossible6⟩

end MQGN6Audit

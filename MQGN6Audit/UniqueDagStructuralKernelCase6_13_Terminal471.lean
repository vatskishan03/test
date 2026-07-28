import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471Unique

/-!
# Singleton kernel replay of case-13 terminal 471
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal471ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 471 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 471 141 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal471AllowedPossible6,
    case13Terminal471ForcedPossible6,
    case13Terminal471UniquePossible6⟩

end MQGN6Audit

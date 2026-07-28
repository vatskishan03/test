import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373Unique

/-!
# Singleton kernel replay of case-13 terminal 373
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal373ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 373 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 373 37 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal373AllowedPossible6,
    case13Terminal373ForcedPossible6,
    case13Terminal373UniquePossible6⟩

end MQGN6Audit

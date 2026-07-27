import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289Unique

/-!
# Singleton kernel replay of case-13 terminal 289
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal289ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 289 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 289 156 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal289AllowedPossible6,
    case13Terminal289ForcedPossible6,
    case13Terminal289UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337Unique

/-!
# Singleton kernel replay of case-13 terminal 337
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal337ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 337 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 337 42 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal337AllowedPossible6,
    case13Terminal337ForcedPossible6,
    case13Terminal337UniquePossible6⟩

end MQGN6Audit

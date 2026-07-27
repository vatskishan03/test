import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363Unique

/-!
# Singleton kernel replay of case-13 terminal 363
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal363ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 363 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 363 109 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal363AllowedPossible6,
    case13Terminal363ForcedPossible6,
    case13Terminal363UniquePossible6⟩

end MQGN6Audit

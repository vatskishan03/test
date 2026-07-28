import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311Unique

/-!
# Singleton kernel replay of case-13 terminal 311
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal311ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 311 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 311 85 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal311AllowedPossible6,
    case13Terminal311ForcedPossible6,
    case13Terminal311UniquePossible6⟩

end MQGN6Audit

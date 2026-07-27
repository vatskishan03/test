import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292Unique

/-!
# Singleton kernel replay of case-13 terminal 292
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal292ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 292 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 292 92 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal292AllowedPossible6,
    case13Terminal292ForcedPossible6,
    case13Terminal292UniquePossible6⟩

end MQGN6Audit

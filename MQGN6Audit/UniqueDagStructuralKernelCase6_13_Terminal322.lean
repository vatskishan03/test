import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322Unique

/-!
# Singleton kernel replay of case-13 terminal 322
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal322ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 322 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 322 34 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal322AllowedPossible6,
    case13Terminal322ForcedPossible6,
    case13Terminal322UniquePossible6⟩

end MQGN6Audit

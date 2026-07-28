import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327Unique

/-!
# Singleton kernel replay of case-13 terminal 327
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal327ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 327 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 327 97 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal327AllowedPossible6,
    case13Terminal327ForcedPossible6,
    case13Terminal327UniquePossible6⟩

end MQGN6Audit

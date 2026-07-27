import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421Unique

/-!
# Singleton kernel replay of case-13 terminal 421
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal421ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 421 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 421 125 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal421AllowedPossible6,
    case13Terminal421ForcedPossible6,
    case13Terminal421UniquePossible6⟩

end MQGN6Audit

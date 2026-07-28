import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275Unique

/-!
# Singleton kernel replay of case-13 terminal 275
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 275 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 275 152 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal275AllowedPossible6,
    case13Terminal275ForcedPossible6,
    case13Terminal275UniquePossible6⟩

end MQGN6Audit

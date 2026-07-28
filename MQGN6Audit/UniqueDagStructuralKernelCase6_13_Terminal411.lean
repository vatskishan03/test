import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411Unique

/-!
# Singleton kernel replay of case-13 terminal 411
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal411ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 411 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 411 123 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal411AllowedPossible6,
    case13Terminal411ForcedPossible6,
    case13Terminal411UniquePossible6⟩

end MQGN6Audit

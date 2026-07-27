import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308Unique

/-!
# Singleton kernel replay of case-13 terminal 308
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal308ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 308 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 308 149 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal308AllowedPossible6,
    case13Terminal308ForcedPossible6,
    case13Terminal308UniquePossible6⟩

end MQGN6Audit

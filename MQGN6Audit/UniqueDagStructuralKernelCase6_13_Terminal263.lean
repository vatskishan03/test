import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263Unique

/-!
# Singleton kernel replay of case-13 terminal 263
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal263ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 263 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 263 18 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal263AllowedPossible6,
    case13Terminal263ForcedPossible6,
    case13Terminal263UniquePossible6⟩

end MQGN6Audit

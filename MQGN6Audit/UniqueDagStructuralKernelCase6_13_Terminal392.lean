import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392Unique

/-!
# Singleton kernel replay of case-13 terminal 392
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal392ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 392 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 392 177 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal392AllowedPossible6,
    case13Terminal392ForcedPossible6,
    case13Terminal392UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427Unique

/-!
# Singleton kernel replay of case-13 terminal 427
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal427ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 427 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 427 53 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal427AllowedPossible6,
    case13Terminal427ForcedPossible6,
    case13Terminal427UniquePossible6⟩

end MQGN6Audit

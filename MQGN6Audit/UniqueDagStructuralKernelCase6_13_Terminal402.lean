import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402Unique

/-!
# Singleton kernel replay of case-13 terminal 402
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal402ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 402 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 402 58 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal402AllowedPossible6,
    case13Terminal402ForcedPossible6,
    case13Terminal402UniquePossible6⟩

end MQGN6Audit

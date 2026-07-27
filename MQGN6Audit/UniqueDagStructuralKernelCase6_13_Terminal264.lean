import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264Unique

/-!
# Singleton kernel replay of case-13 terminal 264
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal264ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 264 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 264 19 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal264AllowedPossible6,
    case13Terminal264ForcedPossible6,
    case13Terminal264UniquePossible6⟩

end MQGN6Audit

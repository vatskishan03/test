import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344Unique

/-!
# Singleton kernel replay of case-13 terminal 344
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal344ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 344 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 344 171 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal344AllowedPossible6,
    case13Terminal344ForcedPossible6,
    case13Terminal344UniquePossible6⟩

end MQGN6Audit

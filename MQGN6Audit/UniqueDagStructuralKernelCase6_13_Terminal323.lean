import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323Unique

/-!
# Singleton kernel replay of case-13 terminal 323
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal323ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 323 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 323 35 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal323AllowedPossible6,
    case13Terminal323ForcedPossible6,
    case13Terminal323UniquePossible6⟩

end MQGN6Audit

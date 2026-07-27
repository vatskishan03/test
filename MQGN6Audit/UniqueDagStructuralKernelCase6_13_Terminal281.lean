import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281Unique

/-!
# Singleton kernel replay of case-13 terminal 281
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal281ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 281 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 281 91 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal281AllowedPossible6,
    case13Terminal281ForcedPossible6,
    case13Terminal281UniquePossible6⟩

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299Unique

/-!
# Singleton kernel replay of case-13 terminal 299
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal299ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 299 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 299 261 14
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal299AllowedPossible6,
    case13Terminal299ForcedPossible6,
    case13Terminal299UniquePossible6⟩

end MQGN6Audit

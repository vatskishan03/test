import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417Unique

/-!
# Singleton kernel replay of case-13 terminal 417
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal417ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 417 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 417 63 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal417AllowedPossible6,
    case13Terminal417ForcedPossible6,
    case13Terminal417UniquePossible6⟩

end MQGN6Audit

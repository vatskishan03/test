import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272Allowed
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272Forced
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272Unique

/-!
# Singleton kernel replay of case-13 terminal 272
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal272ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 272 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 272 26 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal272AllowedPossible6,
    case13Terminal272ForcedPossible6,
    case13Terminal272UniquePossible6⟩

end MQGN6Audit

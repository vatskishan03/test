import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Target check for case-13 survivor terminal 465
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal465TargetPossible6 :
    survivorTarget6 19 = feasibleTargetRep6 13 := by
  decide +kernel

end MQGN6Audit

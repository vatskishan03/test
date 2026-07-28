import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Target check for case-13 survivor terminal 447
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal447TargetPossible6 :
    survivorTarget6 18 = feasibleTargetRep6 13 := by
  decide +kernel

end MQGN6Audit

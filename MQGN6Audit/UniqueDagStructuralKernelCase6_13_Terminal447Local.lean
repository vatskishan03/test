import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Local-template check for case-13 survivor terminal 447
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal447LocalPossible6 :
    rawDagSurvivorLocalValidPossible6 (uniqueDagCase6 13) 18 := by
  decide +kernel

end MQGN6Audit

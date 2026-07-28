import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Local-template check for case-13 survivor terminal 465
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal465LocalPossible6 :
    rawDagSurvivorLocalValidPossible6 (uniqueDagCase6 13) 19 := by
  decide +kernel

end MQGN6Audit

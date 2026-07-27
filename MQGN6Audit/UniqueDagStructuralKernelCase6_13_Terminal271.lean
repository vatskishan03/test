import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Singleton kernel replay of case-13 terminal 271
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal271ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 271 := by
  decide +kernel

end MQGN6Audit

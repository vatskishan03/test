import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal406ForcedK1Possible6 :
    case13Terminal406ForcedAtPossible6 1 := by
  unfold case13Terminal406ForcedAtPossible6
  decide +kernel

end MQGN6Audit

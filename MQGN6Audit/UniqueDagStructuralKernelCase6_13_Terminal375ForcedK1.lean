import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal375ForcedK1Possible6 :
    case13Terminal375ForcedAtPossible6 1 := by
  unfold case13Terminal375ForcedAtPossible6
  decide +kernel

end MQGN6Audit

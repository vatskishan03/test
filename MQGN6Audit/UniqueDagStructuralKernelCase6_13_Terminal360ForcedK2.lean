import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal360ForcedK2Possible6 :
    case13Terminal360ForcedAtPossible6 2 := by
  unfold case13Terminal360ForcedAtPossible6
  decide +kernel

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal280ForcedK2Possible6 :
    case13Terminal280ForcedAtPossible6 2 := by
  unfold case13Terminal280ForcedAtPossible6
  decide +kernel

end MQGN6Audit

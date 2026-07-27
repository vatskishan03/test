import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal401ForcedK0Possible6 :
    case13Terminal401ForcedAtPossible6 0 := by
  unfold case13Terminal401ForcedAtPossible6
  decide +kernel

end MQGN6Audit

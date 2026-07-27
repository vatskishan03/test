import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal421ForcedK1Possible6 :
    case13Terminal421ForcedAtPossible6 1 := by
  unfold case13Terminal421ForcedAtPossible6
  decide +kernel

end MQGN6Audit

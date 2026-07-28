import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403ForcedBase

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal403ForcedK1Possible6 :
    case13Terminal403ForcedAtPossible6 1 := by
  unfold case13Terminal403ForcedAtPossible6
  decide +kernel

end MQGN6Audit

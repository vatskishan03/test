import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal428AllowedV0Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 428 0 fun code =>
      codeAllowsMatchingAtFast6 code 0 (decodeDagColoringFast6 54) 12 := by
  decide +kernel

end MQGN6Audit

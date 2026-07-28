import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal362AllowedV3Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 362 3 fun code =>
      codeAllowsMatchingAtFast6 code 3 (decodeDagColoringFast6 108) 12 := by
  decide +kernel

end MQGN6Audit

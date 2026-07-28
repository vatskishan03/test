import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal392AllowedV1Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 392 1 fun code =>
      codeAllowsMatchingAtFast6 code 1 (decodeDagColoringFast6 177) 12 := by
  decide +kernel

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal280AllowedV0Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 280 0 fun code =>
      codeAllowsMatchingAtFast6 code 0 (decodeDagColoringFast6 90) 12 := by
  decide +kernel

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal392AllowedV4Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 392 4 fun code =>
      codeAllowsMatchingAtFast6 code 4 (decodeDagColoringFast6 177) 12 := by
  decide +kernel

end MQGN6Audit

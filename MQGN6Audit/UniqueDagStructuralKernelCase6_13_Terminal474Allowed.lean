import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474AllowedV5

/-!
# Allowed-code checks for case-13 terminal 474
-/

namespace MQGN6Audit

theorem case13Terminal474AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 474 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 77) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal474AllowedV0Possible6
  · exact case13Terminal474AllowedV1Possible6
  · exact case13Terminal474AllowedV2Possible6
  · exact case13Terminal474AllowedV3Possible6
  · exact case13Terminal474AllowedV4Possible6
  · exact case13Terminal474AllowedV5Possible6

end MQGN6Audit

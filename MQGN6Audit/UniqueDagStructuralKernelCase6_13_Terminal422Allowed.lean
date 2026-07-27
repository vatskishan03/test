import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422AllowedV5

/-!
# Allowed-code checks for case-13 terminal 422
-/

namespace MQGN6Audit

theorem case13Terminal422AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 422 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 126) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal422AllowedV0Possible6
  · exact case13Terminal422AllowedV1Possible6
  · exact case13Terminal422AllowedV2Possible6
  · exact case13Terminal422AllowedV3Possible6
  · exact case13Terminal422AllowedV4Possible6
  · exact case13Terminal422AllowedV5Possible6

end MQGN6Audit

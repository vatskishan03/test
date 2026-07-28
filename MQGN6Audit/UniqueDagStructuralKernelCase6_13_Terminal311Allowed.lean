import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311AllowedV5

/-!
# Allowed-code checks for case-13 terminal 311
-/

namespace MQGN6Audit

theorem case13Terminal311AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 311 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 85) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal311AllowedV0Possible6
  · exact case13Terminal311AllowedV1Possible6
  · exact case13Terminal311AllowedV2Possible6
  · exact case13Terminal311AllowedV3Possible6
  · exact case13Terminal311AllowedV4Possible6
  · exact case13Terminal311AllowedV5Possible6

end MQGN6Audit

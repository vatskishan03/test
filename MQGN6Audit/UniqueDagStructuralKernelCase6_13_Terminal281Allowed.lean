import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281AllowedV5

/-!
# Allowed-code checks for case-13 terminal 281
-/

namespace MQGN6Audit

theorem case13Terminal281AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 281 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 91) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal281AllowedV0Possible6
  · exact case13Terminal281AllowedV1Possible6
  · exact case13Terminal281AllowedV2Possible6
  · exact case13Terminal281AllowedV3Possible6
  · exact case13Terminal281AllowedV4Possible6
  · exact case13Terminal281AllowedV5Possible6

end MQGN6Audit

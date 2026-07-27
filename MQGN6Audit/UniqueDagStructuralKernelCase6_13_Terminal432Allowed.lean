import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432AllowedV5

/-!
# Allowed-code checks for case-13 terminal 432
-/

namespace MQGN6Audit

theorem case13Terminal432AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 432 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 181) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal432AllowedV0Possible6
  · exact case13Terminal432AllowedV1Possible6
  · exact case13Terminal432AllowedV2Possible6
  · exact case13Terminal432AllowedV3Possible6
  · exact case13Terminal432AllowedV4Possible6
  · exact case13Terminal432AllowedV5Possible6

end MQGN6Audit

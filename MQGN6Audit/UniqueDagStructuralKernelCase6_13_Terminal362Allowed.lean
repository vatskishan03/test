import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362AllowedV5

/-!
# Allowed-code checks for case-13 terminal 362
-/

namespace MQGN6Audit

theorem case13Terminal362AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 362 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 108) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal362AllowedV0Possible6
  · exact case13Terminal362AllowedV1Possible6
  · exact case13Terminal362AllowedV2Possible6
  · exact case13Terminal362AllowedV3Possible6
  · exact case13Terminal362AllowedV4Possible6
  · exact case13Terminal362AllowedV5Possible6

end MQGN6Audit

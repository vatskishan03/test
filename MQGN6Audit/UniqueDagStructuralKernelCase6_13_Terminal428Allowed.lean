import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428AllowedV5

/-!
# Allowed-code checks for case-13 terminal 428
-/

namespace MQGN6Audit

theorem case13Terminal428AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 428 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 54) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal428AllowedV0Possible6
  · exact case13Terminal428AllowedV1Possible6
  · exact case13Terminal428AllowedV2Possible6
  · exact case13Terminal428AllowedV3Possible6
  · exact case13Terminal428AllowedV4Possible6
  · exact case13Terminal428AllowedV5Possible6

end MQGN6Audit

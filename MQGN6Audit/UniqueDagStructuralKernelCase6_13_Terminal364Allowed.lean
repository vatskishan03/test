import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364AllowedV5

/-!
# Allowed-code checks for case-13 terminal 364
-/

namespace MQGN6Audit

theorem case13Terminal364AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 364 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 110) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal364AllowedV0Possible6
  · exact case13Terminal364AllowedV1Possible6
  · exact case13Terminal364AllowedV2Possible6
  · exact case13Terminal364AllowedV3Possible6
  · exact case13Terminal364AllowedV4Possible6
  · exact case13Terminal364AllowedV5Possible6

end MQGN6Audit

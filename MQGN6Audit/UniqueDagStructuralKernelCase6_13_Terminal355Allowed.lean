import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355AllowedV5

/-!
# Allowed-code checks for case-13 terminal 355
-/

namespace MQGN6Audit

theorem case13Terminal355AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 355 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 45) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal355AllowedV0Possible6
  · exact case13Terminal355AllowedV1Possible6
  · exact case13Terminal355AllowedV2Possible6
  · exact case13Terminal355AllowedV3Possible6
  · exact case13Terminal355AllowedV4Possible6
  · exact case13Terminal355AllowedV5Possible6

end MQGN6Audit

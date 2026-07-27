import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406AllowedV5

/-!
# Allowed-code checks for case-13 terminal 406
-/

namespace MQGN6Audit

theorem case13Terminal406AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 406 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 185) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal406AllowedV0Possible6
  · exact case13Terminal406AllowedV1Possible6
  · exact case13Terminal406AllowedV2Possible6
  · exact case13Terminal406AllowedV3Possible6
  · exact case13Terminal406AllowedV4Possible6
  · exact case13Terminal406AllowedV5Possible6

end MQGN6Audit

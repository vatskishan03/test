import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273AllowedV5

/-!
# Allowed-code checks for case-13 terminal 273
-/

namespace MQGN6Audit

theorem case13Terminal273AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 273 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 27) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal273AllowedV0Possible6
  · exact case13Terminal273AllowedV1Possible6
  · exact case13Terminal273AllowedV2Possible6
  · exact case13Terminal273AllowedV3Possible6
  · exact case13Terminal273AllowedV4Possible6
  · exact case13Terminal273AllowedV5Possible6

end MQGN6Audit

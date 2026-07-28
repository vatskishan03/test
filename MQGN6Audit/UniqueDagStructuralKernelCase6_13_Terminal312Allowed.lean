import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312AllowedV5

/-!
# Allowed-code checks for case-13 terminal 312
-/

namespace MQGN6Audit

theorem case13Terminal312AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 312 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 86) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal312AllowedV0Possible6
  · exact case13Terminal312AllowedV1Possible6
  · exact case13Terminal312AllowedV2Possible6
  · exact case13Terminal312AllowedV3Possible6
  · exact case13Terminal312AllowedV4Possible6
  · exact case13Terminal312AllowedV5Possible6

end MQGN6Audit

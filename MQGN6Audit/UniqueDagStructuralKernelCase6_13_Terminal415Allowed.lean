import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415AllowedV5

/-!
# Allowed-code checks for case-13 terminal 415
-/

namespace MQGN6Audit

theorem case13Terminal415AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 415 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 61) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal415AllowedV0Possible6
  · exact case13Terminal415AllowedV1Possible6
  · exact case13Terminal415AllowedV2Possible6
  · exact case13Terminal415AllowedV3Possible6
  · exact case13Terminal415AllowedV4Possible6
  · exact case13Terminal415AllowedV5Possible6

end MQGN6Audit

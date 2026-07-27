import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342AllowedV5

/-!
# Allowed-code checks for case-13 terminal 342
-/

namespace MQGN6Audit

theorem case13Terminal342AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 342 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 168) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal342AllowedV0Possible6
  · exact case13Terminal342AllowedV1Possible6
  · exact case13Terminal342AllowedV2Possible6
  · exact case13Terminal342AllowedV3Possible6
  · exact case13Terminal342AllowedV4Possible6
  · exact case13Terminal342AllowedV5Possible6

end MQGN6Audit

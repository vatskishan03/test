import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294AllowedV5

/-!
# Allowed-code checks for case-13 terminal 294
-/

namespace MQGN6Audit

theorem case13Terminal294AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 294 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 94) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal294AllowedV0Possible6
  · exact case13Terminal294AllowedV1Possible6
  · exact case13Terminal294AllowedV2Possible6
  · exact case13Terminal294AllowedV3Possible6
  · exact case13Terminal294AllowedV4Possible6
  · exact case13Terminal294AllowedV5Possible6

end MQGN6Audit

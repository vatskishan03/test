import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279AllowedV5

/-!
# Allowed-code checks for case-13 terminal 279
-/

namespace MQGN6Audit

theorem case13Terminal279AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 279 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 89) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal279AllowedV0Possible6
  · exact case13Terminal279AllowedV1Possible6
  · exact case13Terminal279AllowedV2Possible6
  · exact case13Terminal279AllowedV3Possible6
  · exact case13Terminal279AllowedV4Possible6
  · exact case13Terminal279AllowedV5Possible6

end MQGN6Audit

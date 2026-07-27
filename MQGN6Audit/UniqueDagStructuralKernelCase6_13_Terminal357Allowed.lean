import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357AllowedV5

/-!
# Allowed-code checks for case-13 terminal 357
-/

namespace MQGN6Audit

theorem case13Terminal357AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 357 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 47) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal357AllowedV0Possible6
  · exact case13Terminal357AllowedV1Possible6
  · exact case13Terminal357AllowedV2Possible6
  · exact case13Terminal357AllowedV3Possible6
  · exact case13Terminal357AllowedV4Possible6
  · exact case13Terminal357AllowedV5Possible6

end MQGN6Audit

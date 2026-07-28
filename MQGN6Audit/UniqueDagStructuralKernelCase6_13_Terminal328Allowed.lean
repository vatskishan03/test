import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328AllowedV5

/-!
# Allowed-code checks for case-13 terminal 328
-/

namespace MQGN6Audit

theorem case13Terminal328AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 328 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 98) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal328AllowedV0Possible6
  · exact case13Terminal328AllowedV1Possible6
  · exact case13Terminal328AllowedV2Possible6
  · exact case13Terminal328AllowedV3Possible6
  · exact case13Terminal328AllowedV4Possible6
  · exact case13Terminal328AllowedV5Possible6

end MQGN6Audit

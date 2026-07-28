import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484AllowedV5

/-!
# Allowed-code checks for case-13 terminal 484
-/

namespace MQGN6Audit

theorem case13Terminal484AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 484 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 70) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal484AllowedV0Possible6
  · exact case13Terminal484AllowedV1Possible6
  · exact case13Terminal484AllowedV2Possible6
  · exact case13Terminal484AllowedV3Possible6
  · exact case13Terminal484AllowedV4Possible6
  · exact case13Terminal484AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396AllowedV5

/-!
# Allowed-code checks for case-13 terminal 396
-/

namespace MQGN6Audit

theorem case13Terminal396AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 396 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 115) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal396AllowedV0Possible6
  · exact case13Terminal396AllowedV1Possible6
  · exact case13Terminal396AllowedV2Possible6
  · exact case13Terminal396AllowedV3Possible6
  · exact case13Terminal396AllowedV4Possible6
  · exact case13Terminal396AllowedV5Possible6

end MQGN6Audit

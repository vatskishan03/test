import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461AllowedV5

/-!
# Allowed-code checks for case-13 terminal 461
-/

namespace MQGN6Audit

theorem case13Terminal461AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 461 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 75) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal461AllowedV0Possible6
  · exact case13Terminal461AllowedV1Possible6
  · exact case13Terminal461AllowedV2Possible6
  · exact case13Terminal461AllowedV3Possible6
  · exact case13Terminal461AllowedV4Possible6
  · exact case13Terminal461AllowedV5Possible6

end MQGN6Audit

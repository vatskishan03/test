import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483AllowedV5

/-!
# Allowed-code checks for case-13 terminal 483
-/

namespace MQGN6Audit

theorem case13Terminal483AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 483 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 69) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal483AllowedV0Possible6
  · exact case13Terminal483AllowedV1Possible6
  · exact case13Terminal483AllowedV2Possible6
  · exact case13Terminal483AllowedV3Possible6
  · exact case13Terminal483AllowedV4Possible6
  · exact case13Terminal483AllowedV5Possible6

end MQGN6Audit

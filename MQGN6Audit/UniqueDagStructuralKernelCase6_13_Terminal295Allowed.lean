import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295AllowedV5

/-!
# Allowed-code checks for case-13 terminal 295
-/

namespace MQGN6Audit

theorem case13Terminal295AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 295 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 95) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal295AllowedV0Possible6
  · exact case13Terminal295AllowedV1Possible6
  · exact case13Terminal295AllowedV2Possible6
  · exact case13Terminal295AllowedV3Possible6
  · exact case13Terminal295AllowedV4Possible6
  · exact case13Terminal295AllowedV5Possible6

end MQGN6Audit

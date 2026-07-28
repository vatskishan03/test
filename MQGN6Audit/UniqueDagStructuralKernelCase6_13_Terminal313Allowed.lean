import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313AllowedV5

/-!
# Allowed-code checks for case-13 terminal 313
-/

namespace MQGN6Audit

theorem case13Terminal313AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 313 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 87) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal313AllowedV0Possible6
  · exact case13Terminal313AllowedV1Possible6
  · exact case13Terminal313AllowedV2Possible6
  · exact case13Terminal313AllowedV3Possible6
  · exact case13Terminal313AllowedV4Possible6
  · exact case13Terminal313AllowedV5Possible6

end MQGN6Audit

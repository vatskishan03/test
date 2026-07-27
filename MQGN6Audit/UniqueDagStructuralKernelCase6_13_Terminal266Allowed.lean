import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266AllowedV5

/-!
# Allowed-code checks for case-13 terminal 266
-/

namespace MQGN6Audit

theorem case13Terminal266AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 266 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 145) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal266AllowedV0Possible6
  · exact case13Terminal266AllowedV1Possible6
  · exact case13Terminal266AllowedV2Possible6
  · exact case13Terminal266AllowedV3Possible6
  · exact case13Terminal266AllowedV4Possible6
  · exact case13Terminal266AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374AllowedV5

/-!
# Allowed-code checks for case-13 terminal 374
-/

namespace MQGN6Audit

theorem case13Terminal374AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 374 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 38) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal374AllowedV0Possible6
  · exact case13Terminal374AllowedV1Possible6
  · exact case13Terminal374AllowedV2Possible6
  · exact case13Terminal374AllowedV3Possible6
  · exact case13Terminal374AllowedV4Possible6
  · exact case13Terminal374AllowedV5Possible6

end MQGN6Audit

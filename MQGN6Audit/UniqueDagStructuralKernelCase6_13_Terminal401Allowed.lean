import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401AllowedV5

/-!
# Allowed-code checks for case-13 terminal 401
-/

namespace MQGN6Audit

theorem case13Terminal401AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 401 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 57) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal401AllowedV0Possible6
  · exact case13Terminal401AllowedV1Possible6
  · exact case13Terminal401AllowedV2Possible6
  · exact case13Terminal401AllowedV3Possible6
  · exact case13Terminal401AllowedV4Possible6
  · exact case13Terminal401AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437AllowedV5

/-!
# Allowed-code checks for case-13 terminal 437
-/

namespace MQGN6Audit

theorem case13Terminal437AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 437 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 119) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal437AllowedV0Possible6
  · exact case13Terminal437AllowedV1Possible6
  · exact case13Terminal437AllowedV2Possible6
  · exact case13Terminal437AllowedV3Possible6
  · exact case13Terminal437AllowedV4Possible6
  · exact case13Terminal437AllowedV5Possible6

end MQGN6Audit

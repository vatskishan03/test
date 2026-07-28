import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349AllowedV5

/-!
# Allowed-code checks for case-13 terminal 349
-/

namespace MQGN6Audit

theorem case13Terminal349AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 349 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 107) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal349AllowedV0Possible6
  · exact case13Terminal349AllowedV1Possible6
  · exact case13Terminal349AllowedV2Possible6
  · exact case13Terminal349AllowedV3Possible6
  · exact case13Terminal349AllowedV4Possible6
  · exact case13Terminal349AllowedV5Possible6

end MQGN6Audit

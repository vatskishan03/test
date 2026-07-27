import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245AllowedV5

/-!
# Allowed-code checks for case-13 terminal 245
-/

namespace MQGN6Audit

theorem case13Terminal245AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 245 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 1258) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal245AllowedV0Possible6
  · exact case13Terminal245AllowedV1Possible6
  · exact case13Terminal245AllowedV2Possible6
  · exact case13Terminal245AllowedV3Possible6
  · exact case13Terminal245AllowedV4Possible6
  · exact case13Terminal245AllowedV5Possible6

end MQGN6Audit

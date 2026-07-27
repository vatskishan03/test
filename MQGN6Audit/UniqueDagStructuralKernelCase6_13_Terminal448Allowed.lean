import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448AllowedV5

/-!
# Allowed-code checks for case-13 terminal 448
-/

namespace MQGN6Audit

theorem case13Terminal448AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 448 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 263) 14 := by
  intro v
  fin_cases v
  · exact case13Terminal448AllowedV0Possible6
  · exact case13Terminal448AllowedV1Possible6
  · exact case13Terminal448AllowedV2Possible6
  · exact case13Terminal448AllowedV3Possible6
  · exact case13Terminal448AllowedV4Possible6
  · exact case13Terminal448AllowedV5Possible6

end MQGN6Audit

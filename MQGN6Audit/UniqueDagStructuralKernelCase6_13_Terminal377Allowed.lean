import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377AllowedV5

/-!
# Allowed-code checks for case-13 terminal 377
-/

namespace MQGN6Audit

theorem case13Terminal377AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 377 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 164) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal377AllowedV0Possible6
  · exact case13Terminal377AllowedV1Possible6
  · exact case13Terminal377AllowedV2Possible6
  · exact case13Terminal377AllowedV3Possible6
  · exact case13Terminal377AllowedV4Possible6
  · exact case13Terminal377AllowedV5Possible6

end MQGN6Audit

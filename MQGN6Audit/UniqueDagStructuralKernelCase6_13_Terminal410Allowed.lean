import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410AllowedV5

/-!
# Allowed-code checks for case-13 terminal 410
-/

namespace MQGN6Audit

theorem case13Terminal410AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 410 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 122) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal410AllowedV0Possible6
  · exact case13Terminal410AllowedV1Possible6
  · exact case13Terminal410AllowedV2Possible6
  · exact case13Terminal410AllowedV3Possible6
  · exact case13Terminal410AllowedV4Possible6
  · exact case13Terminal410AllowedV5Possible6

end MQGN6Audit

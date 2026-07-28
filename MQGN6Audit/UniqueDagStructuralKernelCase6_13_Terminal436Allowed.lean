import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436AllowedV5

/-!
# Allowed-code checks for case-13 terminal 436
-/

namespace MQGN6Audit

theorem case13Terminal436AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 436 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 118) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal436AllowedV0Possible6
  · exact case13Terminal436AllowedV1Possible6
  · exact case13Terminal436AllowedV2Possible6
  · exact case13Terminal436AllowedV3Possible6
  · exact case13Terminal436AllowedV4Possible6
  · exact case13Terminal436AllowedV5Possible6

end MQGN6Audit

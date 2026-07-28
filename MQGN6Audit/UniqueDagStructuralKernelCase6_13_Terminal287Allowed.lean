import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287AllowedV5

/-!
# Allowed-code checks for case-13 terminal 287
-/

namespace MQGN6Audit

theorem case13Terminal287AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 287 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 31) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal287AllowedV0Possible6
  · exact case13Terminal287AllowedV1Possible6
  · exact case13Terminal287AllowedV2Possible6
  · exact case13Terminal287AllowedV3Possible6
  · exact case13Terminal287AllowedV4Possible6
  · exact case13Terminal287AllowedV5Possible6

end MQGN6Audit

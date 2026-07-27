import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290AllowedV5

/-!
# Allowed-code checks for case-13 terminal 290
-/

namespace MQGN6Audit

theorem case13Terminal290AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 290 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 157) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal290AllowedV0Possible6
  · exact case13Terminal290AllowedV1Possible6
  · exact case13Terminal290AllowedV2Possible6
  · exact case13Terminal290AllowedV3Possible6
  · exact case13Terminal290AllowedV4Possible6
  · exact case13Terminal290AllowedV5Possible6

end MQGN6Audit

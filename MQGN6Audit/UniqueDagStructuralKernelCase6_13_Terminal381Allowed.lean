import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381AllowedV5

/-!
# Allowed-code checks for case-13 terminal 381
-/

namespace MQGN6Audit

theorem case13Terminal381AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 381 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 101) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal381AllowedV0Possible6
  · exact case13Terminal381AllowedV1Possible6
  · exact case13Terminal381AllowedV2Possible6
  · exact case13Terminal381AllowedV3Possible6
  · exact case13Terminal381AllowedV4Possible6
  · exact case13Terminal381AllowedV5Possible6

end MQGN6Audit

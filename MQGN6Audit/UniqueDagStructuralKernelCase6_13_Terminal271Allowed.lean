import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271AllowedV5

/-!
# Allowed-code checks for case-13 terminal 271
-/

namespace MQGN6Audit

theorem case13Terminal271AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 271 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 25) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal271AllowedV0Possible6
  · exact case13Terminal271AllowedV1Possible6
  · exact case13Terminal271AllowedV2Possible6
  · exact case13Terminal271AllowedV3Possible6
  · exact case13Terminal271AllowedV4Possible6
  · exact case13Terminal271AllowedV5Possible6

end MQGN6Audit

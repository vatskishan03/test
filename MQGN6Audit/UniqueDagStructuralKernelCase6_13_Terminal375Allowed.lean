import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375AllowedV5

/-!
# Allowed-code checks for case-13 terminal 375
-/

namespace MQGN6Audit

theorem case13Terminal375AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 375 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 39) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal375AllowedV0Possible6
  · exact case13Terminal375AllowedV1Possible6
  · exact case13Terminal375AllowedV2Possible6
  · exact case13Terminal375AllowedV3Possible6
  · exact case13Terminal375AllowedV4Possible6
  · exact case13Terminal375AllowedV5Possible6

end MQGN6Audit

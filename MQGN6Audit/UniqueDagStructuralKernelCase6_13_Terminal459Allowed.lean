import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459AllowedV5

/-!
# Allowed-code checks for case-13 terminal 459
-/

namespace MQGN6Audit

theorem case13Terminal459AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 459 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 73) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal459AllowedV0Possible6
  · exact case13Terminal459AllowedV1Possible6
  · exact case13Terminal459AllowedV2Possible6
  · exact case13Terminal459AllowedV3Possible6
  · exact case13Terminal459AllowedV4Possible6
  · exact case13Terminal459AllowedV5Possible6

end MQGN6Audit

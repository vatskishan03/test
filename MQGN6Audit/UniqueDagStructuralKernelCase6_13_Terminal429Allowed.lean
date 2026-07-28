import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429AllowedV5

/-!
# Allowed-code checks for case-13 terminal 429
-/

namespace MQGN6Audit

theorem case13Terminal429AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 429 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 55) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal429AllowedV0Possible6
  · exact case13Terminal429AllowedV1Possible6
  · exact case13Terminal429AllowedV2Possible6
  · exact case13Terminal429AllowedV3Possible6
  · exact case13Terminal429AllowedV4Possible6
  · exact case13Terminal429AllowedV5Possible6

end MQGN6Audit

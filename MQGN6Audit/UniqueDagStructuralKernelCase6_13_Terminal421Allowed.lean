import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421AllowedV5

/-!
# Allowed-code checks for case-13 terminal 421
-/

namespace MQGN6Audit

theorem case13Terminal421AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 421 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 125) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal421AllowedV0Possible6
  · exact case13Terminal421AllowedV1Possible6
  · exact case13Terminal421AllowedV2Possible6
  · exact case13Terminal421AllowedV3Possible6
  · exact case13Terminal421AllowedV4Possible6
  · exact case13Terminal421AllowedV5Possible6

end MQGN6Audit

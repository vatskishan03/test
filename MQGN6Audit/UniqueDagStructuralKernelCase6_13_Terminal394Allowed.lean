import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394AllowedV5

/-!
# Allowed-code checks for case-13 terminal 394
-/

namespace MQGN6Audit

theorem case13Terminal394AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 394 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 113) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal394AllowedV0Possible6
  · exact case13Terminal394AllowedV1Possible6
  · exact case13Terminal394AllowedV2Possible6
  · exact case13Terminal394AllowedV3Possible6
  · exact case13Terminal394AllowedV4Possible6
  · exact case13Terminal394AllowedV5Possible6

end MQGN6Audit

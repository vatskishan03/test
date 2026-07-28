import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470AllowedV5

/-!
# Allowed-code checks for case-13 terminal 470
-/

namespace MQGN6Audit

theorem case13Terminal470AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 470 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 140) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal470AllowedV0Possible6
  · exact case13Terminal470AllowedV1Possible6
  · exact case13Terminal470AllowedV2Possible6
  · exact case13Terminal470AllowedV3Possible6
  · exact case13Terminal470AllowedV4Possible6
  · exact case13Terminal470AllowedV5Possible6

end MQGN6Audit

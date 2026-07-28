import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292AllowedV5

/-!
# Allowed-code checks for case-13 terminal 292
-/

namespace MQGN6Audit

theorem case13Terminal292AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 292 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 92) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal292AllowedV0Possible6
  · exact case13Terminal292AllowedV1Possible6
  · exact case13Terminal292AllowedV2Possible6
  · exact case13Terminal292AllowedV3Possible6
  · exact case13Terminal292AllowedV4Possible6
  · exact case13Terminal292AllowedV5Possible6

end MQGN6Audit

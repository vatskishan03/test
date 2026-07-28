import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482AllowedV5

/-!
# Allowed-code checks for case-13 terminal 482
-/

namespace MQGN6Audit

theorem case13Terminal482AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 482 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 68) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal482AllowedV0Possible6
  · exact case13Terminal482AllowedV1Possible6
  · exact case13Terminal482AllowedV2Possible6
  · exact case13Terminal482AllowedV3Possible6
  · exact case13Terminal482AllowedV4Possible6
  · exact case13Terminal482AllowedV5Possible6

end MQGN6Audit

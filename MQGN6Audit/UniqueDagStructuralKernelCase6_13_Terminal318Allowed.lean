import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318AllowedV5

/-!
# Allowed-code checks for case-13 terminal 318
-/

namespace MQGN6Audit

theorem case13Terminal318AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 318 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 262) 14 := by
  intro v
  fin_cases v
  · exact case13Terminal318AllowedV0Possible6
  · exact case13Terminal318AllowedV1Possible6
  · exact case13Terminal318AllowedV2Possible6
  · exact case13Terminal318AllowedV3Possible6
  · exact case13Terminal318AllowedV4Possible6
  · exact case13Terminal318AllowedV5Possible6

end MQGN6Audit

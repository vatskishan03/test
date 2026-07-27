import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408AllowedV5

/-!
# Allowed-code checks for case-13 terminal 408
-/

namespace MQGN6Audit

theorem case13Terminal408AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 408 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 120) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal408AllowedV0Possible6
  · exact case13Terminal408AllowedV1Possible6
  · exact case13Terminal408AllowedV2Possible6
  · exact case13Terminal408AllowedV3Possible6
  · exact case13Terminal408AllowedV4Possible6
  · exact case13Terminal408AllowedV5Possible6

end MQGN6Audit

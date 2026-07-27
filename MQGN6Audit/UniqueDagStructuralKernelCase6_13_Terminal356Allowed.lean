import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356AllowedV5

/-!
# Allowed-code checks for case-13 terminal 356
-/

namespace MQGN6Audit

theorem case13Terminal356AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 356 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 46) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal356AllowedV0Possible6
  · exact case13Terminal356AllowedV1Possible6
  · exact case13Terminal356AllowedV2Possible6
  · exact case13Terminal356AllowedV3Possible6
  · exact case13Terminal356AllowedV4Possible6
  · exact case13Terminal356AllowedV5Possible6

end MQGN6Audit

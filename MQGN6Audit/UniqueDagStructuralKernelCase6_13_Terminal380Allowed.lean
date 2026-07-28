import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380AllowedV5

/-!
# Allowed-code checks for case-13 terminal 380
-/

namespace MQGN6Audit

theorem case13Terminal380AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 380 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 100) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal380AllowedV0Possible6
  · exact case13Terminal380AllowedV1Possible6
  · exact case13Terminal380AllowedV2Possible6
  · exact case13Terminal380AllowedV3Possible6
  · exact case13Terminal380AllowedV4Possible6
  · exact case13Terminal380AllowedV5Possible6

end MQGN6Audit

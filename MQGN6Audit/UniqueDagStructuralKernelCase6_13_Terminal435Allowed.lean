import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435AllowedV5

/-!
# Allowed-code checks for case-13 terminal 435
-/

namespace MQGN6Audit

theorem case13Terminal435AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 435 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 117) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal435AllowedV0Possible6
  · exact case13Terminal435AllowedV1Possible6
  · exact case13Terminal435AllowedV2Possible6
  · exact case13Terminal435AllowedV3Possible6
  · exact case13Terminal435AllowedV4Possible6
  · exact case13Terminal435AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390AllowedV5

/-!
# Allowed-code checks for case-13 terminal 390
-/

namespace MQGN6Audit

theorem case13Terminal390AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 390 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 51) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal390AllowedV0Possible6
  · exact case13Terminal390AllowedV1Possible6
  · exact case13Terminal390AllowedV2Possible6
  · exact case13Terminal390AllowedV3Possible6
  · exact case13Terminal390AllowedV4Possible6
  · exact case13Terminal390AllowedV5Possible6

end MQGN6Audit

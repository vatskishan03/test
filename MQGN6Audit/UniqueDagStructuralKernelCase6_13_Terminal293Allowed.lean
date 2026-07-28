import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293AllowedV5

/-!
# Allowed-code checks for case-13 terminal 293
-/

namespace MQGN6Audit

theorem case13Terminal293AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 293 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 93) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal293AllowedV0Possible6
  · exact case13Terminal293AllowedV1Possible6
  · exact case13Terminal293AllowedV2Possible6
  · exact case13Terminal293AllowedV3Possible6
  · exact case13Terminal293AllowedV4Possible6
  · exact case13Terminal293AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365AllowedV5

/-!
# Allowed-code checks for case-13 terminal 365
-/

namespace MQGN6Audit

theorem case13Terminal365AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 365 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 111) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal365AllowedV0Possible6
  · exact case13Terminal365AllowedV1Possible6
  · exact case13Terminal365AllowedV2Possible6
  · exact case13Terminal365AllowedV3Possible6
  · exact case13Terminal365AllowedV4Possible6
  · exact case13Terminal365AllowedV5Possible6

end MQGN6Audit

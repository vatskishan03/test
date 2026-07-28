import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340AllowedV5

/-!
# Allowed-code checks for case-13 terminal 340
-/

namespace MQGN6Audit

theorem case13Terminal340AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 340 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 234) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal340AllowedV0Possible6
  · exact case13Terminal340AllowedV1Possible6
  · exact case13Terminal340AllowedV2Possible6
  · exact case13Terminal340AllowedV3Possible6
  · exact case13Terminal340AllowedV4Possible6
  · exact case13Terminal340AllowedV5Possible6

end MQGN6Audit

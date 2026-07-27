import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403AllowedV5

/-!
# Allowed-code checks for case-13 terminal 403
-/

namespace MQGN6Audit

theorem case13Terminal403AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 403 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 59) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal403AllowedV0Possible6
  · exact case13Terminal403AllowedV1Possible6
  · exact case13Terminal403AllowedV2Possible6
  · exact case13Terminal403AllowedV3Possible6
  · exact case13Terminal403AllowedV4Possible6
  · exact case13Terminal403AllowedV5Possible6

end MQGN6Audit

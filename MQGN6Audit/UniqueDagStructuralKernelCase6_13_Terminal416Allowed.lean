import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416AllowedV5

/-!
# Allowed-code checks for case-13 terminal 416
-/

namespace MQGN6Audit

theorem case13Terminal416AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 416 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 62) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal416AllowedV0Possible6
  · exact case13Terminal416AllowedV1Possible6
  · exact case13Terminal416AllowedV2Possible6
  · exact case13Terminal416AllowedV3Possible6
  · exact case13Terminal416AllowedV4Possible6
  · exact case13Terminal416AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373AllowedV5

/-!
# Allowed-code checks for case-13 terminal 373
-/

namespace MQGN6Audit

theorem case13Terminal373AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 373 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 37) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal373AllowedV0Possible6
  · exact case13Terminal373AllowedV1Possible6
  · exact case13Terminal373AllowedV2Possible6
  · exact case13Terminal373AllowedV3Possible6
  · exact case13Terminal373AllowedV4Possible6
  · exact case13Terminal373AllowedV5Possible6

end MQGN6Audit

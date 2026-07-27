import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427AllowedV5

/-!
# Allowed-code checks for case-13 terminal 427
-/

namespace MQGN6Audit

theorem case13Terminal427AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 427 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 53) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal427AllowedV0Possible6
  · exact case13Terminal427AllowedV1Possible6
  · exact case13Terminal427AllowedV2Possible6
  · exact case13Terminal427AllowedV3Possible6
  · exact case13Terminal427AllowedV4Possible6
  · exact case13Terminal427AllowedV5Possible6

end MQGN6Audit

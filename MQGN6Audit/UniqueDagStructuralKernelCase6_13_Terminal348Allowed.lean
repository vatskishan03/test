import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348AllowedV5

/-!
# Allowed-code checks for case-13 terminal 348
-/

namespace MQGN6Audit

theorem case13Terminal348AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 348 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 106) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal348AllowedV0Possible6
  · exact case13Terminal348AllowedV1Possible6
  · exact case13Terminal348AllowedV2Possible6
  · exact case13Terminal348AllowedV3Possible6
  · exact case13Terminal348AllowedV4Possible6
  · exact case13Terminal348AllowedV5Possible6

end MQGN6Audit

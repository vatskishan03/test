import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471AllowedV5

/-!
# Allowed-code checks for case-13 terminal 471
-/

namespace MQGN6Audit

theorem case13Terminal471AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 471 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 141) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal471AllowedV0Possible6
  · exact case13Terminal471AllowedV1Possible6
  · exact case13Terminal471AllowedV2Possible6
  · exact case13Terminal471AllowedV3Possible6
  · exact case13Terminal471AllowedV4Possible6
  · exact case13Terminal471AllowedV5Possible6

end MQGN6Audit

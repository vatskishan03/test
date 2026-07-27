import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359AllowedV5

/-!
# Allowed-code checks for case-13 terminal 359
-/

namespace MQGN6Audit

theorem case13Terminal359AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 359 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 172) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal359AllowedV0Possible6
  · exact case13Terminal359AllowedV1Possible6
  · exact case13Terminal359AllowedV2Possible6
  · exact case13Terminal359AllowedV3Possible6
  · exact case13Terminal359AllowedV4Possible6
  · exact case13Terminal359AllowedV5Possible6

end MQGN6Audit

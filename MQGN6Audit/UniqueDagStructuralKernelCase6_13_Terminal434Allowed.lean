import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434AllowedV5

/-!
# Allowed-code checks for case-13 terminal 434
-/

namespace MQGN6Audit

theorem case13Terminal434AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 434 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 116) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal434AllowedV0Possible6
  · exact case13Terminal434AllowedV1Possible6
  · exact case13Terminal434AllowedV2Possible6
  · exact case13Terminal434AllowedV3Possible6
  · exact case13Terminal434AllowedV4Possible6
  · exact case13Terminal434AllowedV5Possible6

end MQGN6Audit

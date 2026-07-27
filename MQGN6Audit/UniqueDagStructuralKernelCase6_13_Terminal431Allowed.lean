import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431AllowedV5

/-!
# Allowed-code checks for case-13 terminal 431
-/

namespace MQGN6Audit

theorem case13Terminal431AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 431 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 180) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal431AllowedV0Possible6
  · exact case13Terminal431AllowedV1Possible6
  · exact case13Terminal431AllowedV2Possible6
  · exact case13Terminal431AllowedV3Possible6
  · exact case13Terminal431AllowedV4Possible6
  · exact case13Terminal431AllowedV5Possible6

end MQGN6Audit

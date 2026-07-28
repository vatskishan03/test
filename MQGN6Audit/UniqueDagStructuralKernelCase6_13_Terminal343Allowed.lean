import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343AllowedV5

/-!
# Allowed-code checks for case-13 terminal 343
-/

namespace MQGN6Audit

theorem case13Terminal343AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 343 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 169) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal343AllowedV0Possible6
  · exact case13Terminal343AllowedV1Possible6
  · exact case13Terminal343AllowedV2Possible6
  · exact case13Terminal343AllowedV3Possible6
  · exact case13Terminal343AllowedV4Possible6
  · exact case13Terminal343AllowedV5Possible6

end MQGN6Audit

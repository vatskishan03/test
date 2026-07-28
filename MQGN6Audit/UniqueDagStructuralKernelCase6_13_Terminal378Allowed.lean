import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378AllowedV5

/-!
# Allowed-code checks for case-13 terminal 378
-/

namespace MQGN6Audit

theorem case13Terminal378AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 378 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 165) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal378AllowedV0Possible6
  · exact case13Terminal378AllowedV1Possible6
  · exact case13Terminal378AllowedV2Possible6
  · exact case13Terminal378AllowedV3Possible6
  · exact case13Terminal378AllowedV4Possible6
  · exact case13Terminal378AllowedV5Possible6

end MQGN6Audit

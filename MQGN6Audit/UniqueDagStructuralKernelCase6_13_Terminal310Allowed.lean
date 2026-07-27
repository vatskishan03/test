import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310AllowedV5

/-!
# Allowed-code checks for case-13 terminal 310
-/

namespace MQGN6Audit

theorem case13Terminal310AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 310 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 84) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal310AllowedV0Possible6
  · exact case13Terminal310AllowedV1Possible6
  · exact case13Terminal310AllowedV2Possible6
  · exact case13Terminal310AllowedV3Possible6
  · exact case13Terminal310AllowedV4Possible6
  · exact case13Terminal310AllowedV5Possible6

end MQGN6Audit

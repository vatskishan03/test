import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264AllowedV5

/-!
# Allowed-code checks for case-13 terminal 264
-/

namespace MQGN6Audit

theorem case13Terminal264AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 264 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 19) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal264AllowedV0Possible6
  · exact case13Terminal264AllowedV1Possible6
  · exact case13Terminal264AllowedV2Possible6
  · exact case13Terminal264AllowedV3Possible6
  · exact case13Terminal264AllowedV4Possible6
  · exact case13Terminal264AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263AllowedV5

/-!
# Allowed-code checks for case-13 terminal 263
-/

namespace MQGN6Audit

theorem case13Terminal263AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 263 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 18) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal263AllowedV0Possible6
  · exact case13Terminal263AllowedV1Possible6
  · exact case13Terminal263AllowedV2Possible6
  · exact case13Terminal263AllowedV3Possible6
  · exact case13Terminal263AllowedV4Possible6
  · exact case13Terminal263AllowedV5Possible6

end MQGN6Audit

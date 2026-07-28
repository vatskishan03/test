import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347AllowedV5

/-!
# Allowed-code checks for case-13 terminal 347
-/

namespace MQGN6Audit

theorem case13Terminal347AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 347 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 105) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal347AllowedV0Possible6
  · exact case13Terminal347AllowedV1Possible6
  · exact case13Terminal347AllowedV2Possible6
  · exact case13Terminal347AllowedV3Possible6
  · exact case13Terminal347AllowedV4Possible6
  · exact case13Terminal347AllowedV5Possible6

end MQGN6Audit

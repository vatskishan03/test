import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363AllowedV5

/-!
# Allowed-code checks for case-13 terminal 363
-/

namespace MQGN6Audit

theorem case13Terminal363AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 363 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 109) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal363AllowedV0Possible6
  · exact case13Terminal363AllowedV1Possible6
  · exact case13Terminal363AllowedV2Possible6
  · exact case13Terminal363AllowedV3Possible6
  · exact case13Terminal363AllowedV4Possible6
  · exact case13Terminal363AllowedV5Possible6

end MQGN6Audit

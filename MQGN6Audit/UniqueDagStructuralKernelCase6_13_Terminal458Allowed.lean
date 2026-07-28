import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458AllowedV5

/-!
# Allowed-code checks for case-13 terminal 458
-/

namespace MQGN6Audit

theorem case13Terminal458AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 458 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 72) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal458AllowedV0Possible6
  · exact case13Terminal458AllowedV1Possible6
  · exact case13Terminal458AllowedV2Possible6
  · exact case13Terminal458AllowedV3Possible6
  · exact case13Terminal458AllowedV4Possible6
  · exact case13Terminal458AllowedV5Possible6

end MQGN6Audit

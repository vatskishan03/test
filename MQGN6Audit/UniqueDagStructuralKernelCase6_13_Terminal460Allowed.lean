import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460AllowedV5

/-!
# Allowed-code checks for case-13 terminal 460
-/

namespace MQGN6Audit

theorem case13Terminal460AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 460 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 74) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal460AllowedV0Possible6
  · exact case13Terminal460AllowedV1Possible6
  · exact case13Terminal460AllowedV2Possible6
  · exact case13Terminal460AllowedV3Possible6
  · exact case13Terminal460AllowedV4Possible6
  · exact case13Terminal460AllowedV5Possible6

end MQGN6Audit

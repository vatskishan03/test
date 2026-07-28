import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475AllowedV5

/-!
# Allowed-code checks for case-13 terminal 475
-/

namespace MQGN6Audit

theorem case13Terminal475AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 475 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 78) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal475AllowedV0Possible6
  · exact case13Terminal475AllowedV1Possible6
  · exact case13Terminal475AllowedV2Possible6
  · exact case13Terminal475AllowedV3Possible6
  · exact case13Terminal475AllowedV4Possible6
  · exact case13Terminal475AllowedV5Possible6

end MQGN6Audit

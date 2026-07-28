import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455AllowedV5

/-!
# Allowed-code checks for case-13 terminal 455
-/

namespace MQGN6Audit

theorem case13Terminal455AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 455 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 136) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal455AllowedV0Possible6
  · exact case13Terminal455AllowedV1Possible6
  · exact case13Terminal455AllowedV2Possible6
  · exact case13Terminal455AllowedV3Possible6
  · exact case13Terminal455AllowedV4Possible6
  · exact case13Terminal455AllowedV5Possible6

end MQGN6Audit

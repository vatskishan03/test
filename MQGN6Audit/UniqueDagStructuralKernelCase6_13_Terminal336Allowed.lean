import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336AllowedV5

/-!
# Allowed-code checks for case-13 terminal 336
-/

namespace MQGN6Audit

theorem case13Terminal336AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 336 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 41) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal336AllowedV0Possible6
  · exact case13Terminal336AllowedV1Possible6
  · exact case13Terminal336AllowedV2Possible6
  · exact case13Terminal336AllowedV3Possible6
  · exact case13Terminal336AllowedV4Possible6
  · exact case13Terminal336AllowedV5Possible6

end MQGN6Audit

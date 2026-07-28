import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479AllowedV5

/-!
# Allowed-code checks for case-13 terminal 479
-/

namespace MQGN6Audit

theorem case13Terminal479AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 479 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 132) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal479AllowedV0Possible6
  · exact case13Terminal479AllowedV1Possible6
  · exact case13Terminal479AllowedV2Possible6
  · exact case13Terminal479AllowedV3Possible6
  · exact case13Terminal479AllowedV4Possible6
  · exact case13Terminal479AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395AllowedV5

/-!
# Allowed-code checks for case-13 terminal 395
-/

namespace MQGN6Audit

theorem case13Terminal395AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 395 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 114) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal395AllowedV0Possible6
  · exact case13Terminal395AllowedV1Possible6
  · exact case13Terminal395AllowedV2Possible6
  · exact case13Terminal395AllowedV3Possible6
  · exact case13Terminal395AllowedV4Possible6
  · exact case13Terminal395AllowedV5Possible6

end MQGN6Audit

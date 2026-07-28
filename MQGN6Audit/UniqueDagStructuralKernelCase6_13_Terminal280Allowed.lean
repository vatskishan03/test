import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280AllowedV5

/-!
# Allowed-code checks for case-13 terminal 280
-/

namespace MQGN6Audit

theorem case13Terminal280AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 280 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 90) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal280AllowedV0Possible6
  · exact case13Terminal280AllowedV1Possible6
  · exact case13Terminal280AllowedV2Possible6
  · exact case13Terminal280AllowedV3Possible6
  · exact case13Terminal280AllowedV4Possible6
  · exact case13Terminal280AllowedV5Possible6

end MQGN6Audit

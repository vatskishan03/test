import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423AllowedV5

/-!
# Allowed-code checks for case-13 terminal 423
-/

namespace MQGN6Audit

theorem case13Terminal423AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 423 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 127) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal423AllowedV0Possible6
  · exact case13Terminal423AllowedV1Possible6
  · exact case13Terminal423AllowedV2Possible6
  · exact case13Terminal423AllowedV3Possible6
  · exact case13Terminal423AllowedV4Possible6
  · exact case13Terminal423AllowedV5Possible6

end MQGN6Audit

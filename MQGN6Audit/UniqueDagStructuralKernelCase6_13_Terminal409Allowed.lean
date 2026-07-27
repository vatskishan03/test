import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409AllowedV5

/-!
# Allowed-code checks for case-13 terminal 409
-/

namespace MQGN6Audit

theorem case13Terminal409AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 409 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 121) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal409AllowedV0Possible6
  · exact case13Terminal409AllowedV1Possible6
  · exact case13Terminal409AllowedV2Possible6
  · exact case13Terminal409AllowedV3Possible6
  · exact case13Terminal409AllowedV4Possible6
  · exact case13Terminal409AllowedV5Possible6

end MQGN6Audit

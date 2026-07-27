import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337AllowedV5

/-!
# Allowed-code checks for case-13 terminal 337
-/

namespace MQGN6Audit

theorem case13Terminal337AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 337 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 42) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal337AllowedV0Possible6
  · exact case13Terminal337AllowedV1Possible6
  · exact case13Terminal337AllowedV2Possible6
  · exact case13Terminal337AllowedV3Possible6
  · exact case13Terminal337AllowedV4Possible6
  · exact case13Terminal337AllowedV5Possible6

end MQGN6Audit

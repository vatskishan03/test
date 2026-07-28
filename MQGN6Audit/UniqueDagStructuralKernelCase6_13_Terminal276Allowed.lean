import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276AllowedV5

/-!
# Allowed-code checks for case-13 terminal 276
-/

namespace MQGN6Audit

theorem case13Terminal276AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 276 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 153) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal276AllowedV0Possible6
  · exact case13Terminal276AllowedV1Possible6
  · exact case13Terminal276AllowedV2Possible6
  · exact case13Terminal276AllowedV3Possible6
  · exact case13Terminal276AllowedV4Possible6
  · exact case13Terminal276AllowedV5Possible6

end MQGN6Audit

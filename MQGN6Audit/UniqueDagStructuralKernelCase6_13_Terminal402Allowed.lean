import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402AllowedV5

/-!
# Allowed-code checks for case-13 terminal 402
-/

namespace MQGN6Audit

theorem case13Terminal402AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 402 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 58) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal402AllowedV0Possible6
  · exact case13Terminal402AllowedV1Possible6
  · exact case13Terminal402AllowedV2Possible6
  · exact case13Terminal402AllowedV3Possible6
  · exact case13Terminal402AllowedV4Possible6
  · exact case13Terminal402AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325AllowedV5

/-!
# Allowed-code checks for case-13 terminal 325
-/

namespace MQGN6Audit

theorem case13Terminal325AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 325 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 161) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal325AllowedV0Possible6
  · exact case13Terminal325AllowedV1Possible6
  · exact case13Terminal325AllowedV2Possible6
  · exact case13Terminal325AllowedV3Possible6
  · exact case13Terminal325AllowedV4Possible6
  · exact case13Terminal325AllowedV5Possible6

end MQGN6Audit

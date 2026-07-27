import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272AllowedV5

/-!
# Allowed-code checks for case-13 terminal 272
-/

namespace MQGN6Audit

theorem case13Terminal272AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 272 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 26) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal272AllowedV0Possible6
  · exact case13Terminal272AllowedV1Possible6
  · exact case13Terminal272AllowedV2Possible6
  · exact case13Terminal272AllowedV3Possible6
  · exact case13Terminal272AllowedV4Possible6
  · exact case13Terminal272AllowedV5Possible6

end MQGN6Audit

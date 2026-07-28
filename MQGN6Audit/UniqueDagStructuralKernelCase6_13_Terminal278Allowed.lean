import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278AllowedV5

/-!
# Allowed-code checks for case-13 terminal 278
-/

namespace MQGN6Audit

theorem case13Terminal278AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 278 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 88) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal278AllowedV0Possible6
  · exact case13Terminal278AllowedV1Possible6
  · exact case13Terminal278AllowedV2Possible6
  · exact case13Terminal278AllowedV3Possible6
  · exact case13Terminal278AllowedV4Possible6
  · exact case13Terminal278AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485AllowedV5

/-!
# Allowed-code checks for case-13 terminal 485
-/

namespace MQGN6Audit

theorem case13Terminal485AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 485 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 71) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal485AllowedV0Possible6
  · exact case13Terminal485AllowedV1Possible6
  · exact case13Terminal485AllowedV2Possible6
  · exact case13Terminal485AllowedV3Possible6
  · exact case13Terminal485AllowedV4Possible6
  · exact case13Terminal485AllowedV5Possible6

end MQGN6Audit

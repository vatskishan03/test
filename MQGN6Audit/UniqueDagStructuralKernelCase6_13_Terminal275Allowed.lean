import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275AllowedV5

/-!
# Allowed-code checks for case-13 terminal 275
-/

namespace MQGN6Audit

theorem case13Terminal275AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 152) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal275AllowedV0Possible6
  · exact case13Terminal275AllowedV1Possible6
  · exact case13Terminal275AllowedV2Possible6
  · exact case13Terminal275AllowedV3Possible6
  · exact case13Terminal275AllowedV4Possible6
  · exact case13Terminal275AllowedV5Possible6

end MQGN6Audit

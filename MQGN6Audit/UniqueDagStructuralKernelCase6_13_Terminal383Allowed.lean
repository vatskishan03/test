import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383AllowedV5

/-!
# Allowed-code checks for case-13 terminal 383
-/

namespace MQGN6Audit

theorem case13Terminal383AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 383 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 103) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal383AllowedV0Possible6
  · exact case13Terminal383AllowedV1Possible6
  · exact case13Terminal383AllowedV2Possible6
  · exact case13Terminal383AllowedV3Possible6
  · exact case13Terminal383AllowedV4Possible6
  · exact case13Terminal383AllowedV5Possible6

end MQGN6Audit

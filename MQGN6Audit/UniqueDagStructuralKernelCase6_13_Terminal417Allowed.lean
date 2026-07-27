import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417AllowedV5

/-!
# Allowed-code checks for case-13 terminal 417
-/

namespace MQGN6Audit

theorem case13Terminal417AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 417 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 63) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal417AllowedV0Possible6
  · exact case13Terminal417AllowedV1Possible6
  · exact case13Terminal417AllowedV2Possible6
  · exact case13Terminal417AllowedV3Possible6
  · exact case13Terminal417AllowedV4Possible6
  · exact case13Terminal417AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388AllowedV5

/-!
# Allowed-code checks for case-13 terminal 388
-/

namespace MQGN6Audit

theorem case13Terminal388AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 388 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 49) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal388AllowedV0Possible6
  · exact case13Terminal388AllowedV1Possible6
  · exact case13Terminal388AllowedV2Possible6
  · exact case13Terminal388AllowedV3Possible6
  · exact case13Terminal388AllowedV4Possible6
  · exact case13Terminal388AllowedV5Possible6

end MQGN6Audit

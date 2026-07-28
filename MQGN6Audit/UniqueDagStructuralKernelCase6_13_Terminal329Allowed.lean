import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329AllowedV5

/-!
# Allowed-code checks for case-13 terminal 329
-/

namespace MQGN6Audit

theorem case13Terminal329AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 329 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 99) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal329AllowedV0Possible6
  · exact case13Terminal329AllowedV1Possible6
  · exact case13Terminal329AllowedV2Possible6
  · exact case13Terminal329AllowedV3Possible6
  · exact case13Terminal329AllowedV4Possible6
  · exact case13Terminal329AllowedV5Possible6

end MQGN6Audit

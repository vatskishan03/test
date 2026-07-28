import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389AllowedV5

/-!
# Allowed-code checks for case-13 terminal 389
-/

namespace MQGN6Audit

theorem case13Terminal389AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 389 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 50) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal389AllowedV0Possible6
  · exact case13Terminal389AllowedV1Possible6
  · exact case13Terminal389AllowedV2Possible6
  · exact case13Terminal389AllowedV3Possible6
  · exact case13Terminal389AllowedV4Possible6
  · exact case13Terminal389AllowedV5Possible6

end MQGN6Audit

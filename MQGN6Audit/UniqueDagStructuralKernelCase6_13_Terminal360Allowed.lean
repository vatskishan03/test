import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360AllowedV5

/-!
# Allowed-code checks for case-13 terminal 360
-/

namespace MQGN6Audit

theorem case13Terminal360AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 360 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 173) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal360AllowedV0Possible6
  · exact case13Terminal360AllowedV1Possible6
  · exact case13Terminal360AllowedV2Possible6
  · exact case13Terminal360AllowedV3Possible6
  · exact case13Terminal360AllowedV4Possible6
  · exact case13Terminal360AllowedV5Possible6

end MQGN6Audit

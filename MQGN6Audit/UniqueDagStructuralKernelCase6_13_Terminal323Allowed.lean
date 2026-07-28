import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323AllowedV5

/-!
# Allowed-code checks for case-13 terminal 323
-/

namespace MQGN6Audit

theorem case13Terminal323AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 323 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 35) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal323AllowedV0Possible6
  · exact case13Terminal323AllowedV1Possible6
  · exact case13Terminal323AllowedV2Possible6
  · exact case13Terminal323AllowedV3Possible6
  · exact case13Terminal323AllowedV4Possible6
  · exact case13Terminal323AllowedV5Possible6

end MQGN6Audit

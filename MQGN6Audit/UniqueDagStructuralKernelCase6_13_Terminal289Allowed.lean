import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289AllowedV5

/-!
# Allowed-code checks for case-13 terminal 289
-/

namespace MQGN6Audit

theorem case13Terminal289AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 289 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 156) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal289AllowedV0Possible6
  · exact case13Terminal289AllowedV1Possible6
  · exact case13Terminal289AllowedV2Possible6
  · exact case13Terminal289AllowedV3Possible6
  · exact case13Terminal289AllowedV4Possible6
  · exact case13Terminal289AllowedV5Possible6

end MQGN6Audit

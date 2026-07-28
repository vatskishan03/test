import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321AllowedV5

/-!
# Allowed-code checks for case-13 terminal 321
-/

namespace MQGN6Audit

theorem case13Terminal321AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 321 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 33) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal321AllowedV0Possible6
  · exact case13Terminal321AllowedV1Possible6
  · exact case13Terminal321AllowedV2Possible6
  · exact case13Terminal321AllowedV3Possible6
  · exact case13Terminal321AllowedV4Possible6
  · exact case13Terminal321AllowedV5Possible6

end MQGN6Audit

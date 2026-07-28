import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286AllowedV5

/-!
# Allowed-code checks for case-13 terminal 286
-/

namespace MQGN6Audit

theorem case13Terminal286AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 286 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 30) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal286AllowedV0Possible6
  · exact case13Terminal286AllowedV1Possible6
  · exact case13Terminal286AllowedV2Possible6
  · exact case13Terminal286AllowedV3Possible6
  · exact case13Terminal286AllowedV4Possible6
  · exact case13Terminal286AllowedV5Possible6

end MQGN6Audit

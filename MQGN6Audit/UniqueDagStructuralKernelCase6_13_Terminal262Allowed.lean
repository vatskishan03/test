import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262AllowedV5

/-!
# Allowed-code checks for case-13 terminal 262
-/

namespace MQGN6Audit

theorem case13Terminal262AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 262 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 262) 14 := by
  intro v
  fin_cases v
  · exact case13Terminal262AllowedV0Possible6
  · exact case13Terminal262AllowedV1Possible6
  · exact case13Terminal262AllowedV2Possible6
  · exact case13Terminal262AllowedV3Possible6
  · exact case13Terminal262AllowedV4Possible6
  · exact case13Terminal262AllowedV5Possible6

end MQGN6Audit

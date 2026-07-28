import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411AllowedV5

/-!
# Allowed-code checks for case-13 terminal 411
-/

namespace MQGN6Audit

theorem case13Terminal411AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 411 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 123) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal411AllowedV0Possible6
  · exact case13Terminal411AllowedV1Possible6
  · exact case13Terminal411AllowedV2Possible6
  · exact case13Terminal411AllowedV3Possible6
  · exact case13Terminal411AllowedV4Possible6
  · exact case13Terminal411AllowedV5Possible6

end MQGN6Audit

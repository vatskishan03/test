import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456AllowedV5

/-!
# Allowed-code checks for case-13 terminal 456
-/

namespace MQGN6Audit

theorem case13Terminal456AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 456 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 137) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal456AllowedV0Possible6
  · exact case13Terminal456AllowedV1Possible6
  · exact case13Terminal456AllowedV2Possible6
  · exact case13Terminal456AllowedV3Possible6
  · exact case13Terminal456AllowedV4Possible6
  · exact case13Terminal456AllowedV5Possible6

end MQGN6Audit

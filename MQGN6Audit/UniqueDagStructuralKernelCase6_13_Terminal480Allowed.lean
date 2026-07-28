import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480AllowedV5

/-!
# Allowed-code checks for case-13 terminal 480
-/

namespace MQGN6Audit

theorem case13Terminal480AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 480 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 133) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal480AllowedV0Possible6
  · exact case13Terminal480AllowedV1Possible6
  · exact case13Terminal480AllowedV2Possible6
  · exact case13Terminal480AllowedV3Possible6
  · exact case13Terminal480AllowedV4Possible6
  · exact case13Terminal480AllowedV5Possible6

end MQGN6Audit

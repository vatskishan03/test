import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405AllowedV5

/-!
# Allowed-code checks for case-13 terminal 405
-/

namespace MQGN6Audit

theorem case13Terminal405AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 405 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 184) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal405AllowedV0Possible6
  · exact case13Terminal405AllowedV1Possible6
  · exact case13Terminal405AllowedV2Possible6
  · exact case13Terminal405AllowedV3Possible6
  · exact case13Terminal405AllowedV4Possible6
  · exact case13Terminal405AllowedV5Possible6

end MQGN6Audit

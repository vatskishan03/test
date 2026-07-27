import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419AllowedV5

/-!
# Allowed-code checks for case-13 terminal 419
-/

namespace MQGN6Audit

theorem case13Terminal419AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 419 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 189) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal419AllowedV0Possible6
  · exact case13Terminal419AllowedV1Possible6
  · exact case13Terminal419AllowedV2Possible6
  · exact case13Terminal419AllowedV3Possible6
  · exact case13Terminal419AllowedV4Possible6
  · exact case13Terminal419AllowedV5Possible6

end MQGN6Audit

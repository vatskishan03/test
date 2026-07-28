import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338AllowedV5

/-!
# Allowed-code checks for case-13 terminal 338
-/

namespace MQGN6Audit

theorem case13Terminal338AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 338 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 43) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal338AllowedV0Possible6
  · exact case13Terminal338AllowedV1Possible6
  · exact case13Terminal338AllowedV2Possible6
  · exact case13Terminal338AllowedV3Possible6
  · exact case13Terminal338AllowedV4Possible6
  · exact case13Terminal338AllowedV5Possible6

end MQGN6Audit

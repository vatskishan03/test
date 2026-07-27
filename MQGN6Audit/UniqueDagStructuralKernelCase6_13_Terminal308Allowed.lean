import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308AllowedV5

/-!
# Allowed-code checks for case-13 terminal 308
-/

namespace MQGN6Audit

theorem case13Terminal308AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 308 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 149) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal308AllowedV0Possible6
  · exact case13Terminal308AllowedV1Possible6
  · exact case13Terminal308AllowedV2Possible6
  · exact case13Terminal308AllowedV3Possible6
  · exact case13Terminal308AllowedV4Possible6
  · exact case13Terminal308AllowedV5Possible6

end MQGN6Audit

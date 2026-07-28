import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299AllowedV5

/-!
# Allowed-code checks for case-13 terminal 299
-/

namespace MQGN6Audit

theorem case13Terminal299AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 299 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 261) 14 := by
  intro v
  fin_cases v
  · exact case13Terminal299AllowedV0Possible6
  · exact case13Terminal299AllowedV1Possible6
  · exact case13Terminal299AllowedV2Possible6
  · exact case13Terminal299AllowedV3Possible6
  · exact case13Terminal299AllowedV4Possible6
  · exact case13Terminal299AllowedV5Possible6

end MQGN6Audit

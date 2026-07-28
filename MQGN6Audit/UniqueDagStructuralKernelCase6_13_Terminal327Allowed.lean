import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327AllowedV5

/-!
# Allowed-code checks for case-13 terminal 327
-/

namespace MQGN6Audit

theorem case13Terminal327AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 327 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 97) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal327AllowedV0Possible6
  · exact case13Terminal327AllowedV1Possible6
  · exact case13Terminal327AllowedV2Possible6
  · exact case13Terminal327AllowedV3Possible6
  · exact case13Terminal327AllowedV4Possible6
  · exact case13Terminal327AllowedV5Possible6

end MQGN6Audit

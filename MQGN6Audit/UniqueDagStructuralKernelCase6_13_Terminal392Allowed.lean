import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392AllowedV5

/-!
# Allowed-code checks for case-13 terminal 392
-/

namespace MQGN6Audit

theorem case13Terminal392AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 392 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 177) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal392AllowedV0Possible6
  · exact case13Terminal392AllowedV1Possible6
  · exact case13Terminal392AllowedV2Possible6
  · exact case13Terminal392AllowedV3Possible6
  · exact case13Terminal392AllowedV4Possible6
  · exact case13Terminal392AllowedV5Possible6

end MQGN6Audit

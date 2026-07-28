import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285AllowedV5

/-!
# Allowed-code checks for case-13 terminal 285
-/

namespace MQGN6Audit

theorem case13Terminal285AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 285 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 29) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal285AllowedV0Possible6
  · exact case13Terminal285AllowedV1Possible6
  · exact case13Terminal285AllowedV2Possible6
  · exact case13Terminal285AllowedV3Possible6
  · exact case13Terminal285AllowedV4Possible6
  · exact case13Terminal285AllowedV5Possible6

end MQGN6Audit

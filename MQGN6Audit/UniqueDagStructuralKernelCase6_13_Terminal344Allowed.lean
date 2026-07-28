import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344AllowedV5

/-!
# Allowed-code checks for case-13 terminal 344
-/

namespace MQGN6Audit

theorem case13Terminal344AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 344 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 171) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal344AllowedV0Possible6
  · exact case13Terminal344AllowedV1Possible6
  · exact case13Terminal344AllowedV2Possible6
  · exact case13Terminal344AllowedV3Possible6
  · exact case13Terminal344AllowedV4Possible6
  · exact case13Terminal344AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV2
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV4
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322AllowedV5

/-!
# Allowed-code checks for case-13 terminal 322
-/

namespace MQGN6Audit

theorem case13Terminal322AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 322 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 34) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal322AllowedV0Possible6
  · exact case13Terminal322AllowedV1Possible6
  · exact case13Terminal322AllowedV2Possible6
  · exact case13Terminal322AllowedV3Possible6
  · exact case13Terminal322AllowedV4Possible6
  · exact case13Terminal322AllowedV5Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Allowed-code checks for case-13 terminal 245
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal245AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 245 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 1258) 12 := by
  intro v
  fin_cases v <;> decide +kernel

end MQGN6Audit

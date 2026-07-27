import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Forced-edge checks for case-13 terminal 245
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal245ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 1258) e.1 =
          (decodeDagColoringFast6 1258) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 1258) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 245 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 1258) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 245 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 1258) e.1) = e.1)) := by
  intro k
  fin_cases k <;> decide +kernel

end MQGN6Audit

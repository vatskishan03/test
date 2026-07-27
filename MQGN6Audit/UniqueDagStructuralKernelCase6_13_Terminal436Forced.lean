import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436ForcedK2

/-!
# Forced-edge checks for case-13 terminal 436
-/

namespace MQGN6Audit

theorem case13Terminal436ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 118) e.1 =
          (decodeDagColoringFast6 118) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 118) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 436 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 118) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 436 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 118) e.1) = e.1)) := by
  intro k
  change case13Terminal436ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal436ForcedK0Possible6
  · exact case13Terminal436ForcedK1Possible6
  · exact case13Terminal436ForcedK2Possible6

end MQGN6Audit

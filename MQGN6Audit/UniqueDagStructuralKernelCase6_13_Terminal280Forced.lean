import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280ForcedK2

/-!
# Forced-edge checks for case-13 terminal 280
-/

namespace MQGN6Audit

theorem case13Terminal280ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 90) e.1 =
          (decodeDagColoringFast6 90) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 90) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 280 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 90) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 280 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 90) e.1) = e.1)) := by
  intro k
  change case13Terminal280ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal280ForcedK0Possible6
  · exact case13Terminal280ForcedK1Possible6
  · exact case13Terminal280ForcedK2Possible6

end MQGN6Audit

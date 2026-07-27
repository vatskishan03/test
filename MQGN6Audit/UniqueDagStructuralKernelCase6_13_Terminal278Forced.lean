import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278ForcedK2

/-!
# Forced-edge checks for case-13 terminal 278
-/

namespace MQGN6Audit

theorem case13Terminal278ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 88) e.1 =
          (decodeDagColoringFast6 88) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 88) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 278 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 88) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 278 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 88) e.1) = e.1)) := by
  intro k
  change case13Terminal278ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal278ForcedK0Possible6
  · exact case13Terminal278ForcedK1Possible6
  · exact case13Terminal278ForcedK2Possible6

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355ForcedK2

/-!
# Forced-edge checks for case-13 terminal 355
-/

namespace MQGN6Audit

theorem case13Terminal355ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 45) e.1 =
          (decodeDagColoringFast6 45) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 45) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 355 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 45) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 355 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 45) e.1) = e.1)) := by
  intro k
  change case13Terminal355ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal355ForcedK0Possible6
  · exact case13Terminal355ForcedK1Possible6
  · exact case13Terminal355ForcedK2Possible6

end MQGN6Audit

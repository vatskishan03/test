import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485ForcedK2

/-!
# Forced-edge checks for case-13 terminal 485
-/

namespace MQGN6Audit

theorem case13Terminal485ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 71) e.1 =
          (decodeDagColoringFast6 71) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 71) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 485 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 71) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 485 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 71) e.1) = e.1)) := by
  intro k
  change case13Terminal485ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal485ForcedK0Possible6
  · exact case13Terminal485ForcedK1Possible6
  · exact case13Terminal485ForcedK2Possible6

end MQGN6Audit

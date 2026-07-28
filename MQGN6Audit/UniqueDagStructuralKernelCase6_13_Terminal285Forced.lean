import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285ForcedK2

/-!
# Forced-edge checks for case-13 terminal 285
-/

namespace MQGN6Audit

theorem case13Terminal285ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 29) e.1 =
          (decodeDagColoringFast6 29) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 29) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 285 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 29) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 285 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 29) e.1) = e.1)) := by
  intro k
  change case13Terminal285ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal285ForcedK0Possible6
  · exact case13Terminal285ForcedK1Possible6
  · exact case13Terminal285ForcedK2Possible6

end MQGN6Audit

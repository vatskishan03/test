import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373ForcedK2

/-!
# Forced-edge checks for case-13 terminal 373
-/

namespace MQGN6Audit

theorem case13Terminal373ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 37) e.1 =
          (decodeDagColoringFast6 37) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 37) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 373 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 37) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 373 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 37) e.1) = e.1)) := by
  intro k
  change case13Terminal373ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal373ForcedK0Possible6
  · exact case13Terminal373ForcedK1Possible6
  · exact case13Terminal373ForcedK2Possible6

end MQGN6Audit

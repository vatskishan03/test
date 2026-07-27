import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336ForcedK2

/-!
# Forced-edge checks for case-13 terminal 336
-/

namespace MQGN6Audit

theorem case13Terminal336ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 41) e.1 =
          (decodeDagColoringFast6 41) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 41) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 336 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 41) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 336 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 41) e.1) = e.1)) := by
  intro k
  change case13Terminal336ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal336ForcedK0Possible6
  · exact case13Terminal336ForcedK1Possible6
  · exact case13Terminal336ForcedK2Possible6

end MQGN6Audit

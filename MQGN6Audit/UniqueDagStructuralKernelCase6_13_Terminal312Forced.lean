import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312ForcedK2

/-!
# Forced-edge checks for case-13 terminal 312
-/

namespace MQGN6Audit

theorem case13Terminal312ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 86) e.1 =
          (decodeDagColoringFast6 86) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 86) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 312 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 86) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 312 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 86) e.1) = e.1)) := by
  intro k
  change case13Terminal312ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal312ForcedK0Possible6
  · exact case13Terminal312ForcedK1Possible6
  · exact case13Terminal312ForcedK2Possible6

end MQGN6Audit

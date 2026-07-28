import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299ForcedK2

/-!
# Forced-edge checks for case-13 terminal 299
-/

namespace MQGN6Audit

theorem case13Terminal299ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 14 k
      ((decodeDagColoringFast6 261) e.1 =
          (decodeDagColoringFast6 261) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 261) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 299 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 261) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 299 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 261) e.1) = e.1)) := by
  intro k
  change case13Terminal299ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal299ForcedK0Possible6
  · exact case13Terminal299ForcedK1Possible6
  · exact case13Terminal299ForcedK2Possible6

end MQGN6Audit

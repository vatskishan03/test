import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382ForcedK0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382ForcedK1
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382ForcedK2

/-!
# Forced-edge checks for case-13 terminal 382
-/

namespace MQGN6Audit

theorem case13Terminal382ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 102) e.1 =
          (decodeDagColoringFast6 102) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 102) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 382 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 102) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 382 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 102) e.1) = e.1)) := by
  intro k
  change case13Terminal382ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal382ForcedK0Possible6
  · exact case13Terminal382ForcedK1Possible6
  · exact case13Terminal382ForcedK2Possible6

end MQGN6Audit

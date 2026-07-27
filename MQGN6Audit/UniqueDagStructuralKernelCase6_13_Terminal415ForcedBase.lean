import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

def case13Terminal415ForcedAtPossible6 (k : Fin 3) : Prop :=
  let e := matchingEdges6 12 k
  ((decodeDagColoringFast6 61) e.1 =
      (decodeDagColoringFast6 61) e.2 ∧
    matchingMate6
      ((feasibleTargetRep6 13) ((decodeDagColoringFast6 61) e.1))
      e.1 = e.2) ∨
    ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 415 e.1
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 61) e.2) = e.2) ∧
     (terminalForcesCodeStructural6 (uniqueDagCase6 13) 415 e.2
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 61) e.1) = e.1))

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

namespace MQGN6Audit

def case13Terminal402ForcedAtPossible6 (k : Fin 3) : Prop :=
  let e := matchingEdges6 12 k
  ((decodeDagColoringFast6 58) e.1 =
      (decodeDagColoringFast6 58) e.2 ∧
    matchingMate6
      ((feasibleTargetRep6 13) ((decodeDagColoringFast6 58) e.1))
      e.1 = e.2) ∨
    ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 402 e.1
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 58) e.2) = e.2) ∧
     (terminalForcesCodeStructural6 (uniqueDagCase6 13) 402 e.2
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 58) e.1) = e.1))

end MQGN6Audit

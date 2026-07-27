import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Factored kernel replay of case-13 terminal 275
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV0Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 0 fun code =>
      codeAllowsMatchingAtFast6 code 0 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV1Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 1 fun code =>
      codeAllowsMatchingAtFast6 code 1 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV2Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 2 fun code =>
      codeAllowsMatchingAtFast6 code 2 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV3Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 3 fun code =>
      codeAllowsMatchingAtFast6 code 3 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV4Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 4 fun code =>
      codeAllowsMatchingAtFast6 code 4 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275AllowedV5Possible6 :
    terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 5 fun code =>
      codeAllowsMatchingAtFast6 code 5 (decodeDagColoringFast6 152) 12 := by
  decide +kernel

theorem case13Terminal275AllowedPossible6 :
    ∀ v : Fin 6,
      terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 v fun code =>
        codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 152) 12 := by
  intro v
  fin_cases v
  · exact case13Terminal275AllowedV0Possible6
  · exact case13Terminal275AllowedV1Possible6
  · exact case13Terminal275AllowedV2Possible6
  · exact case13Terminal275AllowedV3Possible6
  · exact case13Terminal275AllowedV4Possible6
  · exact case13Terminal275AllowedV5Possible6

def case13Terminal275ForcedAtPossible6 (k : Fin 3) : Prop :=
  let e := matchingEdges6 12 k
  ((decodeDagColoringFast6 152) e.1 =
      (decodeDagColoringFast6 152) e.2 ∧
    matchingMate6
      ((feasibleTargetRep6 13) ((decodeDagColoringFast6 152) e.1))
      e.1 = e.2) ∨
    ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 e.1
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 152) e.2) = e.2) ∧
     (terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 e.2
        fun code =>
          decodeLocalPlanFast6 code
            ((decodeDagColoringFast6 152) e.1) = e.1))

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275ForcedK0Possible6 :
    case13Terminal275ForcedAtPossible6 0 := by
  unfold case13Terminal275ForcedAtPossible6
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275ForcedK1Possible6 :
    case13Terminal275ForcedAtPossible6 1 := by
  unfold case13Terminal275ForcedAtPossible6
  decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275ForcedK2Possible6 :
    case13Terminal275ForcedAtPossible6 2 := by
  unfold case13Terminal275ForcedAtPossible6
  decide +kernel

theorem case13Terminal275ForcedPossible6 :
    ∀ k : Fin 3,
      let e := matchingEdges6 12 k
      ((decodeDagColoringFast6 152) e.1 =
          (decodeDagColoringFast6 152) e.2 ∧
        matchingMate6
          ((feasibleTargetRep6 13) ((decodeDagColoringFast6 152) e.1))
          e.1 = e.2) ∨
        ((terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 e.1
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 152) e.2) = e.2) ∧
         (terminalForcesCodeStructural6 (uniqueDagCase6 13) 275 e.2
            fun code =>
              decodeLocalPlanFast6 code
                ((decodeDagColoringFast6 152) e.1) = e.1)) := by
  intro k
  change case13Terminal275ForcedAtPossible6 k
  fin_cases k
  · exact case13Terminal275ForcedK0Possible6
  · exact case13Terminal275ForcedK1Possible6
  · exact case13Terminal275ForcedK2Possible6

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275UniquePossible6 :
    ∀ n : Fin 15, n ≠ 12 →
      275 ∉ matchingReachStructural6 (uniqueDagCase6 13) 152 n := by
  intro n hne
  fin_cases n
  all_goals first
    | exact (hne rfl).elim
    | decide +kernel

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal275ValidPossible6 :
    rawDagNodeValidPossible6
      (uniqueDagCase6 13) (feasibleTargetRep6 13) 275 := by
  change uniqueTerminalStructuralValid6
    (uniqueDagCase6 13) (feasibleTargetRep6 13) 275 152 12
  exact ⟨by decide +kernel, by decide +kernel,
    case13Terminal275AllowedPossible6,
    case13Terminal275ForcedPossible6,
    case13Terminal275UniquePossible6⟩

end MQGN6Audit

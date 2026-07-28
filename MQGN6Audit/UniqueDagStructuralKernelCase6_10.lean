import MQGN6Audit.UniqueDagUniqueTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 10
-/

namespace MQGN6Audit

def case10ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_10 fun v =>
    (uniqueDagCase6_10.planCodes v).toFinset

lemma case10ReachStructural6_eq :
    case10ReachStructural6 = {0, 4} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case10_terminal0_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_10
      (feasibleTargetRep6 10) 0 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case10_terminal4_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_10
      (feasibleTargetRep6 10) 4 240 0 := by
  decide +kernel

lemma case10_reached_idStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_10.planCodes v) :
    rawDagEvalIdFast6 uniqueDagCase6_10 codes = 0 ∨
      rawDagEvalIdFast6 uniqueDagCase6_10 codes = 4 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_10
    (fun v => (uniqueDagCase6_10.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_10 codes ∈
    case10ReachStructural6 at hid
  rw [case10ReachStructural6_eq] at hid
  simpa only [Finset.mem_insert, Finset.mem_singleton] using hid

theorem rawDagCaseValidFast6_case10_structural :
    RawDagCaseValidFast6 10 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_10.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hid := case10_reached_idStructural6 codes hcodes
  change RawDagLeafValidFast6 10 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (10 : Fin 14) = uniqueDagCase6_10 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hid with h0 | h4
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_10
      (feasibleTargetRep6 10) codes 0 5 0 hcodes h0
      case10_terminal0_structural
    rw [h0, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_10
      (feasibleTargetRep6 10) codes 4 240 0 hcodes h4
      case10_terminal4_structural
    rw [h4, hs.1]
    exact hs.2

end MQGN6Audit

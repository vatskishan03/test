import MQGN6Audit.UniqueDagUniqueTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 0
-/

namespace MQGN6Audit

def case0ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_0 fun v =>
    (uniqueDagCase6_0.planCodes v).toFinset

lemma case0ReachStructural6_eq :
    case0ReachStructural6 = {0, 4, 9} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case0_terminal0_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_0
      (feasibleTargetRep6 0) 0 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case0_terminal4_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_0
      (feasibleTargetRep6 0) 4 80 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case0_terminal9_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_0
      (feasibleTargetRep6 0) 9 10 0 := by
  decide +kernel

lemma case0_reached_idStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_0.planCodes v) :
    rawDagEvalIdFast6 uniqueDagCase6_0 codes = 0 ∨
      rawDagEvalIdFast6 uniqueDagCase6_0 codes = 4 ∨
      rawDagEvalIdFast6 uniqueDagCase6_0 codes = 9 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_0
    (fun v => (uniqueDagCase6_0.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_0 codes ∈
    case0ReachStructural6 at hid
  rw [case0ReachStructural6_eq] at hid
  simpa only [Finset.mem_insert, Finset.mem_singleton] using hid

theorem rawDagCaseValidFast6_case0_structural :
    RawDagCaseValidFast6 0 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_0.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hid := case0_reached_idStructural6 codes hcodes
  change RawDagLeafValidFast6 0 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (0 : Fin 14) = uniqueDagCase6_0 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hid with h0 | h4 | h9
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_0
      (feasibleTargetRep6 0) codes 0 5 0 hcodes h0
      case0_terminal0_structural
    rw [h0, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_0
      (feasibleTargetRep6 0) codes 4 80 0 hcodes h4
      case0_terminal4_structural
    rw [h4, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_0
      (feasibleTargetRep6 0) codes 9 10 0 hcodes h9
      case0_terminal9_structural
    rw [h9, hs.1]
    exact hs.2

end MQGN6Audit

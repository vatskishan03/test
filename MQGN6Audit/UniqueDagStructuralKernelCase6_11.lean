import MQGN6Audit.UniqueDagUniqueTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 11
-/

namespace MQGN6Audit

def case11ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_11 fun v =>
    (uniqueDagCase6_11.planCodes v).toFinset

lemma case11ReachStructural6_eq :
    case11ReachStructural6 = {0, 4, 6, 10, 19, 21, 28, 34} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal0_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 0 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal4_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 4 1360 1 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal6_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 6 102 3 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal10_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 10 3760 2 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal19_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 19 38 3 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal21_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 21 223 6 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal28_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 28 106 3 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case11_terminal34_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_11
      (feasibleTargetRep6 11) 34 215 6 := by
  decide +kernel

lemma case11_reached_idStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_11.planCodes v) :
    rawDagEvalIdFast6 uniqueDagCase6_11 codes = 0 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 4 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 6 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 10 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 19 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 21 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 28 ∨
      rawDagEvalIdFast6 uniqueDagCase6_11 codes = 34 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_11
    (fun v => (uniqueDagCase6_11.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_11 codes ∈
    case11ReachStructural6 at hid
  rw [case11ReachStructural6_eq] at hid
  simpa only [Finset.mem_insert, Finset.mem_singleton] using hid

theorem rawDagCaseValidFast6_case11_structural :
    RawDagCaseValidFast6 11 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_11.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hid := case11_reached_idStructural6 codes hcodes
  change RawDagLeafValidFast6 11 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (11 : Fin 14) = uniqueDagCase6_11 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hid with h0 | h4 | h6 | h10 | h19 | h21 | h28 | h34
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 0 5 0 hcodes h0
      case11_terminal0_structural
    rw [h0, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 4 1360 1 hcodes h4
      case11_terminal4_structural
    rw [h4, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 6 102 3 hcodes h6
      case11_terminal6_structural
    rw [h6, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 10 3760 2 hcodes h10
      case11_terminal10_structural
    rw [h10, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 19 38 3 hcodes h19
      case11_terminal19_structural
    rw [h19, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 21 223 6 hcodes h21
      case11_terminal21_structural
    rw [h21, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 28 106 3 hcodes h28
      case11_terminal28_structural
    rw [h28, hs.1]
    exact hs.2
  · have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_11
      (feasibleTargetRep6 11) codes 34 215 6 hcodes h34
      case11_terminal34_structural
    rw [h34, hs.1]
    exact hs.2

end MQGN6Audit

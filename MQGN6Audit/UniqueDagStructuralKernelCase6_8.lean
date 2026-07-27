import MQGN6Audit.UniqueDagUniqueTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 8
-/

namespace MQGN6Audit

def case8ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_8 fun v =>
    (uniqueDagCase6_8.planCodes v).toFinset

lemma case8ReachStructural6_eq :
    case8ReachStructural6 = {0} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case8_terminal0_structural :
    uniqueTerminalStructuralValid6 uniqueDagCase6_8
      (feasibleTargetRep6 8) 0 5 0 := by
  decide +kernel

lemma case8_reached_idStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_8.planCodes v) :
    rawDagEvalIdFast6 uniqueDagCase6_8 codes = 0 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_8
    (fun v => (uniqueDagCase6_8.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_8 codes ∈
    case8ReachStructural6 at hid
  rw [case8ReachStructural6_eq] at hid
  simpa only [Finset.mem_singleton] using hid

theorem rawDagCaseValidFast6_case8_structural :
    RawDagCaseValidFast6 8 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_8.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hid := case8_reached_idStructural6 codes hcodes
  change RawDagLeafValidFast6 8 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (8 : Fin 14) = uniqueDagCase6_8 by rfl]
  refine ⟨rfl, ?_⟩
  have hs := uniqueTerminalStructuralValid6_sound uniqueDagCase6_8
    (feasibleTargetRep6 8) codes 0 5 0 hcodes hid
    case8_terminal0_structural
  rw [hid, hs.1]
  exact hs.2

end MQGN6Audit

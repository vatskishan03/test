import MQGN6Audit.UniqueDagSimpleTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 5
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

def case5ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_5 fun v =>
    (uniqueDagCase6_5.planCodes v).toFinset

lemma case5ReachStructural6_eq :
    case5ReachStructural6 = {0, 4} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case5_planCodes_avoid_matching0_mateStructural6 :
    ∀ v : Fin 6,
      (uniqueDagCase6_5.planCodes v).Forall fun code =>
        ∀ c : Fin 4,
          decodeLocalPlanFast6 code c ≠ matchingMate6 0 v := by
  intro v
  fin_cases v <;> decide +kernel

lemma case5_matching0_allowedStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_5.planCodes v)
    (q : Fin 6 → Fin 4) :
    MatchingAllowed6 (rawPlanFast6 codes) q 0 := by
  exact matchingAllowed_of_codes_avoid_mateStructural6
    uniqueDagCase6_5 codes hcodes 0 q
      case5_planCodes_avoid_matching0_mateStructural6

lemma case5_matching0_forced5Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 5)
      (decodeDagColoringFast6 5) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case5_matching0_forced80Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 5)
      (decodeDagColoringFast6 80) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

set_option maxRecDepth 100000 in
lemma case5_unique5_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_5 5 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_5 id ≠ .unique 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case5_unique80_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_5 80 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_5 id ≠ .unique 80 0 := by
  decide +kernel

lemma case5_unique5_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_5.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_5
      (rawDagEvalIdFast6 uniqueDagCase6_5 codes) = .unique 5 0) :
    ¬ allEqual (decodeDagColoringFast6 5) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 5)
      (decodeDagColoringFast6 5) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) n →
        n = 0 := by
  exact uniqueLeafSemantic_simpleStructural6 uniqueDagCase6_5
    (feasibleTargetRep6 5) codes 5 0 hcodes hleaf
    (by decide +kernel) (case5_matching0_forced5Structural6 codes)
    (case5_matching0_allowedStructural6 codes hcodes _)
    case5_unique5_restricted_avoidStructural6

lemma case5_unique80_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_5.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_5
      (rawDagEvalIdFast6 uniqueDagCase6_5 codes) = .unique 80 0) :
    ¬ allEqual (decodeDagColoringFast6 80) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 5)
      (decodeDagColoringFast6 80) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) n →
        n = 0 := by
  exact uniqueLeafSemantic_simpleStructural6 uniqueDagCase6_5
    (feasibleTargetRep6 5) codes 80 0 hcodes hleaf
    (by decide +kernel) (case5_matching0_forced80Structural6 codes)
    (case5_matching0_allowedStructural6 codes hcodes _)
    case5_unique80_restricted_avoidStructural6

lemma case5_reached_leafStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_5.planCodes v) :
    uniqueDagNodeAtFast6 uniqueDagCase6_5
        (rawDagEvalIdFast6 uniqueDagCase6_5 codes) = .unique 5 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_5
        (rawDagEvalIdFast6 uniqueDagCase6_5 codes) = .unique 80 0 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_5
    (fun v => (uniqueDagCase6_5.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_5 codes ∈
    case5ReachStructural6 at hid
  rw [case5ReachStructural6_eq] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with h | h
  · left
    rw [h]
    rfl
  · right
    rw [h]
    rfl

theorem rawDagCaseValidFast6_case5_structural :
    RawDagCaseValidFast6 5 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_5.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hleaf := case5_reached_leafStructural6 codes hcodes
  change RawDagLeafValidFast6 5 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (5 : Fin 14) = uniqueDagCase6_5 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hleaf with h5 | h80
  · rw [h5]
    exact case5_unique5_leafSemanticStructural6 codes hcodes h5
  · rw [h80]
    exact case5_unique80_leafSemanticStructural6 codes hcodes h80

end MQGN6Audit

import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Exact structural replay of frozen raw-DAG case 3
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

def case3ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_3 fun v =>
    (uniqueDagCase6_3.planCodes v).toFinset

lemma case3ReachStructural6_eq :
    case3ReachStructural6 = {0, 4, 6} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case3_planCodes_avoid_matching0_mateStructural6 :
    ∀ v : Fin 6,
      (uniqueDagCase6_3.planCodes v).Forall fun code =>
        ∀ c : Fin 4,
          decodeLocalPlanFast6 code c ≠ matchingMate6 0 v := by
  intro v
  fin_cases v <;> decide +kernel

lemma case3_matching0_allowedStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v)
    (q : Fin 6 → Fin 4) :
    MatchingAllowed6 (rawPlanFast6 codes) q 0 := by
  rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
  intro v c hc
  have hforall := List.forall_iff_forall_mem.mp
    (case3_planCodes_avoid_matching0_mateStructural6 v)
  exact False.elim (hforall (codes v) (hcodes v) c hc)

lemma case3_matching0_forced5Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 5) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case3_matching0_forced10Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 10) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨2, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case3_matching0_forced80Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 80) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

set_option maxRecDepth 100000 in
lemma case3_unique5_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_3 5 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_3 id ≠ .unique 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case3_unique10_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_3 10 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_3 id ≠ .unique 10 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case3_unique80_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_3 80 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_3 id ≠ .unique 80 0 := by
  decide +kernel

lemma case3_unique5_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_3
      (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 5 0) :
    ¬ allEqual (decodeDagColoringFast6 5) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 5) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) n →
        n = 0 := by
  refine ⟨by decide +kernel, case3_matching0_forced5Structural6 codes,
    case3_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_3
    codes 5 0 hcodes hleaf case3_unique5_restricted_avoidStructural6

lemma case3_unique10_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_3
      (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 10 0) :
    ¬ allEqual (decodeDagColoringFast6 10) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 10) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) n →
        n = 0 := by
  refine ⟨by decide +kernel, case3_matching0_forced10Structural6 codes,
    case3_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_3
    codes 10 0 hcodes hleaf case3_unique10_restricted_avoidStructural6

lemma case3_unique80_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_3
      (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 80 0) :
    ¬ allEqual (decodeDagColoringFast6 80) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 3)
      (decodeDagColoringFast6 80) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) n →
        n = 0 := by
  refine ⟨by decide +kernel, case3_matching0_forced80Structural6 codes,
    case3_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_3
    codes 80 0 hcodes hleaf case3_unique80_restricted_avoidStructural6

lemma case3_reached_leafStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v) :
    uniqueDagNodeAtFast6 uniqueDagCase6_3
        (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 5 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_3
        (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 10 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_3
        (rawDagEvalIdFast6 uniqueDagCase6_3 codes) = .unique 80 0 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_3
    (fun v => (uniqueDagCase6_3.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_3 codes ∈
    case3ReachStructural6 at hid
  rw [case3ReachStructural6_eq] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with h | h | h
  · left
    rw [h]
    rfl
  · right
    left
    rw [h]
    rfl
  · right
    right
    rw [h]
    rfl

theorem rawDagCaseValidFast6_case3_structural :
    RawDagCaseValidFast6 3 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_3.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hleaf := case3_reached_leafStructural6 codes hcodes
  change RawDagLeafValidFast6 3 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (3 : Fin 14) = uniqueDagCase6_3 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hleaf with h5 | h10 | h80
  · rw [h5]
    exact case3_unique5_leafSemanticStructural6 codes hcodes h5
  · rw [h10]
    exact case3_unique10_leafSemanticStructural6 codes hcodes h10
  · rw [h80]
    exact case3_unique80_leafSemanticStructural6 codes hcodes h80

end MQGN6Audit

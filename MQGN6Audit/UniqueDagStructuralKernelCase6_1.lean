import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Exact structural replay of frozen raw-DAG case 1
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

def case1ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_1 fun v =>
    (uniqueDagCase6_1.planCodes v).toFinset

lemma case1ReachStructural6_eq :
    case1ReachStructural6 = {0, 4, 8} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case1_planCodes_avoid_matching0_mateStructural6 :
    ∀ v : Fin 6,
      (uniqueDagCase6_1.planCodes v).Forall fun code =>
        ∀ c : Fin 4,
          decodeLocalPlanFast6 code c ≠ matchingMate6 0 v := by
  intro v
  fin_cases v <;> decide +kernel

lemma case1_matching0_allowedStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v)
    (q : Fin 6 → Fin 4) :
    MatchingAllowed6 (rawPlanFast6 codes) q 0 := by
  rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
  intro v c hc
  have hforall := List.forall_iff_forall_mem.mp
    (case1_planCodes_avoid_matching0_mateStructural6 v)
  exact False.elim (hforall (codes v) (hcodes v) c hc)

lemma case1_matching0_forced5Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 5) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case1_matching0_forced10Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 10) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨2, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case1_matching0_forced80Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 80) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

set_option maxRecDepth 100000 in
lemma case1_unique5_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_1 5 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_1 id ≠ .unique 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case1_unique10_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_1 10 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_1 id ≠ .unique 10 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case1_unique80_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_1 80 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_1 id ≠ .unique 80 0 := by
  decide +kernel

lemma case1_unique5_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_1
      (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 5 0) :
    ¬ allEqual (decodeDagColoringFast6 5) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 5) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) n →
        n = 0 := by
  refine ⟨by decide +kernel, case1_matching0_forced5Structural6 codes,
    case1_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_1
    codes 5 0 hcodes hleaf case1_unique5_restricted_avoidStructural6

lemma case1_unique10_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_1
      (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 10 0) :
    ¬ allEqual (decodeDagColoringFast6 10) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 10) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) n →
        n = 0 := by
  refine ⟨by decide +kernel, case1_matching0_forced10Structural6 codes,
    case1_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_1
    codes 10 0 hcodes hleaf case1_unique10_restricted_avoidStructural6

lemma case1_unique80_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_1
      (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 80 0) :
    ¬ allEqual (decodeDagColoringFast6 80) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 1)
      (decodeDagColoringFast6 80) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 80) n →
        n = 0 := by
  refine ⟨by decide +kernel, case1_matching0_forced80Structural6 codes,
    case1_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_1
    codes 80 0 hcodes hleaf case1_unique80_restricted_avoidStructural6

lemma case1_reached_leafStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v) :
    uniqueDagNodeAtFast6 uniqueDagCase6_1
        (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 5 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_1
        (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 10 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_1
        (rawDagEvalIdFast6 uniqueDagCase6_1 codes) = .unique 80 0 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_1
    (fun v => (uniqueDagCase6_1.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_1 codes ∈
    case1ReachStructural6 at hid
  rw [case1ReachStructural6_eq] at hid
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

theorem rawDagCaseValidFast6_case1_structural :
    RawDagCaseValidFast6 1 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_1.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hleaf := case1_reached_leafStructural6 codes hcodes
  change RawDagLeafValidFast6 1 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (1 : Fin 14) = uniqueDagCase6_1 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hleaf with h5 | h10 | h80
  · rw [h5]
    exact case1_unique5_leafSemanticStructural6 codes hcodes h5
  · rw [h10]
    exact case1_unique10_leafSemanticStructural6 codes hcodes h10
  · rw [h80]
    exact case1_unique80_leafSemanticStructural6 codes hcodes h80

end MQGN6Audit

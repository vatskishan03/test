import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Exact structural replay of frozen raw-DAG case 4
-/

namespace MQGN6Audit


def case4ReachStructural6 : Finset Nat :=
  rawDagReachStructural6 uniqueDagCase6_4 fun v =>
    (uniqueDagCase6_4.planCodes v).toFinset

lemma case4ReachStructural6_eq :
    case4ReachStructural6 = {0, 4} := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case4_planCodes_avoid_matching0_mateStructural6 :
    ∀ v : Fin 6,
      (uniqueDagCase6_4.planCodes v).Forall fun code =>
        ∀ c : Fin 4,
          decodeLocalPlanFast6 code c ≠ matchingMate6 0 v := by
  intro v
  fin_cases v <;> decide +kernel

lemma case4_matching0_allowedStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_4.planCodes v)
    (q : Fin 6 → Fin 4) :
    MatchingAllowed6 (rawPlanFast6 codes) q 0 := by
  rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
  intro v c hc
  have hforall := List.forall_iff_forall_mem.mp
    (case4_planCodes_avoid_matching0_mateStructural6 v)
  exact False.elim (hforall (codes v) (hcodes v) c hc)

lemma case4_matching0_forced5Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 4)
      (decodeDagColoringFast6 5) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨1, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

lemma case4_matching0_forced10Structural6 (codes : Fin 6 → Nat) :
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 4)
      (decodeDagColoringFast6 10) 0 := by
  intro k
  fin_cases k
  · exact Or.inl ⟨2, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩
  · exact Or.inl ⟨0, rfl, rfl, rfl⟩

set_option maxRecDepth 100000 in
lemma case4_unique5_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_4 5 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_4 id ≠ .unique 5 0 := by
  decide +kernel

set_option maxRecDepth 100000 in
lemma case4_unique10_restricted_avoidStructural6 :
    ∀ n : Fin 15, n ≠ 0 →
      ∀ id ∈ matchingReachStructural6 uniqueDagCase6_4 10 n,
        uniqueDagNodeAtFast6 uniqueDagCase6_4 id ≠ .unique 10 0 := by
  decide +kernel

lemma case4_unique5_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_4.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_4
      (rawDagEvalIdFast6 uniqueDagCase6_4 codes) = .unique 5 0) :
    ¬ allEqualFinite6 (decodeDagColoringFast6 5) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 4)
      (decodeDagColoringFast6 5) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 5) n →
        n = 0 := by
  refine ⟨by decide +kernel, case4_matching0_forced5Structural6 codes,
    case4_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_4
    codes 5 0 hcodes hleaf case4_unique5_restricted_avoidStructural6

lemma case4_unique10_leafSemanticStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_4.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 uniqueDagCase6_4
      (rawDagEvalIdFast6 uniqueDagCase6_4 codes) = .unique 10 0) :
    ¬ allEqualFinite6 (decodeDagColoringFast6 10) ∧
    MatchingForced6 (rawPlanFast6 codes) (feasibleTargetRep6 4)
      (decodeDagColoringFast6 10) 0 ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) 0 ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 10) n →
        n = 0 := by
  refine ⟨by decide +kernel, case4_matching0_forced10Structural6 codes,
    case4_matching0_allowedStructural6 codes hcodes _, ?_⟩
  exact unique_semantic_of_restricted_avoidStructural6 uniqueDagCase6_4
    codes 10 0 hcodes hleaf case4_unique10_restricted_avoidStructural6

lemma case4_reached_leafStructural6
    (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ uniqueDagCase6_4.planCodes v) :
    uniqueDagNodeAtFast6 uniqueDagCase6_4
        (rawDagEvalIdFast6 uniqueDagCase6_4 codes) = .unique 5 0 ∨
      uniqueDagNodeAtFast6 uniqueDagCase6_4
        (rawDagEvalIdFast6 uniqueDagCase6_4 codes) = .unique 10 0 := by
  have hid := rawDagEvalId_mem_reachStructural6 uniqueDagCase6_4
    (fun v => (uniqueDagCase6_4.planCodes v).toFinset) codes
    (fun v => by simpa using hcodes v)
  change rawDagEvalIdFast6 uniqueDagCase6_4 codes ∈
    case4ReachStructural6 at hid
  rw [case4ReachStructural6_eq] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with h | h
  · left
    rw [h]
    rfl
  · right
    rw [h]
    rfl

theorem rawDagCaseValidFast6_case4_structural :
    RawDagCaseValidFast6 4 := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  have hcodes : ∀ v, codes v ∈ uniqueDagCase6_4.planCodes v := by
    intro v
    fin_cases v
    · exact h0
    · exact h1
    · exact h2
    · exact h3
    · exact h4
    · exact h5
  have hleaf := case4_reached_leafStructural6 codes hcodes
  change RawDagLeafValidFast6 4 codes
  unfold RawDagLeafValidFast6
  rw [show uniqueDagCase6 (4 : Fin 14) = uniqueDagCase6_4 by rfl]
  refine ⟨rfl, ?_⟩
  rcases hleaf with h5 | h10
  · rw [h5]
    exact case4_unique5_leafSemanticStructural6 codes hcodes h5
  · rw [h10]
    exact case4_unique10_leafSemanticStructural6 codes hcodes h10

end MQGN6Audit

import MQGN6Audit.UniqueDagUniqueTerminalKernel6
import MQGN6Audit.UniqueDagSurvivorTerminalKernel6

/-!
# Exact semantic soundness of node-local structural checks
-/

namespace MQGN6Audit


def rawDagPairForcedPossible6 (cu cv : Nat)
    (target : Fin 4 → Fin 15) (u v : Fin 6) (a b : Fin 4) : Prop :=
  (a = b ∧ matchingMate6 (target a) u = v) ∨
  (decodeLocalPlanFast6 cu b = v ∧ decodeLocalPlanFast6 cv a = u)

instance rawDagPairForcedPossible6Decidable
    (cu cv : Nat) (target : Fin 4 → Fin 15)
    (u v : Fin 6) (a b : Fin 4) :
    Decidable (rawDagPairForcedPossible6 cu cv target u v a b) := by
  unfold rawDagPairForcedPossible6
  infer_instance

lemma rawDagPairForced_rawPlanPossible6 (codes : Fin 6 → Nat)
    (target : Fin 4 → Fin 15) (u v : Fin 6) (a b : Fin 4) :
    PlanForcedEntry6 (rawPlanFast6 codes) target u v a b ↔
      rawDagPairForcedPossible6 (codes u) (codes v) target u v a b := by
  exact planForcedEntry6_iff_compact _ _ _ _ _ _

def rawDagUniqueLocalValidPossible6 (C : UniqueDagCase6)
    (target : Fin 4 → Fin 15) (z : Fin 4096) (m : Fin 15) : Prop :=
  let leaf := UniqueDagNode6.unique z m
  let q := decodeDagColoringFast6 z
  ¬ allEqualFinite6 q ∧
  (∀ k : Fin 3,
    let e := matchingEdges6 m k
    ∀ cu ∈ rawDagPossibleCodesPossible6 C leaf e.1,
    ∀ cv ∈ rawDagPossibleCodesPossible6 C leaf e.2,
      rawDagPairForcedPossible6 cu cv target e.1 e.2 (q e.1) (q e.2) ∧
      rawDagPairAllowedPossible6 cu cv e.1 e.2 (q e.1) (q e.2)) ∧
  ∀ n : Fin 15, n ≠ m →
    ∀ id ∈ matchingReachStructural6 C z n,
      uniqueDagNodeAtFast6 C id ≠ leaf

instance rawDagUniqueLocalValidPossible6Decidable
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (z : Fin 4096) (m : Fin 15) :
    Decidable (rawDagUniqueLocalValidPossible6 C target z m) := by
  unfold rawDagUniqueLocalValidPossible6 rawDagPairForcedPossible6
    rawDagPairAllowedPossible6 allEqualFinite6
  infer_instance

theorem uniqueLeafSemantic_of_possible6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (codes : Fin 6 → Nat) (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (z : Fin 4096) (m : Fin 15)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (hvalid : rawDagUniqueLocalValidPossible6 C target z m) :
    ¬ allEqualFinite6 (decodeDagColoringFast6 z) ∧
    MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m ∧
    MatchingAllowed6 (rawPlanFast6 codes)
      (decodeDagColoringFast6 z) m ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes)
        (decodeDagColoringFast6 z) n → n = m := by
  let q := decodeDagColoringFast6 z
  have hpossible := rawDagCode_mem_possiblePossible6 C codes hcodes
    (.unique z m) hleaf
  refine ⟨hvalid.1, ?_, ?_, ?_⟩
  · intro k
    let e := matchingEdges6 m k
    rw [rawDagPairForced_rawPlanPossible6]
    exact (hvalid.2.1 k (codes e.1) (hpossible e.1)
      (codes e.2) (hpossible e.2)).1
  · intro k
    let e := matchingEdges6 m k
    rw [rawDagPairAllowed_rawPlanPossible6]
    exact (hvalid.2.1 k (codes e.1) (hpossible e.1)
      (codes e.2) (hpossible e.2)).2
  · exact unique_semantic_of_restricted_avoidStructural6 C codes z m
      hcodes hleaf hvalid.2.2

def rawDagNodeValidPossible6 (C : UniqueDagCase6)
    (target : Fin 4 → Fin 15) (id : Nat) : Prop :=
  match uniqueDagNodeAtFast6 C id with
  | .unique z m => uniqueTerminalStructuralValid6 C target id z m
  | .survivor sid =>
      survivorTarget6 sid = target ∧
      rawDagSurvivorLocalValidPossible6 C sid
  | .branch _ => False

instance rawDagNodeValidPossible6Decidable
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15) (id : Nat) :
    Decidable (rawDagNodeValidPossible6 C target id) := by
  unfold rawDagNodeValidPossible6
  generalize uniqueDagNodeAtFast6 C id = node
  cases node <;> infer_instance

def RawDagCaseStructuralValidPossible6 (ci : Fin 14) : Prop :=
  let C := uniqueDagCase6 ci
  C.target = feasibleTargetRep6 ci ∧
  ∀ id ∈ rawDagForward6Possible6 C,
    rawDagNodeValidPossible6 C (feasibleTargetRep6 ci) id

instance rawDagCaseStructuralValidPossible6Decidable (ci : Fin 14) :
    Decidable (RawDagCaseStructuralValidPossible6 ci) := by
  unfold RawDagCaseStructuralValidPossible6
  infer_instance

lemma rawDagEvalId_mem_forward6Possible6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ C.planCodes v) :
    rawDagEvalIdFast6 C codes ∈ rawDagForward6Possible6 C := by
  let n0 := C.root
  let n1 := rawDagStepCodePossible6 C 0 (codes 0) n0
  let n2 := rawDagStepCodePossible6 C 1 (codes 1) n1
  let n3 := rawDagStepCodePossible6 C 2 (codes 2) n2
  let n4 := rawDagStepCodePossible6 C 3 (codes 3) n3
  let n5 := rawDagStepCodePossible6 C 4 (codes 4) n4
  have hc (v : Fin 6) : codes v ∈ rawDagFullCodesPossible6 C v := by
    simpa [rawDagFullCodesPossible6] using hcodes v
  have h0 : n0 ∈ rawDagForward0Possible6 C := by
    simp [n0, rawDagForward0Possible6]
  have h1 : n1 ∈ rawDagForward1Possible6 C :=
    mem_rawDagReachStepPossible6 C 0 _ _ n0 (codes 0) h0 (hc 0)
  have h2 : n2 ∈ rawDagForward2Possible6 C :=
    mem_rawDagReachStepPossible6 C 1 _ _ n1 (codes 1) h1 (hc 1)
  have h3 : n3 ∈ rawDagForward3Possible6 C :=
    mem_rawDagReachStepPossible6 C 2 _ _ n2 (codes 2) h2 (hc 2)
  have h4 : n4 ∈ rawDagForward4Possible6 C :=
    mem_rawDagReachStepPossible6 C 3 _ _ n3 (codes 3) h3 (hc 3)
  have h5 : n5 ∈ rawDagForward5Possible6 C :=
    mem_rawDagReachStepPossible6 C 4 _ _ n4 (codes 4) h4 (hc 4)
  have h6 := mem_rawDagReachStepPossible6 C 5 _ _ n5 (codes 5)
    h5 (hc 5)
  simpa [rawDagEvalIdFast6, n0, n1, n2, n3, n4, n5,
    rawDagForward6Possible6] using h6

theorem rawDagLeafValid_of_structuralPossible6
    (ci : Fin 14) (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ (uniqueDagCase6 ci).planCodes v)
    (hcase : RawDagCaseStructuralValidPossible6 ci) :
    RawDagLeafValidFast6 ci codes := by
  let C := uniqueDagCase6 ci
  have hid : rawDagEvalIdFast6 C codes ∈ rawDagForward6Possible6 C :=
    rawDagEvalId_mem_forward6Possible6 C codes hcodes
  have hvalid := hcase.2 _ hid
  unfold RawDagLeafValidFast6
  refine ⟨hcase.1, ?_⟩
  change rawDagNodeValidPossible6 C (feasibleTargetRep6 ci)
    (rawDagEvalIdFast6 C codes) at hvalid
  unfold rawDagNodeValidPossible6 at hvalid
  generalize hnode : uniqueDagNodeAtFast6 C
    (rawDagEvalIdFast6 C codes) = node at hvalid ⊢
  cases node with
  | unique z m =>
      have hs := uniqueTerminalStructuralValid6_sound C
        (feasibleTargetRep6 ci) codes (rawDagEvalIdFast6 C codes)
        z m hcodes rfl hvalid
      exact hs.2
  | survivor sid =>
      exact ⟨hvalid.1,
        planHasSurvivorTemplate_of_possible6 C codes hcodes sid hnode hvalid.2⟩
  | branch children => exact hvalid

theorem rawDagCaseValid_of_structuralPossible6
    (ci : Fin 14) (hcase : RawDagCaseStructuralValidPossible6 ci) :
    RawDagCaseValidFast6 ci := by
  intro c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  let codes : Fin 6 → Nat := ![c0, c1, c2, c3, c4, c5]
  apply rawDagLeafValid_of_structuralPossible6 ci codes _ hcase
  intro v
  fin_cases v
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
  · exact h5

end MQGN6Audit

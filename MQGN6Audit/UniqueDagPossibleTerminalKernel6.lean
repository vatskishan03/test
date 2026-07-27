import MQGN6Audit.UniqueDagStructuralKernelBase6
import MQGN6Audit.UniqueDagPossibleCodesKernel6

/-!
# Unique-terminal semantics from exact possible-code sets
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

def matchingAllowedPossibleStructural6
    (C : UniqueDagCase6) (z : Fin 4096) (m : Fin 15) : Prop :=
  let leaf := UniqueDagNode6.unique z m
  ∀ v : Fin 6, ∀ code ∈ rawDagPossibleCodesPossible6 C leaf v,
    codeAllowsMatchingAtFast6 code v (decodeDagColoringFast6 z) m

instance matchingAllowedPossibleStructural6Decidable
    (C : UniqueDagCase6) (z : Fin 4096) (m : Fin 15) :
    Decidable (matchingAllowedPossibleStructural6 C z m) := by
  unfold matchingAllowedPossibleStructural6 codeAllowsMatchingAtFast6
  infer_instance

lemma matchingAllowed_of_possibleStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (hvalid : matchingAllowedPossibleStructural6 C z m) :
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) m := by
  rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
  intro v
  exact hvalid v (codes v)
    (rawDagCode_mem_possiblePossible6 C codes hcodes (.unique z m) hleaf v)

def matchingForcedPossibleStructural6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (z : Fin 4096) (m : Fin 15) : Prop :=
  let q := decodeDagColoringFast6 z
  let leaf := UniqueDagNode6.unique z m
  ∀ k : Fin 3,
    let e := matchingEdges6 m k
    (q e.1 = q e.2 ∧ matchingMate6 (target (q e.1)) e.1 = e.2) ∨
      ((∀ cu ∈ rawDagPossibleCodesPossible6 C leaf e.1,
          decodeLocalPlanFast6 cu (q e.2) = e.2) ∧
       (∀ cv ∈ rawDagPossibleCodesPossible6 C leaf e.2,
          decodeLocalPlanFast6 cv (q e.1) = e.1))

instance matchingForcedPossibleStructural6Decidable
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (z : Fin 4096) (m : Fin 15) :
    Decidable (matchingForcedPossibleStructural6 C target z m) := by
  unfold matchingForcedPossibleStructural6
  infer_instance

lemma matchingForced_of_possibleStructural6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (codes : Fin 6 → Nat) (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (hvalid : matchingForcedPossibleStructural6 C target z m) :
    MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m := by
  intro k
  rw [planForcedEntry6_iff_compact]
  rcases hvalid k with htarget | ⟨hu, hv⟩
  · exact Or.inl htarget
  · right
    let e := matchingEdges6 m k
    exact ⟨
      hu (codes e.1)
        (rawDagCode_mem_possiblePossible6 C codes hcodes (.unique z m)
          hleaf e.1),
      hv (codes e.2)
        (rawDagCode_mem_possiblePossible6 C codes hcodes (.unique z m)
          hleaf e.2)⟩

def uniqueLeafValidPossibleStructural6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (z : Fin 4096) (m : Fin 15) : Prop :=
  ¬ allEqual (decodeDagColoringFast6 z) ∧
  matchingForcedPossibleStructural6 C target z m ∧
  matchingAllowedPossibleStructural6 C z m ∧
  ∀ n : Fin 15, n ≠ m →
    ∀ id ∈ matchingReachStructural6 C z n,
      uniqueDagNodeAtFast6 C id ≠ .unique z m

instance uniqueLeafValidPossibleStructural6Decidable
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (z : Fin 4096) (m : Fin 15) :
    Decidable (uniqueLeafValidPossibleStructural6 C target z m) := by
  unfold uniqueLeafValidPossibleStructural6
    matchingForcedPossibleStructural6
    matchingAllowedPossibleStructural6
    codeAllowsMatchingAtFast6 allEqual
  infer_instance

lemma uniqueLeafSemantic_of_possibleStructural6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (codes : Fin 6 → Nat) (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (hvalid : uniqueLeafValidPossibleStructural6 C target z m) :
    ¬ allEqual (decodeDagColoringFast6 z) ∧
    MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) m ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) n →
        n = m := by
  rcases hvalid with ⟨hnonmono, hforced, hallowed, havoid⟩
  exact ⟨hnonmono,
    matchingForced_of_possibleStructural6 C target codes z m hcodes hleaf
      hforced,
    matchingAllowed_of_possibleStructural6 C codes z m hcodes hleaf
      hallowed,
    unique_semantic_of_restricted_avoidStructural6 C codes z m hcodes
      hleaf havoid⟩

end MQGN6Audit

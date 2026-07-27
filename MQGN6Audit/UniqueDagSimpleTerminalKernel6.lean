import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Reusable semantics for simple unique terminals
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

lemma matchingAllowed_of_codes_avoid_mateStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (m : Fin 15) (q : Fin 6 → Fin 4)
    (havoid : ∀ v : Fin 6,
      (C.planCodes v).Forall fun code =>
        ∀ c : Fin 4,
          decodeLocalPlanFast6 code c ≠ matchingMate6 m v) :
    MatchingAllowed6 (rawPlanFast6 codes) q m := by
  rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
  intro v c hc
  have hforall := List.forall_iff_forall_mem.mp (havoid v)
  exact False.elim (hforall (codes v) (hcodes v) c hc)

lemma uniqueLeafSemantic_simpleStructural6
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (codes : Fin 6 → Nat) (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (hnonmono : ¬ allEqual (decodeDagColoringFast6 z))
    (hforced : MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m)
    (hallowed : MatchingAllowed6 (rawPlanFast6 codes)
      (decodeDagColoringFast6 z) m)
    (havoid : ∀ n : Fin 15, n ≠ m →
      ∀ id ∈ matchingReachStructural6 C z n,
        uniqueDagNodeAtFast6 C id ≠ .unique z m) :
    ¬ allEqual (decodeDagColoringFast6 z) ∧
    MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m ∧
    MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) m ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) n →
        n = m := by
  exact ⟨hnonmono, hforced, hallowed,
    unique_semantic_of_restricted_avoidStructural6 C codes z m hcodes
      hleaf havoid⟩

end MQGN6Audit

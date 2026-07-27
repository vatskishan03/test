import MQGN6Audit.UniqueDagRawKernelBase6

/-!
# Semantic factorization for the compressed `K₆` certificate

The lemmas in this module connect the compact per-vertex plan codes to the
original matching predicates.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

theorem planForcedEntry6_iff_compact
    (plan : Fin 6 → Fin 4 → Fin 6) (target : Fin 4 → Fin 15)
    (u v : Fin 6) (a b : Fin 4) :
    PlanForcedEntry6 plan target u v a b ↔
      ((a = b ∧ matchingMate6 (target a) u = v) ∨
        (plan u b = v ∧ plan v a = u)) := by
  constructor
  · rintro (⟨c, hmate, rfl, rfl⟩ | ⟨c, d, huc, hvd, rfl, rfl⟩)
    · exact Or.inl ⟨rfl, hmate⟩
    · exact Or.inr ⟨huc, hvd⟩
  · rintro (⟨rfl, hmate⟩ | ⟨huc, hvd⟩)
    · exact Or.inl ⟨a, hmate, rfl, rfl⟩
    · exact Or.inr ⟨b, a, huc, hvd, rfl, rfl⟩

/-- The one-vertex half of `MatchingAllowed6`. -/
def codeAllowsMatchingAtFast6 (code : Nat) (v : Fin 6)
    (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ c : Fin 4,
    decodeLocalPlanFast6 code c = matchingMate6 m v →
      q (matchingMate6 m v) = c

instance (code : Nat) (v : Fin 6) (q : Fin 6 → Fin 4) (m : Fin 15) :
    Decidable (codeAllowsMatchingAtFast6 code v q m) := by
  unfold codeAllowsMatchingAtFast6
  infer_instance

private theorem matchingMate6_matchingEdges6_fst_fast
    (m : Fin 15) (k : Fin 3) :
    matchingMate6 m (matchingEdges6 m k).1 = (matchingEdges6 m k).2 := by
  fin_cases m <;> fin_cases k <;> rfl

private theorem matchingMate6_matchingEdges6_snd_fast
    (m : Fin 15) (k : Fin 3) :
    matchingMate6 m (matchingEdges6 m k).2 = (matchingEdges6 m k).1 := by
  rw [← matchingMate6_matchingEdges6_fst_fast m k]
  exact matchingMate6_involutive m (matchingEdges6 m k).1

theorem matchingAllowed6_iff_codeAllowsMatchingAtFast6
    (codes : Fin 6 → Nat) (q : Fin 6 → Fin 4) (m : Fin 15) :
    MatchingAllowed6 (rawPlanFast6 codes) q m ↔
      ∀ v : Fin 6, codeAllowsMatchingAtFast6 (codes v) v q m := by
  constructor
  · intro h v c hc
    obtain ⟨k, hk⟩ := matchingEdges6_contains_vertex m v
    have ha := h k
    dsimp only at hk ha
    rcases hk with ⟨hfst, hsnd⟩ | ⟨hsnd, hfst⟩
    · have hv := ha.1 c
      rw [hfst, hsnd] at hv
      exact hv hc
    · have hv := ha.2 c
      rw [hfst, hsnd] at hv
      exact hv hc
  · intro h k
    let e := matchingEdges6 m k
    constructor
    · intro c hc
      have hv := h e.1 c
      rw [matchingMate6_matchingEdges6_fst_fast m k] at hv
      exact hv hc
    · intro c hc
      have hv := h e.2 c
      rw [matchingMate6_matchingEdges6_snd_fast m k] at hv
      exact hv hc

end MQGN6Audit

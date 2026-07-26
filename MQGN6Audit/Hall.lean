import Mathlib.Combinatorics.Hall.Finite

open Function

namespace MQGN6Audit

/-- A tiny Hall lemma tailored to families in which each point can fail at most one request. -/
theorem exists_injective_of_at_most_one_bad
    {D U : Type*} [Fintype D] [Fintype U] [DecidableEq U]
    (good : D → U → Prop) [DecidableRel good]
    (hcard : Fintype.card D ≤ Fintype.card U)
    (hex : ∀ d, ∃ u, good d u)
    (hbad : ∀ u d e, ¬ good d u → ¬ good e u → d = e) :
    ∃ f : D → U, Function.Injective f ∧ ∀ d, good d (f d) := by
  classical
  let t : D → Finset U := fun d => Finset.univ.filter (good d)
  apply (Finset.all_card_le_biUnion_card_iff_existsInjective' t).mp
  intro s
  by_cases hs : s.card ≤ 1
  · rcases s.eq_empty_or_nonempty with rfl | hsne
    · simp
    · obtain ⟨d, hd⟩ := hsne
      have hsd : s = {d} := by
        apply Finset.eq_singleton_iff_unique_mem.mpr
        exact ⟨hd, fun x hx => Finset.card_le_one.1 hs x hx d hd⟩
      subst s
      simp only [Finset.card_singleton, Finset.biUnion_singleton]
      obtain ⟨u, hu⟩ := hex d
      have hut : u ∈ t d := by simp [t, hu]
      exact Finset.card_pos.mpr ⟨u, hut⟩
  · have hs2 : 1 < s.card := Nat.lt_of_not_ge hs
    have hUnion : s.biUnion t = Finset.univ := by
      ext u
      simp only [Finset.mem_biUnion, Finset.mem_univ, iff_true]
      obtain ⟨d, hd, e, he, hde⟩ := Finset.one_lt_card.mp hs2
      by_contra hnone
      push_neg at hnone
      have hnd : ¬ good d u := by
        intro hdu
        exact hnone d hd ⟨by simp [t, hdu]⟩
      have hne : ¬ good e u := by
        intro heu
        exact hnone e he ⟨by simp [t, heu]⟩
      exact hde (hbad u d e hnd hne)
    rw [hUnion, Finset.card_univ]
    exact (Finset.card_le_univ s).trans hcard

end MQGN6Audit

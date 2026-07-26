import MQGN6Audit.VertexAxis

/-!
# The fifteen perfect matchings of `K₆`

This file replaces the recursive matching sum by a finite table of the fifteen
perfect matchings.  It then extracts, for each monochromatic color, one matching
whose three diagonal edge entries are all nonzero.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- Canonically ordered edges of the fifteen perfect matchings of `K₆`. -/
def matchingEdges6 : Fin 15 → Fin 3 → Fin 6 × Fin 6 :=
  ![
    ![(0, 1), (2, 3), (4, 5)],
    ![(0, 1), (2, 4), (3, 5)],
    ![(0, 1), (2, 5), (3, 4)],
    ![(0, 2), (1, 3), (4, 5)],
    ![(0, 2), (1, 4), (3, 5)],
    ![(0, 2), (1, 5), (3, 4)],
    ![(0, 3), (1, 2), (4, 5)],
    ![(0, 3), (1, 4), (2, 5)],
    ![(0, 3), (1, 5), (2, 4)],
    ![(0, 4), (1, 2), (3, 5)],
    ![(0, 4), (1, 3), (2, 5)],
    ![(0, 4), (1, 5), (2, 3)],
    ![(0, 5), (1, 2), (3, 4)],
    ![(0, 5), (1, 3), (2, 4)],
    ![(0, 5), (1, 4), (2, 3)]
  ]

/-- Partner table for the same fifteen perfect matchings. -/
def matchingMate6 : Fin 15 → Fin 6 → Fin 6 :=
  ![
    ![1, 0, 3, 2, 5, 4],
    ![1, 0, 4, 5, 2, 3],
    ![1, 0, 5, 4, 3, 2],
    ![2, 3, 0, 1, 5, 4],
    ![2, 4, 0, 5, 1, 3],
    ![2, 5, 0, 4, 3, 1],
    ![3, 2, 1, 0, 5, 4],
    ![3, 4, 5, 0, 1, 2],
    ![3, 5, 4, 0, 2, 1],
    ![4, 2, 1, 5, 0, 3],
    ![4, 3, 5, 1, 0, 2],
    ![4, 5, 3, 2, 0, 1],
    ![5, 2, 1, 4, 3, 0],
    ![5, 3, 4, 1, 2, 0],
    ![5, 4, 3, 2, 1, 0]
  ]

/-- The monomial contributed by one of the fifteen perfect matchings. -/
def pmTerm6 (W : WeightsN 6 4 ℂ) (ι : Fin 6 → Fin 4) (m : Fin 15) : ℂ :=
  ∏ k : Fin 3,
    let e := matchingEdges6 m k
    W (mkEdge e.1 e.2 (ι e.1) (ι e.2))

/-- The recursive perfect-matching sum on six vertices is exactly the sum of the
fifteen tabulated monomials. -/
lemma pmSumN6_eq_sum_pmTerm6 (W : WeightsN 6 4 ℂ) (ι : Fin 6 → Fin 4) :
    pmSumN 6 4 W ι = ∑ m : Fin 15, pmTerm6 W ι m := by
  set_option maxHeartbeats 1000000 in
    simp [pmSumN, pmSumList, pmSumListAux, vertices, pmTerm6, matchingEdges6,
      Fin.sum_univ_succ, Fin.prod_univ_three] <;>
    ring

lemma matchingEdges6_contains_vertex (m : Fin 15) (v : Fin 6) :
    ∃ k : Fin 3,
      let e := matchingEdges6 m k
      (e.1 = v ∧ e.2 = matchingMate6 m v) ∨
        (e.2 = v ∧ e.1 = matchingMate6 m v) := by
  fin_cases m <;> fin_cases v <;>
    first | exact ⟨0, by decide⟩ | exact ⟨1, by decide⟩ | exact ⟨2, by decide⟩

lemma matchingMate6_ne (m : Fin 15) (v : Fin 6) : matchingMate6 m v ≠ v := by
  fin_cases m <;> fin_cases v <;> decide

lemma matchingMate6_involutive (m : Fin 15) (v : Fin 6) :
    matchingMate6 m (matchingMate6 m v) = v := by
  fin_cases m <;> fin_cases v <;> rfl

lemma pmTerm6_factor_ne_zero
    {W : WeightsN 6 4 ℂ} {ι : Fin 6 → Fin 4} {m : Fin 15}
    (hterm : pmTerm6 W ι m ≠ 0) (k : Fin 3) :
    let e := matchingEdges6 m k
    W (mkEdge e.1 e.2 (ι e.1) (ι e.2)) ≠ 0 := by
  dsimp
  intro hzero
  apply hterm
  unfold pmTerm6
  apply Finset.prod_eq_zero (Finset.mem_univ k)
  simpa using hzero

/-- A constant coloring. -/
def monoColoring6 (c : Fin 4) : Fin 6 → Fin 4 := fun _ => c

@[simp] lemma allEqual_monoColoring6 (c : Fin 4) : allEqual (monoColoring6 c) := by
  simp [monoColoring6, allEqual, allEqualList, vertices]

lemma pmSumN_monoColoring6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (c : Fin 4) :
    pmSumN 6 4 W (monoColoring6 c) = 1 := by
  simpa using hW (monoColoring6 c)

/-- Every required monochromatic coefficient contains at least one genuinely
nonzero perfect-matching monomial. -/
theorem exists_nonzero_target_matching6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (c : Fin 4) :
    ∃ m : Fin 15, ∀ k : Fin 3,
      let e := matchingEdges6 m k
      W (mkEdge e.1 e.2 c c) ≠ 0 := by
  have hsum : (∑ m : Fin 15, pmTerm6 W (monoColoring6 c) m) = 1 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    exact pmSumN_monoColoring6 W hW c
  have hex : ∃ m : Fin 15, pmTerm6 W (monoColoring6 c) m ≠ 0 := by
    by_contra h
    push_neg at h
    have hz : (∑ m : Fin 15, pmTerm6 W (monoColoring6 c) m) = 0 :=
      Finset.sum_eq_zero fun m _ => h m
    rw [hz] at hsum
    exact zero_ne_one hsum
  obtain ⟨m, hm⟩ := hex
  refine ⟨m, ?_⟩
  intro k
  simpa [monoColoring6] using pmTerm6_factor_ne_zero hm k

/-- Choose one target perfect matching for each of the four colors. -/
theorem exists_target_matching_family6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) :
    ∃ target : Fin 4 → Fin 15, ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0 := by
  choose target htarget using fun c => exists_nonzero_target_matching6 W hW c
  exact ⟨target, htarget⟩

end

end MQGN6Audit

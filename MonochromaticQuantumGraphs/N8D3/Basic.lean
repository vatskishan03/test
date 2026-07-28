import MonochromaticQuantumGraphs.N8D3.GeneratedData

/-!
# Basic exact matching algebra for `(N,D) = (8,3)`

This module connects the official recursive perfect-matching sum to the 105
explicit perfect matchings of `K₈` and extracts one nonzero target matching for
each of the three monochromatic coefficients.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- The monomial contributed by one of the 105 perfect matchings. -/
def pmTerm8 (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3)
    (m : Fin 105) : ℂ :=
  ∏ k : Fin 4,
    let e := matchingEdges8 m k
    W (mkEdge e.1 e.2 (q e.1) (q e.2))

/-- The official recursive perfect-matching sum on eight vertices is exactly
the sum over the 105 tabulated perfect matchings. -/
set_option maxHeartbeats 10000000 in
theorem pmSumN8_eq_sum_pmTerm8 (W : WeightsN 8 3 ℂ)
    (q : Fin 8 → Fin 3) :
    pmSumN 8 3 W q = ∑ m : Fin 105, pmTerm8 W q m := by
  simp [pmSumN, pmSumList, pmSumListAux, vertices, pmTerm8, matchingEdges8,
    Fin.sum_univ_succ, Fin.prod_univ_four] <;>
    ring

/-- A constant three-color assignment on eight vertices. -/
def monoColoring8 (c : Fin 3) : Fin 8 → Fin 3 := fun _ => c

@[simp] theorem allEqual_monoColoring8 (c : Fin 3) :
    allEqual (monoColoring8 c) := by
  simp [monoColoring8, allEqual, allEqualList, vertices]

lemma pmSumN_monoColoring8
    (W : WeightsN 8 3 ℂ) (hW : EqSystemN 8 3 W) (c : Fin 3) :
    pmSumN 8 3 W (monoColoring8 c) = 1 := by
  simpa using hW (monoColoring8 c)

lemma pmTerm8_factor_ne_zero
    {W : WeightsN 8 3 ℂ} {q : Fin 8 → Fin 3} {m : Fin 105}
    (hterm : pmTerm8 W q m ≠ 0) (k : Fin 4) :
    let e := matchingEdges8 m k
    W (mkEdge e.1 e.2 (q e.1) (q e.2)) ≠ 0 := by
  dsimp
  intro hzero
  apply hterm
  unfold pmTerm8
  apply Finset.prod_eq_zero (Finset.mem_univ k)
  simpa using hzero

/-- Every required monochromatic coefficient contains a genuinely nonzero
perfect-matching monomial. -/
theorem exists_nonzero_target_matching8
    (W : WeightsN 8 3 ℂ) (hW : EqSystemN 8 3 W) (c : Fin 3) :
    ∃ m : Fin 105, ∀ k : Fin 4,
      let e := matchingEdges8 m k
      W (mkEdge e.1 e.2 c c) ≠ 0 := by
  have hsum : (∑ m : Fin 105, pmTerm8 W (monoColoring8 c) m) = 1 := by
    rw [← pmSumN8_eq_sum_pmTerm8]
    exact pmSumN_monoColoring8 W hW c
  have hex : ∃ m : Fin 105, pmTerm8 W (monoColoring8 c) m ≠ 0 := by
    by_contra h
    push_neg at h
    have hz : (∑ m : Fin 105, pmTerm8 W (monoColoring8 c) m) = 0 :=
      Finset.sum_eq_zero fun m _ => h m
    rw [hz] at hsum
    exact zero_ne_one hsum
  obtain ⟨m, hm⟩ := hex
  refine ⟨m, ?_⟩
  intro k
  simpa [monoColoring8] using pmTerm8_factor_ne_zero hm k

/-- Choose one nonzero target perfect matching for each of the three colors. -/
theorem exists_target_matching_triple8
    (W : WeightsN 8 3 ℂ) (hW : EqSystemN 8 3 W) :
    ∃ target : Fin 3 → Fin 105, ∀ c k,
      let e := matchingEdges8 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0 := by
  choose target htarget using fun c =>
    exists_nonzero_target_matching8 W hW c
  exact ⟨target, htarget⟩

end

end MonochromaticQuantumGraphs.N8D3

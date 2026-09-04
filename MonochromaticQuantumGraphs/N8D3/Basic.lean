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

/-- The matching table consists of seven consecutive blocks of fifteen
matchings, according to the partner of vertex zero. -/
private def matchingBlockEquiv8 : Fin 7 × Fin 15 ≃ Fin 105 :=
  finProdFinEquiv

private def matchingBlockIndex8 (b : Fin 7) (j : Fin 15) : Fin 105 :=
  matchingBlockEquiv8 (b, j)

/-- The outermost branch of the official recursion in which vertex zero is
paired with `b.succ`. -/
private def pmFirstPartner8
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) (b : Fin 7) : ℂ :=
  W (mkEdge 0 b.succ (q 0) (q b.succ)) *
    pmSumListAux W q 6 ((vertices 8).tail.erase b.succ)

private lemma pmSumN8_eq_sum_firstPartner8
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmSumN 8 3 W q = ∑ b : Fin 7, pmFirstPartner8 W q b := by
  simp [pmFirstPartner8, pmSumN, pmSumList, pmSumListAux, vertices,
    Fin.sum_univ_succ]

private lemma pmFirstPartner8_eq_block0
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 0 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 0 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block1
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 1 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 1 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block2
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 2 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 2 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block3
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 3 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 3 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block4
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 4 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 4 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block5
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 5 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 5 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block6
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) :
    pmFirstPartner8 W q 6 =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 6 j) := by
  set_option maxRecDepth 10000 in
    unfold pmTerm8
    simp [pmFirstPartner8, matchingBlockIndex8, matchingBlockEquiv8,
      finProdFinEquiv, pmSumListAux, vertices, matchingEdges8,
      Fin.sum_univ_succ, Fin.prod_univ_four] <;>
      ring

private lemma pmFirstPartner8_eq_block
    (W : WeightsN 8 3 ℂ) (q : Fin 8 → Fin 3) (b : Fin 7) :
    pmFirstPartner8 W q b =
      ∑ j : Fin 15, pmTerm8 W q (matchingBlockIndex8 b j) := by
  fin_cases b
  · exact pmFirstPartner8_eq_block0 W q
  · exact pmFirstPartner8_eq_block1 W q
  · exact pmFirstPartner8_eq_block2 W q
  · exact pmFirstPartner8_eq_block3 W q
  · exact pmFirstPartner8_eq_block4 W q
  · exact pmFirstPartner8_eq_block5 W q
  · exact pmFirstPartner8_eq_block6 W q

/-- The official recursive perfect-matching sum on eight vertices is exactly
the sum over the 105 tabulated perfect matchings. -/
theorem pmSumN8_eq_sum_pmTerm8 (W : WeightsN 8 3 ℂ)
    (q : Fin 8 → Fin 3) :
    pmSumN 8 3 W q = ∑ m : Fin 105, pmTerm8 W q m := by
  calc
    pmSumN 8 3 W q =
        ∑ b : Fin 7, pmFirstPartner8 W q b :=
      pmSumN8_eq_sum_firstPartner8 W q
    _ = ∑ b : Fin 7, ∑ j : Fin 15,
          pmTerm8 W q (matchingBlockIndex8 b j) := by
      apply Fintype.sum_congr
      intro b
      exact pmFirstPartner8_eq_block W q b
    _ = ∑ m : Fin 105, pmTerm8 W q m := by
      rw [← Fintype.sum_prod_type']
      exact matchingBlockEquiv8.sum_comp (pmTerm8 W q)

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

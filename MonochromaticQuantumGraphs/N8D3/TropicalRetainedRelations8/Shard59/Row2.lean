import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 297. -/
def tropicalOverlapProvenance8Row297 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 148, coordinateB := 6, sourceJ := 149, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 297. -/
def tropicalOverlapRelation8Row297 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row297 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 40 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 89 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 77 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row297 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 40 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 77 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 297. -/
theorem tropicalOverlapSourceIExponent8_replay_row297 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row297.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row297.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row297 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 297. -/
theorem tropicalOverlapSourceJExponent8_replay_row297 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row297.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row297.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row297 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row297 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row297.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row297 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row297 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row297 :
    tropicalOverlapRelation8Row297 =
      tropicalOverlapSourceCombination8Row297 := by
  simp [tropicalOverlapRelation8Row297,
    tropicalOverlapSourceCombination8Row297,
    tropicalOverlapProvenance8Row297,
    tropicalOverlapSourceIExponent8Row297,
    tropicalOverlapSourceJExponent8Row297, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 297. -/
theorem tropicalOverlapRelation8_provenance_row297 :
    tropicalOverlapRelation8Row297 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row297 := by
  rw [tropicalOverlapRelation8_sourceCombination_row297]
  unfold tropicalOverlapSourceCombination8Row297
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row297,
    tropicalOverlapSourceJExponent8_replay_row297]

end

end MonochromaticQuantumGraphs.N8D3

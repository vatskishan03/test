import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 30. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 30. -/
def tropicalOverlapProvenance8Row30 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 8, coordinateB := 7, sourceJ := 9, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 30. -/
def tropicalOverlapRelation8Row30 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row30 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 41 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 89 126,
  tropicalOverlapDegreeFiveExponent8 7 20 51 69 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row30 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 41 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 89 126,
  tropicalOverlapDegreeFiveExponent8 1 26 51 69 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 30. -/
theorem tropicalOverlapSourceIExponent8_replay_row30 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row30.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row30.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row30 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 30. -/
theorem tropicalOverlapSourceJExponent8_replay_row30 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row30.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row30.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row30 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row30 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row30.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row30 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row30 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row30 :
    tropicalOverlapRelation8Row30 =
      tropicalOverlapSourceCombination8Row30 := by
  simp [tropicalOverlapRelation8Row30,
    tropicalOverlapSourceCombination8Row30,
    tropicalOverlapProvenance8Row30,
    tropicalOverlapSourceIExponent8Row30,
    tropicalOverlapSourceJExponent8Row30, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 30. -/
theorem tropicalOverlapRelation8_provenance_row30 :
    tropicalOverlapRelation8Row30 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row30 := by
  rw [tropicalOverlapRelation8_sourceCombination_row30]
  unfold tropicalOverlapSourceCombination8Row30
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row30,
    tropicalOverlapSourceJExponent8_replay_row30]

end

end MonochromaticQuantumGraphs.N8D3

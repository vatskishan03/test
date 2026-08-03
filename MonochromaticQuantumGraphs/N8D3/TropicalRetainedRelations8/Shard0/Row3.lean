import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 3. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 3. -/
def tropicalOverlapProvenance8Row3 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 0, coordinateB := 89, sourceJ := 9, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 3. -/
def tropicalOverlapRelation8Row3 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row3 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 89 98 138,
  tropicalOverlapDegreeFiveExponent8 7 58 89 108 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 126,
  tropicalOverlapDegreeFiveExponent8 25 51 69 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row3 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 101 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 111 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 126,
  tropicalOverlapDegreeFiveExponent8 26 51 69 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 3. -/
theorem tropicalOverlapSourceIExponent8_replay_row3 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row3.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row3.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row3 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 3. -/
theorem tropicalOverlapSourceJExponent8_replay_row3 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row3.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row3.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row3 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row3 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row3.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row3 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row3 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row3 :
    tropicalOverlapRelation8Row3 =
      tropicalOverlapSourceCombination8Row3 := by
  simp [tropicalOverlapRelation8Row3,
    tropicalOverlapSourceCombination8Row3,
    tropicalOverlapProvenance8Row3,
    tropicalOverlapSourceIExponent8Row3,
    tropicalOverlapSourceJExponent8Row3, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 3. -/
theorem tropicalOverlapRelation8_provenance_row3 :
    tropicalOverlapRelation8Row3 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row3 := by
  rw [tropicalOverlapRelation8_sourceCombination_row3]
  unfold tropicalOverlapSourceCombination8Row3
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row3,
    tropicalOverlapSourceJExponent8_replay_row3]

end

end MonochromaticQuantumGraphs.N8D3

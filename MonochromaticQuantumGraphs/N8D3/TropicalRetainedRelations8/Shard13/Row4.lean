import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 69. -/
def tropicalOverlapProvenance8Row69 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 20, coordinateB := 90, sourceJ := 37, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 69. -/
def tropicalOverlapRelation8Row69 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row69 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 99 138,
  tropicalOverlapDegreeFiveExponent8 7 58 90 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row69 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 105 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 114 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 51 70 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 69. -/
theorem tropicalOverlapSourceIExponent8_replay_row69 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row69.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row69.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row69 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 69. -/
theorem tropicalOverlapSourceJExponent8_replay_row69 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row69.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row69.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row69 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row69 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row69.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row69 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row69 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row69 :
    tropicalOverlapRelation8Row69 =
      tropicalOverlapSourceCombination8Row69 := by
  simp [tropicalOverlapRelation8Row69,
    tropicalOverlapSourceCombination8Row69,
    tropicalOverlapProvenance8Row69,
    tropicalOverlapSourceIExponent8Row69,
    tropicalOverlapSourceJExponent8Row69, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 69. -/
theorem tropicalOverlapRelation8_provenance_row69 :
    tropicalOverlapRelation8Row69 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row69 := by
  rw [tropicalOverlapRelation8_sourceCombination_row69]
  unfold tropicalOverlapSourceCombination8Row69
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row69,
    tropicalOverlapSourceJExponent8_replay_row69]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 58. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 58. -/
def tropicalOverlapProvenance8Row58 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 141, sourceJ := 78, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 58. -/
def tropicalOverlapRelation8Row58 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row58 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row58 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 58. -/
theorem tropicalOverlapSourceIExponent8_replay_row58 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row58.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row58.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row58 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 58. -/
theorem tropicalOverlapSourceJExponent8_replay_row58 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row58.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row58.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row58 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row58 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row58.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row58 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row58 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row58 :
    tropicalOverlapRelation8Row58 =
      tropicalOverlapSourceCombination8Row58 := by
  simp [tropicalOverlapRelation8Row58,
    tropicalOverlapSourceCombination8Row58,
    tropicalOverlapProvenance8Row58,
    tropicalOverlapSourceIExponent8Row58,
    tropicalOverlapSourceJExponent8Row58, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 58. -/
theorem tropicalOverlapRelation8_provenance_row58 :
    tropicalOverlapRelation8Row58 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row58 := by
  rw [tropicalOverlapRelation8_sourceCombination_row58]
  unfold tropicalOverlapSourceCombination8Row58
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row58,
    tropicalOverlapSourceJExponent8_replay_row58]

end

end MonochromaticQuantumGraphs.N8D3

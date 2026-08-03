import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 131. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 131. -/
def tropicalOverlapProvenance8Row131 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 40, coordinateB := 87, sourceJ := 53, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 131. -/
def tropicalOverlapRelation8Row131 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row131 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 87 100 138,
  tropicalOverlapDegreeFiveExponent8 7 58 87 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 87 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row131 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 106 138,
  tropicalOverlapDegreeFiveExponent8 7 58 85 114 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 87 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 131. -/
theorem tropicalOverlapSourceIExponent8_replay_row131 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row131.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row131.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row131 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 131. -/
theorem tropicalOverlapSourceJExponent8_replay_row131 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row131.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row131.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row131 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row131 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row131.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row131 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row131 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row131 :
    tropicalOverlapRelation8Row131 =
      tropicalOverlapSourceCombination8Row131 := by
  simp [tropicalOverlapRelation8Row131,
    tropicalOverlapSourceCombination8Row131,
    tropicalOverlapProvenance8Row131,
    tropicalOverlapSourceIExponent8Row131,
    tropicalOverlapSourceJExponent8Row131, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 131. -/
theorem tropicalOverlapRelation8_provenance_row131 :
    tropicalOverlapRelation8Row131 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row131 := by
  rw [tropicalOverlapRelation8_sourceCombination_row131]
  unfold tropicalOverlapSourceCombination8Row131
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row131,
    tropicalOverlapSourceJExponent8_replay_row131]

end

end MonochromaticQuantumGraphs.N8D3

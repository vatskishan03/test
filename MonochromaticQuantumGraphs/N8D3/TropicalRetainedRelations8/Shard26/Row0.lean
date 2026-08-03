import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 130. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 130. -/
def tropicalOverlapProvenance8Row130 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 40, coordinateB := 89, sourceJ := 49, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 130. -/
def tropicalOverlapRelation8Row130 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row130 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 89 100 138,
  tropicalOverlapDegreeFiveExponent8 7 58 89 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row130 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 103 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 111 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 132,
  tropicalOverlapDegreeFiveExponent8 26 51 71 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 130. -/
theorem tropicalOverlapSourceIExponent8_replay_row130 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row130.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row130.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row130 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 130. -/
theorem tropicalOverlapSourceJExponent8_replay_row130 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row130.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row130.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row130 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row130 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row130.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row130 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row130 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row130 :
    tropicalOverlapRelation8Row130 =
      tropicalOverlapSourceCombination8Row130 := by
  simp [tropicalOverlapRelation8Row130,
    tropicalOverlapSourceCombination8Row130,
    tropicalOverlapProvenance8Row130,
    tropicalOverlapSourceIExponent8Row130,
    tropicalOverlapSourceJExponent8Row130, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 130. -/
theorem tropicalOverlapRelation8_provenance_row130 :
    tropicalOverlapRelation8Row130 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row130 := by
  rw [tropicalOverlapRelation8_sourceCombination_row130]
  unfold tropicalOverlapSourceCombination8Row130
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row130,
    tropicalOverlapSourceJExponent8_replay_row130]

end

end MonochromaticQuantumGraphs.N8D3

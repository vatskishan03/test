import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 8. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 8. -/
def tropicalOverlapProvenance8Row8 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 1, coordinateB := 86, sourceJ := 7, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 8. -/
def tropicalOverlapRelation8Row8 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row8 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 86 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row8 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 101 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 111 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 8. -/
theorem tropicalOverlapSourceIExponent8_replay_row8 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row8.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row8.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row8 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 8. -/
theorem tropicalOverlapSourceJExponent8_replay_row8 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row8.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row8.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row8 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row8 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row8.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row8 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row8 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row8 :
    tropicalOverlapRelation8Row8 =
      tropicalOverlapSourceCombination8Row8 := by
  simp [tropicalOverlapRelation8Row8,
    tropicalOverlapSourceCombination8Row8,
    tropicalOverlapProvenance8Row8,
    tropicalOverlapSourceIExponent8Row8,
    tropicalOverlapSourceJExponent8Row8, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 8. -/
theorem tropicalOverlapRelation8_provenance_row8 :
    tropicalOverlapRelation8Row8 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row8 := by
  rw [tropicalOverlapRelation8_sourceCombination_row8]
  unfold tropicalOverlapSourceCombination8Row8
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row8,
    tropicalOverlapSourceJExponent8_replay_row8]

end

end MonochromaticQuantumGraphs.N8D3

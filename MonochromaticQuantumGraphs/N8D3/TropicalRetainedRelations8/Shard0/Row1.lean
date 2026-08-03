import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 1. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 1. -/
def tropicalOverlapProvenance8Row1 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 0, coordinateB := 88, sourceJ := 2, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 1. -/
def tropicalOverlapRelation8Row1 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row1 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 88 98 138,
  tropicalOverlapDegreeFiveExponent8 7 58 88 108 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 25 51 69 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row1 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 98 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 108 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 26 51 69 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 1. -/
theorem tropicalOverlapSourceIExponent8_replay_row1 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row1.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row1.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row1 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 1. -/
theorem tropicalOverlapSourceJExponent8_replay_row1 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row1.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row1.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row1 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row1 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row1.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row1 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row1 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row1 :
    tropicalOverlapRelation8Row1 =
      tropicalOverlapSourceCombination8Row1 := by
  simp [tropicalOverlapRelation8Row1,
    tropicalOverlapSourceCombination8Row1,
    tropicalOverlapProvenance8Row1,
    tropicalOverlapSourceIExponent8Row1,
    tropicalOverlapSourceJExponent8Row1, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 1. -/
theorem tropicalOverlapRelation8_provenance_row1 :
    tropicalOverlapRelation8Row1 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row1 := by
  rw [tropicalOverlapRelation8_sourceCombination_row1]
  unfold tropicalOverlapSourceCombination8Row1
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row1,
    tropicalOverlapSourceJExponent8_replay_row1]

end

end MonochromaticQuantumGraphs.N8D3

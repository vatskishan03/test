import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 137. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 137. -/
def tropicalOverlapProvenance8Row137 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 41, coordinateB := 90, sourceJ := 59, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 137. -/
def tropicalOverlapRelation8Row137 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row137 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 90 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row137 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 106 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 114 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 26 51 77 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 137. -/
theorem tropicalOverlapSourceIExponent8_replay_row137 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row137.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row137.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row137 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 137. -/
theorem tropicalOverlapSourceJExponent8_replay_row137 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row137.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row137.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row137 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row137 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row137.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row137 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row137 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row137 :
    tropicalOverlapRelation8Row137 =
      tropicalOverlapSourceCombination8Row137 := by
  simp [tropicalOverlapRelation8Row137,
    tropicalOverlapSourceCombination8Row137,
    tropicalOverlapProvenance8Row137,
    tropicalOverlapSourceIExponent8Row137,
    tropicalOverlapSourceJExponent8Row137, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 137. -/
theorem tropicalOverlapRelation8_provenance_row137 :
    tropicalOverlapRelation8Row137 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row137 := by
  rw [tropicalOverlapRelation8_sourceCombination_row137]
  unfold tropicalOverlapSourceCombination8Row137
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row137,
    tropicalOverlapSourceJExponent8_replay_row137]

end

end MonochromaticQuantumGraphs.N8D3

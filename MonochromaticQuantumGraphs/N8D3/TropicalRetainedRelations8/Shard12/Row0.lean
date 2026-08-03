import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 60. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 60. -/
def tropicalOverlapProvenance8Row60 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 142, sourceJ := 178, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 60. -/
def tropicalOverlapRelation8Row60 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row60 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 142,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 142,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row60 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 115 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 90 127 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 60. -/
theorem tropicalOverlapSourceIExponent8_replay_row60 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row60.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row60.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row60 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 60. -/
theorem tropicalOverlapSourceJExponent8_replay_row60 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row60.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row60.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row60 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row60 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row60.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row60 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row60 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row60 :
    tropicalOverlapRelation8Row60 =
      tropicalOverlapSourceCombination8Row60 := by
  simp [tropicalOverlapRelation8Row60,
    tropicalOverlapSourceCombination8Row60,
    tropicalOverlapProvenance8Row60,
    tropicalOverlapSourceIExponent8Row60,
    tropicalOverlapSourceJExponent8Row60, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 60. -/
theorem tropicalOverlapRelation8_provenance_row60 :
    tropicalOverlapRelation8Row60 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row60 := by
  rw [tropicalOverlapRelation8_sourceCombination_row60]
  unfold tropicalOverlapSourceCombination8Row60
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row60,
    tropicalOverlapSourceJExponent8_replay_row60]

end

end MonochromaticQuantumGraphs.N8D3

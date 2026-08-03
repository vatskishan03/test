import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 33. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 33. -/
def tropicalOverlapProvenance8Row33 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 8, coordinateB := 142, sourceJ := 166, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 33. -/
def tropicalOverlapRelation8Row33 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row33 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 111 126 142,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 9 51 89 126 142,
  tropicalOverlapDegreeFiveExponent8 20 51 69 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row33 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 112 127 138,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 127 138,
  tropicalOverlapDegreeFiveExponent8 20 52 69 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 33. -/
theorem tropicalOverlapSourceIExponent8_replay_row33 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row33.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row33.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row33 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 33. -/
theorem tropicalOverlapSourceJExponent8_replay_row33 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row33.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row33.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row33 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row33 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row33.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row33 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row33 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row33 :
    tropicalOverlapRelation8Row33 =
      tropicalOverlapSourceCombination8Row33 := by
  simp [tropicalOverlapRelation8Row33,
    tropicalOverlapSourceCombination8Row33,
    tropicalOverlapProvenance8Row33,
    tropicalOverlapSourceIExponent8Row33,
    tropicalOverlapSourceJExponent8Row33, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 33. -/
theorem tropicalOverlapRelation8_provenance_row33 :
    tropicalOverlapRelation8Row33 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row33 := by
  rw [tropicalOverlapRelation8_sourceCombination_row33]
  unfold tropicalOverlapSourceCombination8Row33
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row33,
    tropicalOverlapSourceJExponent8_replay_row33]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 77. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 77. -/
def tropicalOverlapProvenance8Row77 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 22, coordinateB := 139, sourceJ := 121, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 77. -/
def tropicalOverlapRelation8Row77 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row77 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 129 139,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 70 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row77 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 70 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 77. -/
theorem tropicalOverlapSourceIExponent8_replay_row77 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row77.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row77.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row77 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 77. -/
theorem tropicalOverlapSourceJExponent8_replay_row77 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row77.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row77.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row77 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row77 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row77.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row77 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row77 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row77 :
    tropicalOverlapRelation8Row77 =
      tropicalOverlapSourceCombination8Row77 := by
  simp [tropicalOverlapRelation8Row77,
    tropicalOverlapSourceCombination8Row77,
    tropicalOverlapProvenance8Row77,
    tropicalOverlapSourceIExponent8Row77,
    tropicalOverlapSourceJExponent8Row77, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 77. -/
theorem tropicalOverlapRelation8_provenance_row77 :
    tropicalOverlapRelation8Row77 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row77 := by
  rw [tropicalOverlapRelation8_sourceCombination_row77]
  unfold tropicalOverlapSourceCombination8Row77
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row77,
    tropicalOverlapSourceJExponent8_replay_row77]

end

end MonochromaticQuantumGraphs.N8D3

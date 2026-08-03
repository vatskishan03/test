import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 98. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 98. -/
def tropicalOverlapProvenance8Row98 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 29, coordinateB := 141, sourceJ := 89, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 98. -/
def tropicalOverlapRelation8Row98 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row98 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 111 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 89 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 70 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row98 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 112 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 89 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 98. -/
theorem tropicalOverlapSourceIExponent8_replay_row98 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row98.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row98.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row98 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 98. -/
theorem tropicalOverlapSourceJExponent8_replay_row98 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row98.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row98.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row98 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row98 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row98.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row98 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row98 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row98 :
    tropicalOverlapRelation8Row98 =
      tropicalOverlapSourceCombination8Row98 := by
  simp [tropicalOverlapRelation8Row98,
    tropicalOverlapSourceCombination8Row98,
    tropicalOverlapProvenance8Row98,
    tropicalOverlapSourceIExponent8Row98,
    tropicalOverlapSourceJExponent8Row98, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 98. -/
theorem tropicalOverlapRelation8_provenance_row98 :
    tropicalOverlapRelation8Row98 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row98 := by
  rw [tropicalOverlapRelation8_sourceCombination_row98]
  unfold tropicalOverlapSourceCombination8Row98
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row98,
    tropicalOverlapSourceJExponent8_replay_row98]

end

end MonochromaticQuantumGraphs.N8D3

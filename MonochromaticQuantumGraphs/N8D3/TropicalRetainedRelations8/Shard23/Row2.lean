import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 117. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 117. -/
def tropicalOverlapProvenance8Row117 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 36, coordinateB := 142, sourceJ := 194, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 117. -/
def tropicalOverlapRelation8Row117 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row117 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 114 129 142,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 51 90 129 142,
  tropicalOverlapDegreeFiveExponent8 20 51 70 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row117 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 115 130 138,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 52 90 130 138,
  tropicalOverlapDegreeFiveExponent8 20 52 70 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 117. -/
theorem tropicalOverlapSourceIExponent8_replay_row117 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row117.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row117.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row117 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 117. -/
theorem tropicalOverlapSourceJExponent8_replay_row117 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row117.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row117.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row117 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row117 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row117.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row117 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row117 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row117 :
    tropicalOverlapRelation8Row117 =
      tropicalOverlapSourceCombination8Row117 := by
  simp [tropicalOverlapRelation8Row117,
    tropicalOverlapSourceCombination8Row117,
    tropicalOverlapProvenance8Row117,
    tropicalOverlapSourceIExponent8Row117,
    tropicalOverlapSourceJExponent8Row117, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 117. -/
theorem tropicalOverlapRelation8_provenance_row117 :
    tropicalOverlapRelation8Row117 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row117 := by
  rw [tropicalOverlapRelation8_sourceCombination_row117]
  unfold tropicalOverlapSourceCombination8Row117
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row117,
    tropicalOverlapSourceJExponent8_replay_row117]

end

end MonochromaticQuantumGraphs.N8D3

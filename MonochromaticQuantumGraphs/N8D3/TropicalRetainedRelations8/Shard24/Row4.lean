import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 124. -/
def tropicalOverlapProvenance8Row124 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 38, coordinateB := 142, sourceJ := 198, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 124. -/
def tropicalOverlapRelation8Row124 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row124 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 114 129 142,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 90 129 142,
  tropicalOverlapDegreeFiveExponent8 20 51 76 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row124 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 115 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 90 130 138,
  tropicalOverlapDegreeFiveExponent8 20 52 76 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 124. -/
theorem tropicalOverlapSourceIExponent8_replay_row124 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row124.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row124.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row124 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 124. -/
theorem tropicalOverlapSourceJExponent8_replay_row124 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row124.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row124.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row124 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row124 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row124.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row124 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row124 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row124 :
    tropicalOverlapRelation8Row124 =
      tropicalOverlapSourceCombination8Row124 := by
  simp [tropicalOverlapRelation8Row124,
    tropicalOverlapSourceCombination8Row124,
    tropicalOverlapProvenance8Row124,
    tropicalOverlapSourceIExponent8Row124,
    tropicalOverlapSourceJExponent8Row124, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 124. -/
theorem tropicalOverlapRelation8_provenance_row124 :
    tropicalOverlapRelation8Row124 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row124 := by
  rw [tropicalOverlapRelation8_sourceCombination_row124]
  unfold tropicalOverlapSourceCombination8Row124
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row124,
    tropicalOverlapSourceJExponent8_replay_row124]

end

end MonochromaticQuantumGraphs.N8D3

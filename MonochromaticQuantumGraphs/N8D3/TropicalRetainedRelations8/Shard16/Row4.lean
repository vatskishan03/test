import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 84. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 84. -/
def tropicalOverlapProvenance8Row84 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 24, coordinateB := 89, sourceJ := 28, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 84. -/
def tropicalOverlapRelation8Row84 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row84 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 89 102 138,
  tropicalOverlapDegreeFiveExponent8 1 58 89 111 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 89 129,
  tropicalOverlapDegreeFiveExponent8 19 51 70 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row84 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 102 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 111 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 89 129,
  tropicalOverlapDegreeFiveExponent8 20 51 70 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 84. -/
theorem tropicalOverlapSourceIExponent8_replay_row84 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row84.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row84.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row84 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 84. -/
theorem tropicalOverlapSourceJExponent8_replay_row84 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row84.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row84.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row84 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row84 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row84.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row84 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row84 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row84 :
    tropicalOverlapRelation8Row84 =
      tropicalOverlapSourceCombination8Row84 := by
  simp [tropicalOverlapRelation8Row84,
    tropicalOverlapSourceCombination8Row84,
    tropicalOverlapProvenance8Row84,
    tropicalOverlapSourceIExponent8Row84,
    tropicalOverlapSourceJExponent8Row84, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 84. -/
theorem tropicalOverlapRelation8_provenance_row84 :
    tropicalOverlapRelation8Row84 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row84 := by
  rw [tropicalOverlapRelation8_sourceCombination_row84]
  unfold tropicalOverlapSourceCombination8Row84
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row84,
    tropicalOverlapSourceJExponent8_replay_row84]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 121. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 121. -/
def tropicalOverlapProvenance8Row121 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 38, coordinateB := 7, sourceJ := 39, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 121. -/
def tropicalOverlapRelation8Row121 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row121 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 42 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 51 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row121 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 42 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 51 76 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 121. -/
theorem tropicalOverlapSourceIExponent8_replay_row121 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row121.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row121.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row121 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 121. -/
theorem tropicalOverlapSourceJExponent8_replay_row121 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row121.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row121.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row121 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row121 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row121.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row121 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row121 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row121 :
    tropicalOverlapRelation8Row121 =
      tropicalOverlapSourceCombination8Row121 := by
  simp [tropicalOverlapRelation8Row121,
    tropicalOverlapSourceCombination8Row121,
    tropicalOverlapProvenance8Row121,
    tropicalOverlapSourceIExponent8Row121,
    tropicalOverlapSourceJExponent8Row121, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 121. -/
theorem tropicalOverlapRelation8_provenance_row121 :
    tropicalOverlapRelation8Row121 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row121 := by
  rw [tropicalOverlapRelation8_sourceCombination_row121]
  unfold tropicalOverlapSourceCombination8Row121
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row121,
    tropicalOverlapSourceJExponent8_replay_row121]

end

end MonochromaticQuantumGraphs.N8D3

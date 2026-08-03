import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 4. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 4. -/
def tropicalOverlapProvenance8Row4 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 0, coordinateB := 87, sourceJ := 13, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 4. -/
def tropicalOverlapRelation8Row4 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row4 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 87 98 138,
  tropicalOverlapDegreeFiveExponent8 7 58 87 108 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 51 69 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row4 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 104 138,
  tropicalOverlapDegreeFiveExponent8 7 58 85 114 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 41 85 87 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 51 69 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 4. -/
theorem tropicalOverlapSourceIExponent8_replay_row4 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row4.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row4.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row4 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 4. -/
theorem tropicalOverlapSourceJExponent8_replay_row4 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row4.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row4.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row4 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row4 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row4.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row4 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row4 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row4 :
    tropicalOverlapRelation8Row4 =
      tropicalOverlapSourceCombination8Row4 := by
  simp [tropicalOverlapRelation8Row4,
    tropicalOverlapSourceCombination8Row4,
    tropicalOverlapProvenance8Row4,
    tropicalOverlapSourceIExponent8Row4,
    tropicalOverlapSourceJExponent8Row4, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 4. -/
theorem tropicalOverlapRelation8_provenance_row4 :
    tropicalOverlapRelation8Row4 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row4 := by
  rw [tropicalOverlapRelation8_sourceCombination_row4]
  unfold tropicalOverlapSourceCombination8Row4
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row4,
    tropicalOverlapSourceJExponent8_replay_row4]

end

end MonochromaticQuantumGraphs.N8D3

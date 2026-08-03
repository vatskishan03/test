import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 154. -/
def tropicalOverlapProvenance8Row154 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 52, coordinateB := 7, sourceJ := 53, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 154. -/
def tropicalOverlapRelation8Row154 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row154 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 43 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 87 132,
  tropicalOverlapDegreeFiveExponent8 7 19 51 71 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row154 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 43 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 87 132,
  tropicalOverlapDegreeFiveExponent8 1 25 51 71 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 154. -/
theorem tropicalOverlapSourceIExponent8_replay_row154 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row154.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row154.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row154 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 154. -/
theorem tropicalOverlapSourceJExponent8_replay_row154 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row154.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row154.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row154 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row154 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row154.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row154 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row154 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row154 :
    tropicalOverlapRelation8Row154 =
      tropicalOverlapSourceCombination8Row154 := by
  simp [tropicalOverlapRelation8Row154,
    tropicalOverlapSourceCombination8Row154,
    tropicalOverlapProvenance8Row154,
    tropicalOverlapSourceIExponent8Row154,
    tropicalOverlapSourceJExponent8Row154, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 154. -/
theorem tropicalOverlapRelation8_provenance_row154 :
    tropicalOverlapRelation8Row154 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row154 := by
  rw [tropicalOverlapRelation8_sourceCombination_row154]
  unfold tropicalOverlapSourceCombination8Row154
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row154,
    tropicalOverlapSourceJExponent8_replay_row154]

end

end MonochromaticQuantumGraphs.N8D3

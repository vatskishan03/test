import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 140. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 140. -/
def tropicalOverlapProvenance8Row140 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 44, coordinateB := 7, sourceJ := 45, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 140. -/
def tropicalOverlapRelation8Row140 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row140 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 43 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 86 132,
  tropicalOverlapDegreeFiveExponent8 7 19 51 71 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row140 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 43 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 86 132,
  tropicalOverlapDegreeFiveExponent8 1 25 51 71 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 140. -/
theorem tropicalOverlapSourceIExponent8_replay_row140 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row140.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row140.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row140 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 140. -/
theorem tropicalOverlapSourceJExponent8_replay_row140 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row140.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row140.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row140 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row140 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row140.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row140 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row140 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row140 :
    tropicalOverlapRelation8Row140 =
      tropicalOverlapSourceCombination8Row140 := by
  simp [tropicalOverlapRelation8Row140,
    tropicalOverlapSourceCombination8Row140,
    tropicalOverlapProvenance8Row140,
    tropicalOverlapSourceIExponent8Row140,
    tropicalOverlapSourceJExponent8Row140, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 140. -/
theorem tropicalOverlapRelation8_provenance_row140 :
    tropicalOverlapRelation8Row140 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row140 := by
  rw [tropicalOverlapRelation8_sourceCombination_row140]
  unfold tropicalOverlapSourceCombination8Row140
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row140,
    tropicalOverlapSourceJExponent8_replay_row140]

end

end MonochromaticQuantumGraphs.N8D3

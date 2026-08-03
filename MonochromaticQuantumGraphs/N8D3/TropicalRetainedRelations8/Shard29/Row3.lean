import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 148. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 148. -/
def tropicalOverlapProvenance8Row148 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 48, coordinateB := 7, sourceJ := 49, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 148. -/
def tropicalOverlapRelation8Row148 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row148 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 43 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 89 132,
  tropicalOverlapDegreeFiveExponent8 7 20 51 71 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row148 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 43 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 89 132,
  tropicalOverlapDegreeFiveExponent8 1 26 51 71 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 148. -/
theorem tropicalOverlapSourceIExponent8_replay_row148 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row148.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row148.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row148 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 148. -/
theorem tropicalOverlapSourceJExponent8_replay_row148 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row148.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row148.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row148 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row148 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row148.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row148 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row148 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row148 :
    tropicalOverlapRelation8Row148 =
      tropicalOverlapSourceCombination8Row148 := by
  simp [tropicalOverlapRelation8Row148,
    tropicalOverlapSourceCombination8Row148,
    tropicalOverlapProvenance8Row148,
    tropicalOverlapSourceIExponent8Row148,
    tropicalOverlapSourceJExponent8Row148, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 148. -/
theorem tropicalOverlapRelation8_provenance_row148 :
    tropicalOverlapRelation8Row148 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row148 := by
  rw [tropicalOverlapRelation8_sourceCombination_row148]
  unfold tropicalOverlapSourceCombination8Row148
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row148,
    tropicalOverlapSourceJExponent8_replay_row148]

end

end MonochromaticQuantumGraphs.N8D3

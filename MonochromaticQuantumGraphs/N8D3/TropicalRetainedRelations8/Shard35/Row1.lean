import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 176. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 176. -/
def tropicalOverlapProvenance8Row176 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 66, coordinateB := 7, sourceJ := 67, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 176. -/
def tropicalOverlapRelation8Row176 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row176 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 86 141,
  tropicalOverlapDegreeFiveExponent8 7 11 41 86 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 86 126,
  tropicalOverlapDegreeFiveExponent8 7 19 52 75 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row176 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 86 141,
  tropicalOverlapDegreeFiveExponent8 1 17 41 86 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 86 126,
  tropicalOverlapDegreeFiveExponent8 1 25 52 75 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 176. -/
theorem tropicalOverlapSourceIExponent8_replay_row176 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row176.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row176.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row176 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 176. -/
theorem tropicalOverlapSourceJExponent8_replay_row176 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row176.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row176.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row176 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row176 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row176.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row176 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row176 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row176 :
    tropicalOverlapRelation8Row176 =
      tropicalOverlapSourceCombination8Row176 := by
  simp [tropicalOverlapRelation8Row176,
    tropicalOverlapSourceCombination8Row176,
    tropicalOverlapProvenance8Row176,
    tropicalOverlapSourceIExponent8Row176,
    tropicalOverlapSourceJExponent8Row176, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 176. -/
theorem tropicalOverlapRelation8_provenance_row176 :
    tropicalOverlapRelation8Row176 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row176 := by
  rw [tropicalOverlapRelation8_sourceCombination_row176]
  unfold tropicalOverlapSourceCombination8Row176
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row176,
    tropicalOverlapSourceJExponent8_replay_row176]

end

end MonochromaticQuantumGraphs.N8D3

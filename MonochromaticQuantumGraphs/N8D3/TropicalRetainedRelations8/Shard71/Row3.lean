import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 358. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 358. -/
def tropicalOverlapProvenance8Row358 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 196, coordinateB := 1, sourceJ := 198, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 358. -/
def tropicalOverlapRelation8Row358 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row358 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 90 142,
  tropicalOverlapDegreeFiveExponent8 1 11 39 90 142,
  tropicalOverlapDegreeFiveExponent8 1 11 49 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 49 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row358 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 90 142,
  tropicalOverlapDegreeFiveExponent8 0 11 42 90 142,
  tropicalOverlapDegreeFiveExponent8 0 11 52 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 52 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 358. -/
theorem tropicalOverlapSourceIExponent8_replay_row358 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row358.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row358.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row358 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 358. -/
theorem tropicalOverlapSourceJExponent8_replay_row358 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row358.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row358.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row358 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row358 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row358.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row358 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row358 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row358 :
    tropicalOverlapRelation8Row358 =
      tropicalOverlapSourceCombination8Row358 := by
  simp [tropicalOverlapRelation8Row358,
    tropicalOverlapSourceCombination8Row358,
    tropicalOverlapProvenance8Row358,
    tropicalOverlapSourceIExponent8Row358,
    tropicalOverlapSourceJExponent8Row358, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 358. -/
theorem tropicalOverlapRelation8_provenance_row358 :
    tropicalOverlapRelation8Row358 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row358 := by
  rw [tropicalOverlapRelation8_sourceCombination_row358]
  unfold tropicalOverlapSourceCombination8Row358
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row358,
    tropicalOverlapSourceJExponent8_replay_row358]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 357. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 357. -/
def tropicalOverlapProvenance8Row357 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 196, coordinateB := 6, sourceJ := 197, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 357. -/
def tropicalOverlapRelation8Row357 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row357 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 39 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 49 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row357 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 39 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 49 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 357. -/
theorem tropicalOverlapSourceIExponent8_replay_row357 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row357.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row357.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row357 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 357. -/
theorem tropicalOverlapSourceJExponent8_replay_row357 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row357.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row357.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row357 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row357 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row357.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row357 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row357 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row357 :
    tropicalOverlapRelation8Row357 =
      tropicalOverlapSourceCombination8Row357 := by
  simp [tropicalOverlapRelation8Row357,
    tropicalOverlapSourceCombination8Row357,
    tropicalOverlapProvenance8Row357,
    tropicalOverlapSourceIExponent8Row357,
    tropicalOverlapSourceJExponent8Row357, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 357. -/
theorem tropicalOverlapRelation8_provenance_row357 :
    tropicalOverlapRelation8Row357 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row357 := by
  rw [tropicalOverlapRelation8_sourceCombination_row357]
  unfold tropicalOverlapSourceCombination8Row357
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row357,
    tropicalOverlapSourceJExponent8_replay_row357]

end

end MonochromaticQuantumGraphs.N8D3

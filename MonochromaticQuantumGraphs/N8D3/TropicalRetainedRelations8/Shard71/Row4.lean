import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 359. -/
def tropicalOverlapProvenance8Row359 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 196, coordinateB := 7, sourceJ := 199, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 359. -/
def tropicalOverlapRelation8Row359 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row359 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 90 142,
  tropicalOverlapDegreeFiveExponent8 7 11 39 90 142,
  tropicalOverlapDegreeFiveExponent8 7 11 49 90 130,
  tropicalOverlapDegreeFiveExponent8 7 20 49 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row359 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 42 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 52 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 52 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 359. -/
theorem tropicalOverlapSourceIExponent8_replay_row359 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row359.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row359.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row359 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 359. -/
theorem tropicalOverlapSourceJExponent8_replay_row359 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row359.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row359.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row359 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row359 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row359.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row359 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row359 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row359 :
    tropicalOverlapRelation8Row359 =
      tropicalOverlapSourceCombination8Row359 := by
  simp [tropicalOverlapRelation8Row359,
    tropicalOverlapSourceCombination8Row359,
    tropicalOverlapProvenance8Row359,
    tropicalOverlapSourceIExponent8Row359,
    tropicalOverlapSourceJExponent8Row359, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 359. -/
theorem tropicalOverlapRelation8_provenance_row359 :
    tropicalOverlapRelation8Row359 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row359 := by
  rw [tropicalOverlapRelation8_sourceCombination_row359]
  unfold tropicalOverlapSourceCombination8Row359
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row359,
    tropicalOverlapSourceJExponent8_replay_row359]

end

end MonochromaticQuantumGraphs.N8D3

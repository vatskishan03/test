import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 347. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 347. -/
def tropicalOverlapProvenance8Row347 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 184, coordinateB := 90, sourceJ := 192, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 347. -/
def tropicalOverlapRelation8Row347 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row347 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 90 102 142,
  tropicalOverlapDegreeFiveExponent8 0 59 90 112 130,
  tropicalOverlapDegreeFiveExponent8 0 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 49 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 49 70 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row347 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 89 105 142,
  tropicalOverlapDegreeFiveExponent8 0 59 89 115 130,
  tropicalOverlapDegreeFiveExponent8 0 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 49 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 49 70 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 347. -/
theorem tropicalOverlapSourceIExponent8_replay_row347 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row347.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row347.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row347 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 347. -/
theorem tropicalOverlapSourceJExponent8_replay_row347 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row347.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row347.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row347 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row347 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row347.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row347 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row347 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row347 :
    tropicalOverlapRelation8Row347 =
      tropicalOverlapSourceCombination8Row347 := by
  simp [tropicalOverlapRelation8Row347,
    tropicalOverlapSourceCombination8Row347,
    tropicalOverlapProvenance8Row347,
    tropicalOverlapSourceIExponent8Row347,
    tropicalOverlapSourceJExponent8Row347, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 347. -/
theorem tropicalOverlapRelation8_provenance_row347 :
    tropicalOverlapRelation8Row347 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row347 := by
  rw [tropicalOverlapRelation8_sourceCombination_row347]
  unfold tropicalOverlapSourceCombination8Row347
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row347,
    tropicalOverlapSourceJExponent8_replay_row347]

end

end MonochromaticQuantumGraphs.N8D3

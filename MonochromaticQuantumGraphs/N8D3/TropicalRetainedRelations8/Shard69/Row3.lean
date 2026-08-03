import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 348. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 348. -/
def tropicalOverlapProvenance8Row348 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 186, coordinateB := 90, sourceJ := 194, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 348. -/
def tropicalOverlapRelation8Row348 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row348 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 102 142,
  tropicalOverlapDegreeFiveExponent8 1 59 90 112 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 70 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row348 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 105 142,
  tropicalOverlapDegreeFiveExponent8 1 59 89 115 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 70 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 348. -/
theorem tropicalOverlapSourceIExponent8_replay_row348 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row348.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row348.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row348 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 348. -/
theorem tropicalOverlapSourceJExponent8_replay_row348 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row348.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row348.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row348 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row348 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row348.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row348 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row348 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row348 :
    tropicalOverlapRelation8Row348 =
      tropicalOverlapSourceCombination8Row348 := by
  simp [tropicalOverlapRelation8Row348,
    tropicalOverlapSourceCombination8Row348,
    tropicalOverlapProvenance8Row348,
    tropicalOverlapSourceIExponent8Row348,
    tropicalOverlapSourceJExponent8Row348, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 348. -/
theorem tropicalOverlapRelation8_provenance_row348 :
    tropicalOverlapRelation8Row348 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row348 := by
  rw [tropicalOverlapRelation8_sourceCombination_row348]
  unfold tropicalOverlapSourceCombination8Row348
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row348,
    tropicalOverlapSourceJExponent8_replay_row348]

end

end MonochromaticQuantumGraphs.N8D3

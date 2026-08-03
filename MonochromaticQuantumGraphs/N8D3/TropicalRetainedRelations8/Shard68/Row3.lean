import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 343. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 343. -/
def tropicalOverlapProvenance8Row343 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 183, coordinateB := 90, sourceJ := 199, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 343. -/
def tropicalOverlapRelation8Row343 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row343 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 99 142,
  tropicalOverlapDegreeFiveExponent8 7 65 90 109 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 76 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row343 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 105 142,
  tropicalOverlapDegreeFiveExponent8 7 65 88 115 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 76 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 343. -/
theorem tropicalOverlapSourceIExponent8_replay_row343 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row343.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row343.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row343 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 343. -/
theorem tropicalOverlapSourceJExponent8_replay_row343 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row343.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row343.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row343 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row343 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row343.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row343 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row343 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row343 :
    tropicalOverlapRelation8Row343 =
      tropicalOverlapSourceCombination8Row343 := by
  simp [tropicalOverlapRelation8Row343,
    tropicalOverlapSourceCombination8Row343,
    tropicalOverlapProvenance8Row343,
    tropicalOverlapSourceIExponent8Row343,
    tropicalOverlapSourceJExponent8Row343, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 343. -/
theorem tropicalOverlapRelation8_provenance_row343 :
    tropicalOverlapRelation8Row343 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row343 := by
  rw [tropicalOverlapRelation8_sourceCombination_row343]
  unfold tropicalOverlapSourceCombination8Row343
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row343,
    tropicalOverlapSourceJExponent8_replay_row343]

end

end MonochromaticQuantumGraphs.N8D3

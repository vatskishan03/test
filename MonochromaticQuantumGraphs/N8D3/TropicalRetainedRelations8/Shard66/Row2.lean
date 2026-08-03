import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 332. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 332. -/
def tropicalOverlapProvenance8Row332 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 176, coordinateB := 1, sourceJ := 178, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 332. -/
def tropicalOverlapRelation8Row332 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 75 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row332 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 90 142,
  tropicalOverlapDegreeFiveExponent8 1 11 38 90 142,
  tropicalOverlapDegreeFiveExponent8 1 11 49 90 127,
  tropicalOverlapDegreeFiveExponent8 1 20 49 75 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row332 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 90 142,
  tropicalOverlapDegreeFiveExponent8 0 11 41 90 142,
  tropicalOverlapDegreeFiveExponent8 0 11 52 90 127,
  tropicalOverlapDegreeFiveExponent8 0 20 52 75 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 332. -/
theorem tropicalOverlapSourceIExponent8_replay_row332 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row332.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row332.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row332 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 332. -/
theorem tropicalOverlapSourceJExponent8_replay_row332 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row332.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row332.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row332 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row332 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row332.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row332 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row332 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row332 :
    tropicalOverlapRelation8Row332 =
      tropicalOverlapSourceCombination8Row332 := by
  simp [tropicalOverlapRelation8Row332,
    tropicalOverlapSourceCombination8Row332,
    tropicalOverlapProvenance8Row332,
    tropicalOverlapSourceIExponent8Row332,
    tropicalOverlapSourceJExponent8Row332, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 332. -/
theorem tropicalOverlapRelation8_provenance_row332 :
    tropicalOverlapRelation8Row332 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row332 := by
  rw [tropicalOverlapRelation8_sourceCombination_row332]
  unfold tropicalOverlapSourceCombination8Row332
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row332,
    tropicalOverlapSourceJExponent8_replay_row332]

end

end MonochromaticQuantumGraphs.N8D3

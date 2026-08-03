import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 29. -/
def tropicalOverlapProvenance8Row29 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 7, coordinateB := 141, sourceJ := 67, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 29. -/
def tropicalOverlapRelation8Row29 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row29 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 86 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 75 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row29 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 86 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 75 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 29. -/
theorem tropicalOverlapSourceIExponent8_replay_row29 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row29.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row29.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row29 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 29. -/
theorem tropicalOverlapSourceJExponent8_replay_row29 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row29.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row29.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row29 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row29 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row29.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row29 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row29 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row29 :
    tropicalOverlapRelation8Row29 =
      tropicalOverlapSourceCombination8Row29 := by
  simp [tropicalOverlapRelation8Row29,
    tropicalOverlapSourceCombination8Row29,
    tropicalOverlapProvenance8Row29,
    tropicalOverlapSourceIExponent8Row29,
    tropicalOverlapSourceJExponent8Row29, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 29. -/
theorem tropicalOverlapRelation8_provenance_row29 :
    tropicalOverlapRelation8Row29 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row29 := by
  rw [tropicalOverlapRelation8_sourceCombination_row29]
  unfold tropicalOverlapSourceCombination8Row29
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row29,
    tropicalOverlapSourceJExponent8_replay_row29]

end

end MonochromaticQuantumGraphs.N8D3

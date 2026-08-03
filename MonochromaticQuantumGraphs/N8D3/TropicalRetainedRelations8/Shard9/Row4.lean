import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 49. -/
def tropicalOverlapProvenance8Row49 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 15, coordinateB := 141, sourceJ := 75, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 49. -/
def tropicalOverlapRelation8Row49 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row49 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 114 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 87 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row49 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 115 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 87 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 75 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 49. -/
theorem tropicalOverlapSourceIExponent8_replay_row49 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row49.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row49.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row49 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 49. -/
theorem tropicalOverlapSourceJExponent8_replay_row49 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row49.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row49.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row49 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row49 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row49.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row49 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row49 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row49 :
    tropicalOverlapRelation8Row49 =
      tropicalOverlapSourceCombination8Row49 := by
  simp [tropicalOverlapRelation8Row49,
    tropicalOverlapSourceCombination8Row49,
    tropicalOverlapProvenance8Row49,
    tropicalOverlapSourceIExponent8Row49,
    tropicalOverlapSourceJExponent8Row49, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 49. -/
theorem tropicalOverlapRelation8_provenance_row49 :
    tropicalOverlapRelation8Row49 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row49 := by
  rw [tropicalOverlapRelation8_sourceCombination_row49]
  unfold tropicalOverlapSourceCombination8Row49
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row49,
    tropicalOverlapSourceJExponent8_replay_row49]

end

end MonochromaticQuantumGraphs.N8D3

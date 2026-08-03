import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 62. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 62. -/
def tropicalOverlapProvenance8Row62 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 19, coordinateB := 139, sourceJ := 119, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 62. -/
def tropicalOverlapRelation8Row62 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row62 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 126 139,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 75 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row62 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 75 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 62. -/
theorem tropicalOverlapSourceIExponent8_replay_row62 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row62.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row62.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row62 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 62. -/
theorem tropicalOverlapSourceJExponent8_replay_row62 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row62.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row62.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row62 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row62 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row62.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row62 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row62 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row62 :
    tropicalOverlapRelation8Row62 =
      tropicalOverlapSourceCombination8Row62 := by
  simp [tropicalOverlapRelation8Row62,
    tropicalOverlapSourceCombination8Row62,
    tropicalOverlapProvenance8Row62,
    tropicalOverlapSourceIExponent8Row62,
    tropicalOverlapSourceJExponent8Row62, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 62. -/
theorem tropicalOverlapRelation8_provenance_row62 :
    tropicalOverlapRelation8Row62 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row62 := by
  rw [tropicalOverlapRelation8_sourceCombination_row62]
  unfold tropicalOverlapSourceCombination8Row62
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row62,
    tropicalOverlapSourceJExponent8_replay_row62]

end

end MonochromaticQuantumGraphs.N8D3

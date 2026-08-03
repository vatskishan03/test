import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 48. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 48. -/
def tropicalOverlapProvenance8Row48 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 14, coordinateB := 141, sourceJ := 74, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 48. -/
def tropicalOverlapRelation8Row48 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row48 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 87 126 141,
  tropicalOverlapDegreeFiveExponent8 19 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row48 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 87 126 138,
  tropicalOverlapDegreeFiveExponent8 19 52 75 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 48. -/
theorem tropicalOverlapSourceIExponent8_replay_row48 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row48.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row48.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row48 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 48. -/
theorem tropicalOverlapSourceJExponent8_replay_row48 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row48.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row48.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row48 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row48 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row48.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row48 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row48 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row48 :
    tropicalOverlapRelation8Row48 =
      tropicalOverlapSourceCombination8Row48 := by
  simp [tropicalOverlapRelation8Row48,
    tropicalOverlapSourceCombination8Row48,
    tropicalOverlapProvenance8Row48,
    tropicalOverlapSourceIExponent8Row48,
    tropicalOverlapSourceJExponent8Row48, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 48. -/
theorem tropicalOverlapRelation8_provenance_row48 :
    tropicalOverlapRelation8Row48 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row48 := by
  rw [tropicalOverlapRelation8_sourceCombination_row48]
  unfold tropicalOverlapSourceCombination8Row48
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row48,
    tropicalOverlapSourceJExponent8_replay_row48]

end

end MonochromaticQuantumGraphs.N8D3

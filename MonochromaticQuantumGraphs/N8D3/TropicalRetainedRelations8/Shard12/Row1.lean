import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 61. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 61. -/
def tropicalOverlapProvenance8Row61 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 19, coordinateB := 141, sourceJ := 79, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 61. -/
def tropicalOverlapRelation8Row61 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row61 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 114 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row61 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 115 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 61. -/
theorem tropicalOverlapSourceIExponent8_replay_row61 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row61.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row61.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row61 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 61. -/
theorem tropicalOverlapSourceJExponent8_replay_row61 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row61.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row61.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row61 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row61 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row61.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row61 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row61 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row61 :
    tropicalOverlapRelation8Row61 =
      tropicalOverlapSourceCombination8Row61 := by
  simp [tropicalOverlapRelation8Row61,
    tropicalOverlapSourceCombination8Row61,
    tropicalOverlapProvenance8Row61,
    tropicalOverlapSourceIExponent8Row61,
    tropicalOverlapSourceJExponent8Row61, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 61. -/
theorem tropicalOverlapRelation8_provenance_row61 :
    tropicalOverlapRelation8Row61 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row61 := by
  rw [tropicalOverlapRelation8_sourceCombination_row61]
  unfold tropicalOverlapSourceCombination8Row61
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row61,
    tropicalOverlapSourceJExponent8_replay_row61]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 41. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 41. -/
def tropicalOverlapProvenance8Row41 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 11, coordinateB := 141, sourceJ := 71, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 41. -/
def tropicalOverlapRelation8Row41 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row41 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 89 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 75 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row41 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 89 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 41. -/
theorem tropicalOverlapSourceIExponent8_replay_row41 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row41.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row41.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row41 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 41. -/
theorem tropicalOverlapSourceJExponent8_replay_row41 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row41.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row41.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row41 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row41 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row41.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row41 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row41 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row41 :
    tropicalOverlapRelation8Row41 =
      tropicalOverlapSourceCombination8Row41 := by
  simp [tropicalOverlapRelation8Row41,
    tropicalOverlapSourceCombination8Row41,
    tropicalOverlapProvenance8Row41,
    tropicalOverlapSourceIExponent8Row41,
    tropicalOverlapSourceJExponent8Row41, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 41. -/
theorem tropicalOverlapRelation8_provenance_row41 :
    tropicalOverlapRelation8Row41 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row41 := by
  rw [tropicalOverlapRelation8_sourceCombination_row41]
  unfold tropicalOverlapSourceCombination8Row41
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row41,
    tropicalOverlapSourceJExponent8_replay_row41]

end

end MonochromaticQuantumGraphs.N8D3

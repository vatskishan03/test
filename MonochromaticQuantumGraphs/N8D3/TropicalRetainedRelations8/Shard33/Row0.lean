import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 165. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 165. -/
def tropicalOverlapProvenance8Row165 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 60, coordinateB := 87, sourceJ := 73, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 165. -/
def tropicalOverlapRelation8Row165 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row165 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 87 98 141,
  tropicalOverlapDegreeFiveExponent8 7 58 87 109 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row165 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 104 141,
  tropicalOverlapDegreeFiveExponent8 7 58 85 115 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 165. -/
theorem tropicalOverlapSourceIExponent8_replay_row165 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row165.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row165.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row165 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 165. -/
theorem tropicalOverlapSourceJExponent8_replay_row165 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row165.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row165.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row165 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row165 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row165.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row165 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row165 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row165 :
    tropicalOverlapRelation8Row165 =
      tropicalOverlapSourceCombination8Row165 := by
  simp [tropicalOverlapRelation8Row165,
    tropicalOverlapSourceCombination8Row165,
    tropicalOverlapProvenance8Row165,
    tropicalOverlapSourceIExponent8Row165,
    tropicalOverlapSourceJExponent8Row165, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 165. -/
theorem tropicalOverlapRelation8_provenance_row165 :
    tropicalOverlapRelation8Row165 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row165 := by
  rw [tropicalOverlapRelation8_sourceCombination_row165]
  unfold tropicalOverlapSourceCombination8Row165
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row165,
    tropicalOverlapSourceJExponent8_replay_row165]

end

end MonochromaticQuantumGraphs.N8D3

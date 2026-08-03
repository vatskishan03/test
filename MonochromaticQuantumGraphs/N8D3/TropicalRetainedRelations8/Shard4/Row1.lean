import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 21. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 21. -/
def tropicalOverlapProvenance8Row21 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 4, coordinateB := 87, sourceJ := 12, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 21. -/
def tropicalOverlapRelation8Row21 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row21 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 101 138,
  tropicalOverlapDegreeFiveExponent8 1 58 87 111 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 69 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row21 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 58 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 69 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 21. -/
theorem tropicalOverlapSourceIExponent8_replay_row21 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row21.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row21.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row21 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 21. -/
theorem tropicalOverlapSourceJExponent8_replay_row21 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row21.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row21.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row21 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row21 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row21.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row21 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row21 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row21 :
    tropicalOverlapRelation8Row21 =
      tropicalOverlapSourceCombination8Row21 := by
  simp [tropicalOverlapRelation8Row21,
    tropicalOverlapSourceCombination8Row21,
    tropicalOverlapProvenance8Row21,
    tropicalOverlapSourceIExponent8Row21,
    tropicalOverlapSourceJExponent8Row21, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 21. -/
theorem tropicalOverlapRelation8_provenance_row21 :
    tropicalOverlapRelation8Row21 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row21 := by
  rw [tropicalOverlapRelation8_sourceCombination_row21]
  unfold tropicalOverlapSourceCombination8Row21
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row21,
    tropicalOverlapSourceJExponent8_replay_row21]

end

end MonochromaticQuantumGraphs.N8D3

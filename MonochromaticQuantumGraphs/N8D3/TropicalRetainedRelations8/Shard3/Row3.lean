import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 18. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 18. -/
def tropicalOverlapProvenance8Row18 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 4, coordinateB := 7, sourceJ := 5, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 18. -/
def tropicalOverlapRelation8Row18 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row18 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 41 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 86 126,
  tropicalOverlapDegreeFiveExponent8 7 19 51 69 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row18 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 41 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 86 126,
  tropicalOverlapDegreeFiveExponent8 1 25 51 69 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 18. -/
theorem tropicalOverlapSourceIExponent8_replay_row18 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row18.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row18.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row18 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 18. -/
theorem tropicalOverlapSourceJExponent8_replay_row18 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row18.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row18.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row18 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row18 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row18.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row18 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row18 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row18 :
    tropicalOverlapRelation8Row18 =
      tropicalOverlapSourceCombination8Row18 := by
  simp [tropicalOverlapRelation8Row18,
    tropicalOverlapSourceCombination8Row18,
    tropicalOverlapProvenance8Row18,
    tropicalOverlapSourceIExponent8Row18,
    tropicalOverlapSourceJExponent8Row18, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 18. -/
theorem tropicalOverlapRelation8_provenance_row18 :
    tropicalOverlapRelation8Row18 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row18 := by
  rw [tropicalOverlapRelation8_sourceCombination_row18]
  unfold tropicalOverlapSourceCombination8Row18
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row18,
    tropicalOverlapSourceJExponent8_replay_row18]

end

end MonochromaticQuantumGraphs.N8D3

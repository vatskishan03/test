import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 142. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 142. -/
def tropicalOverlapProvenance8Row142 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 44, coordinateB := 87, sourceJ := 52, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 142. -/
def tropicalOverlapRelation8Row142 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row142 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 103 138,
  tropicalOverlapDegreeFiveExponent8 1 58 87 111 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 71 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row142 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 106 138,
  tropicalOverlapDegreeFiveExponent8 1 58 86 114 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 71 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 142. -/
theorem tropicalOverlapSourceIExponent8_replay_row142 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row142.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row142.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row142 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 142. -/
theorem tropicalOverlapSourceJExponent8_replay_row142 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row142.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row142.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row142 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row142 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row142.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row142 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row142 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row142 :
    tropicalOverlapRelation8Row142 =
      tropicalOverlapSourceCombination8Row142 := by
  simp [tropicalOverlapRelation8Row142,
    tropicalOverlapSourceCombination8Row142,
    tropicalOverlapProvenance8Row142,
    tropicalOverlapSourceIExponent8Row142,
    tropicalOverlapSourceJExponent8Row142, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 142. -/
theorem tropicalOverlapRelation8_provenance_row142 :
    tropicalOverlapRelation8Row142 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row142 := by
  rw [tropicalOverlapRelation8_sourceCombination_row142]
  unfold tropicalOverlapSourceCombination8Row142
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row142,
    tropicalOverlapSourceJExponent8_replay_row142]

end

end MonochromaticQuantumGraphs.N8D3

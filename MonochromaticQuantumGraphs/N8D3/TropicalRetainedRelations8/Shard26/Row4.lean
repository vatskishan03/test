import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 134. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 134. -/
def tropicalOverlapProvenance8Row134 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 41, coordinateB := 86, sourceJ := 47, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 134. -/
def tropicalOverlapRelation8Row134 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row134 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 86 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row134 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 103 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 111 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 134. -/
theorem tropicalOverlapSourceIExponent8_replay_row134 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row134.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row134.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row134 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 134. -/
theorem tropicalOverlapSourceJExponent8_replay_row134 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row134.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row134.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row134 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row134 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row134.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row134 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row134 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row134 :
    tropicalOverlapRelation8Row134 =
      tropicalOverlapSourceCombination8Row134 := by
  simp [tropicalOverlapRelation8Row134,
    tropicalOverlapSourceCombination8Row134,
    tropicalOverlapProvenance8Row134,
    tropicalOverlapSourceIExponent8Row134,
    tropicalOverlapSourceJExponent8Row134, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 134. -/
theorem tropicalOverlapRelation8_provenance_row134 :
    tropicalOverlapRelation8Row134 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row134 := by
  rw [tropicalOverlapRelation8_sourceCombination_row134]
  unfold tropicalOverlapSourceCombination8Row134
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row134,
    tropicalOverlapSourceJExponent8_replay_row134]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 116. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 116. -/
def tropicalOverlapProvenance8Row116 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 36, coordinateB := 139, sourceJ := 134, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 116. -/
def tropicalOverlapRelation8Row116 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row116 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 114 129 139,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 90 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 70 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row116 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 114 130 138,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 90 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 70 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 116. -/
theorem tropicalOverlapSourceIExponent8_replay_row116 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row116.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row116.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row116 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 116. -/
theorem tropicalOverlapSourceJExponent8_replay_row116 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row116.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row116.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row116 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row116 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row116.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row116 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row116 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row116 :
    tropicalOverlapRelation8Row116 =
      tropicalOverlapSourceCombination8Row116 := by
  simp [tropicalOverlapRelation8Row116,
    tropicalOverlapSourceCombination8Row116,
    tropicalOverlapProvenance8Row116,
    tropicalOverlapSourceIExponent8Row116,
    tropicalOverlapSourceJExponent8Row116, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 116. -/
theorem tropicalOverlapRelation8_provenance_row116 :
    tropicalOverlapRelation8Row116 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row116 := by
  rw [tropicalOverlapRelation8_sourceCombination_row116]
  unfold tropicalOverlapSourceCombination8Row116
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row116,
    tropicalOverlapSourceJExponent8_replay_row116]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 13. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 13. -/
def tropicalOverlapProvenance8Row13 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 2, coordinateB := 139, sourceJ := 101, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 13. -/
def tropicalOverlapRelation8Row13 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row13 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 126 139,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 69 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row13 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 127 138,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 69 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 13. -/
theorem tropicalOverlapSourceIExponent8_replay_row13 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row13.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row13.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row13 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 13. -/
theorem tropicalOverlapSourceJExponent8_replay_row13 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row13.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row13.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row13 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row13 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row13.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row13 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row13 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row13 :
    tropicalOverlapRelation8Row13 =
      tropicalOverlapSourceCombination8Row13 := by
  simp [tropicalOverlapRelation8Row13,
    tropicalOverlapSourceCombination8Row13,
    tropicalOverlapProvenance8Row13,
    tropicalOverlapSourceIExponent8Row13,
    tropicalOverlapSourceJExponent8Row13, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 13. -/
theorem tropicalOverlapRelation8_provenance_row13 :
    tropicalOverlapRelation8Row13 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row13 := by
  rw [tropicalOverlapRelation8_sourceCombination_row13]
  unfold tropicalOverlapSourceCombination8Row13
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row13,
    tropicalOverlapSourceJExponent8_replay_row13]

end

end MonochromaticQuantumGraphs.N8D3

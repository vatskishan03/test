import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 161. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 161. -/
def tropicalOverlapProvenance8Row161 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 59, coordinateB := 139, sourceJ := 159, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 161. -/
def tropicalOverlapRelation8Row161 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row161 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 106 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 132 139,
  tropicalOverlapDegreeFiveExponent8 7 77 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 132 139,
  tropicalOverlapDegreeFiveExponent8 26 51 77 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row161 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 106 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 133 138,
  tropicalOverlapDegreeFiveExponent8 7 77 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 133 138,
  tropicalOverlapDegreeFiveExponent8 26 51 77 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 161. -/
theorem tropicalOverlapSourceIExponent8_replay_row161 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row161.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row161.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row161 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 161. -/
theorem tropicalOverlapSourceJExponent8_replay_row161 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row161.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row161.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row161 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row161 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row161.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row161 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row161 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row161 :
    tropicalOverlapRelation8Row161 =
      tropicalOverlapSourceCombination8Row161 := by
  simp [tropicalOverlapRelation8Row161,
    tropicalOverlapSourceCombination8Row161,
    tropicalOverlapProvenance8Row161,
    tropicalOverlapSourceIExponent8Row161,
    tropicalOverlapSourceJExponent8Row161, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 161. -/
theorem tropicalOverlapRelation8_provenance_row161 :
    tropicalOverlapRelation8Row161 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row161 := by
  rw [tropicalOverlapRelation8_sourceCombination_row161]
  unfold tropicalOverlapSourceCombination8Row161
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row161,
    tropicalOverlapSourceJExponent8_replay_row161]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 160. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 160. -/
def tropicalOverlapProvenance8Row160 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 58, coordinateB := 139, sourceJ := 158, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 160. -/
def tropicalOverlapRelation8Row160 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row160 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 106 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 132 139,
  tropicalOverlapDegreeFiveExponent8 1 77 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 77 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row160 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 106 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 133 138,
  tropicalOverlapDegreeFiveExponent8 1 77 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 77 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 160. -/
theorem tropicalOverlapSourceIExponent8_replay_row160 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row160.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row160.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row160 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 160. -/
theorem tropicalOverlapSourceJExponent8_replay_row160 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row160.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row160.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row160 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row160 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row160.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row160 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row160 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row160 :
    tropicalOverlapRelation8Row160 =
      tropicalOverlapSourceCombination8Row160 := by
  simp [tropicalOverlapRelation8Row160,
    tropicalOverlapSourceCombination8Row160,
    tropicalOverlapProvenance8Row160,
    tropicalOverlapSourceIExponent8Row160,
    tropicalOverlapSourceJExponent8Row160, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 160. -/
theorem tropicalOverlapRelation8_provenance_row160 :
    tropicalOverlapRelation8Row160 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row160 := by
  rw [tropicalOverlapRelation8_sourceCombination_row160]
  unfold tropicalOverlapSourceCombination8Row160
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row160,
    tropicalOverlapSourceJExponent8_replay_row160]

end

end MonochromaticQuantumGraphs.N8D3

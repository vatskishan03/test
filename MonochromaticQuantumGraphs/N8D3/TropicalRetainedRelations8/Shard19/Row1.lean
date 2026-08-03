import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 96. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 96. -/
def tropicalOverlapProvenance8Row96 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 28, coordinateB := 139, sourceJ := 126, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 96. -/
def tropicalOverlapRelation8Row96 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row96 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 129 139,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 70 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row96 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 130 138,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 70 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 96. -/
theorem tropicalOverlapSourceIExponent8_replay_row96 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row96.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row96.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row96 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 96. -/
theorem tropicalOverlapSourceJExponent8_replay_row96 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row96.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row96.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row96 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row96 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row96.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row96 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row96 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row96 :
    tropicalOverlapRelation8Row96 =
      tropicalOverlapSourceCombination8Row96 := by
  simp [tropicalOverlapRelation8Row96,
    tropicalOverlapSourceCombination8Row96,
    tropicalOverlapProvenance8Row96,
    tropicalOverlapSourceIExponent8Row96,
    tropicalOverlapSourceJExponent8Row96, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 96. -/
theorem tropicalOverlapRelation8_provenance_row96 :
    tropicalOverlapRelation8Row96 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row96 := by
  rw [tropicalOverlapRelation8_sourceCombination_row96]
  unfold tropicalOverlapSourceCombination8Row96
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row96,
    tropicalOverlapSourceJExponent8_replay_row96]

end

end MonochromaticQuantumGraphs.N8D3

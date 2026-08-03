import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 103. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 103. -/
def tropicalOverlapProvenance8Row103 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 30, coordinateB := 139, sourceJ := 130, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 103. -/
def tropicalOverlapRelation8Row103 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row103 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 129 139,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 76 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row103 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 76 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 103. -/
theorem tropicalOverlapSourceIExponent8_replay_row103 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row103.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row103.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row103 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 103. -/
theorem tropicalOverlapSourceJExponent8_replay_row103 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row103.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row103.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row103 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row103 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row103.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row103 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row103 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row103 :
    tropicalOverlapRelation8Row103 =
      tropicalOverlapSourceCombination8Row103 := by
  simp [tropicalOverlapRelation8Row103,
    tropicalOverlapSourceCombination8Row103,
    tropicalOverlapProvenance8Row103,
    tropicalOverlapSourceIExponent8Row103,
    tropicalOverlapSourceJExponent8Row103, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 103. -/
theorem tropicalOverlapRelation8_provenance_row103 :
    tropicalOverlapRelation8Row103 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row103 := by
  rw [tropicalOverlapRelation8_sourceCombination_row103]
  unfold tropicalOverlapSourceCombination8Row103
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row103,
    tropicalOverlapSourceJExponent8_replay_row103]

end

end MonochromaticQuantumGraphs.N8D3

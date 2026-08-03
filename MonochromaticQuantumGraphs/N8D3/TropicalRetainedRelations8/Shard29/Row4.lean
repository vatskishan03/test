import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 149. -/
def tropicalOverlapProvenance8Row149 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 48, coordinateB := 139, sourceJ := 146, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 149. -/
def tropicalOverlapRelation8Row149 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row149 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 132 139,
  tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 71 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row149 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 133 138,
  tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 71 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 149. -/
theorem tropicalOverlapSourceIExponent8_replay_row149 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row149.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row149.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row149 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 149. -/
theorem tropicalOverlapSourceJExponent8_replay_row149 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row149.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row149.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row149 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row149 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row149.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row149 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row149 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row149 :
    tropicalOverlapRelation8Row149 =
      tropicalOverlapSourceCombination8Row149 := by
  simp [tropicalOverlapRelation8Row149,
    tropicalOverlapSourceCombination8Row149,
    tropicalOverlapProvenance8Row149,
    tropicalOverlapSourceIExponent8Row149,
    tropicalOverlapSourceJExponent8Row149, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 149. -/
theorem tropicalOverlapRelation8_provenance_row149 :
    tropicalOverlapRelation8Row149 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row149 := by
  rw [tropicalOverlapRelation8_sourceCombination_row149]
  unfold tropicalOverlapSourceCombination8Row149
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row149,
    tropicalOverlapSourceJExponent8_replay_row149]

end

end MonochromaticQuantumGraphs.N8D3

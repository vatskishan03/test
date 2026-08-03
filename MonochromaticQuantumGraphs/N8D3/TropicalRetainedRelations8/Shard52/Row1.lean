import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 261. -/
def tropicalOverlapProvenance8Row261 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 124, coordinateB := 142, sourceJ := 184, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 261. -/
def tropicalOverlapRelation8Row261 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row261 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 111 130 142,
  tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 48 89 130 142,
  tropicalOverlapDegreeFiveExponent8 20 48 70 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row261 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 112 130 139,
  tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 49 89 130 139,
  tropicalOverlapDegreeFiveExponent8 20 49 70 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 261. -/
theorem tropicalOverlapSourceIExponent8_replay_row261 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row261.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row261.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row261 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 261. -/
theorem tropicalOverlapSourceJExponent8_replay_row261 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row261.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row261.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row261 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row261 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row261.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row261 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row261 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row261 :
    tropicalOverlapRelation8Row261 =
      tropicalOverlapSourceCombination8Row261 := by
  simp [tropicalOverlapRelation8Row261,
    tropicalOverlapSourceCombination8Row261,
    tropicalOverlapProvenance8Row261,
    tropicalOverlapSourceIExponent8Row261,
    tropicalOverlapSourceJExponent8Row261, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 261. -/
theorem tropicalOverlapRelation8_provenance_row261 :
    tropicalOverlapRelation8Row261 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row261 := by
  rw [tropicalOverlapRelation8_sourceCombination_row261]
  unfold tropicalOverlapSourceCombination8Row261
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row261,
    tropicalOverlapSourceJExponent8_replay_row261]

end

end MonochromaticQuantumGraphs.N8D3

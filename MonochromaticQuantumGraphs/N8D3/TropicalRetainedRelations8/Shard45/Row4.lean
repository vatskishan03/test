import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 229. -/
def tropicalOverlapProvenance8Row229 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 108, coordinateB := 6, sourceJ := 109, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 229. -/
def tropicalOverlapRelation8Row229 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 75 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row229 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 38 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 89 127,
  tropicalOverlapDegreeFiveExponent8 6 20 48 75 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row229 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 38 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 48 75 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 229. -/
theorem tropicalOverlapSourceIExponent8_replay_row229 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row229.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row229.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row229 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 229. -/
theorem tropicalOverlapSourceJExponent8_replay_row229 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row229.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row229.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row229 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row229 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row229.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row229 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row229 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row229 :
    tropicalOverlapRelation8Row229 =
      tropicalOverlapSourceCombination8Row229 := by
  simp [tropicalOverlapRelation8Row229,
    tropicalOverlapSourceCombination8Row229,
    tropicalOverlapProvenance8Row229,
    tropicalOverlapSourceIExponent8Row229,
    tropicalOverlapSourceJExponent8Row229, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 229. -/
theorem tropicalOverlapRelation8_provenance_row229 :
    tropicalOverlapRelation8Row229 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row229 := by
  rw [tropicalOverlapRelation8_sourceCombination_row229]
  unfold tropicalOverlapSourceCombination8Row229
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row229,
    tropicalOverlapSourceJExponent8_replay_row229]

end

end MonochromaticQuantumGraphs.N8D3

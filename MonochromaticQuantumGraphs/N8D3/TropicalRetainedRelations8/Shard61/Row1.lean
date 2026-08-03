import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 306. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 306. -/
def tropicalOverlapProvenance8Row306 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 156, coordinateB := 1, sourceJ := 158, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 306. -/
def tropicalOverlapRelation8Row306 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row306 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 1 77 90 139,
  tropicalOverlapDegreeFiveExponent8 1 11 40 90 139,
  tropicalOverlapDegreeFiveExponent8 1 11 48 90 133,
  tropicalOverlapDegreeFiveExponent8 1 20 48 77 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row306 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 1 77 90 139,
  tropicalOverlapDegreeFiveExponent8 0 11 43 90 139,
  tropicalOverlapDegreeFiveExponent8 0 11 51 90 133,
  tropicalOverlapDegreeFiveExponent8 0 20 51 77 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 306. -/
theorem tropicalOverlapSourceIExponent8_replay_row306 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row306.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row306.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row306 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 306. -/
theorem tropicalOverlapSourceJExponent8_replay_row306 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row306.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row306.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row306 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row306 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row306.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row306 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row306 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row306 :
    tropicalOverlapRelation8Row306 =
      tropicalOverlapSourceCombination8Row306 := by
  simp [tropicalOverlapRelation8Row306,
    tropicalOverlapSourceCombination8Row306,
    tropicalOverlapProvenance8Row306,
    tropicalOverlapSourceIExponent8Row306,
    tropicalOverlapSourceJExponent8Row306, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 306. -/
theorem tropicalOverlapRelation8_provenance_row306 :
    tropicalOverlapRelation8Row306 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row306 := by
  rw [tropicalOverlapRelation8_sourceCombination_row306]
  unfold tropicalOverlapSourceCombination8Row306
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row306,
    tropicalOverlapSourceJExponent8_replay_row306]

end

end MonochromaticQuantumGraphs.N8D3

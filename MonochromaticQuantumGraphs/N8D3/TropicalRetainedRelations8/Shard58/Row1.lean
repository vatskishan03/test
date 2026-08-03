import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 291. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 291. -/
def tropicalOverlapProvenance8Row291 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 143, coordinateB := 90, sourceJ := 159, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 291. -/
def tropicalOverlapRelation8Row291 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row291 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 100 139,
  tropicalOverlapDegreeFiveExponent8 7 65 90 108 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row291 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 106 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 114 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 291. -/
theorem tropicalOverlapSourceIExponent8_replay_row291 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row291.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row291.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row291 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 291. -/
theorem tropicalOverlapSourceJExponent8_replay_row291 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row291.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row291.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row291 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row291 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row291.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row291 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row291 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row291 :
    tropicalOverlapRelation8Row291 =
      tropicalOverlapSourceCombination8Row291 := by
  simp [tropicalOverlapRelation8Row291,
    tropicalOverlapSourceCombination8Row291,
    tropicalOverlapProvenance8Row291,
    tropicalOverlapSourceIExponent8Row291,
    tropicalOverlapSourceJExponent8Row291, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 291. -/
theorem tropicalOverlapRelation8_provenance_row291 :
    tropicalOverlapRelation8Row291 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row291 := by
  rw [tropicalOverlapRelation8_sourceCombination_row291]
  unfold tropicalOverlapSourceCombination8Row291
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row291,
    tropicalOverlapSourceJExponent8_replay_row291]

end

end MonochromaticQuantumGraphs.N8D3

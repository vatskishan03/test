import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 290. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 290. -/
def tropicalOverlapProvenance8Row290 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 143, coordinateB := 89, sourceJ := 151, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 290. -/
def tropicalOverlapRelation8Row290 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row290 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 89 100 139,
  tropicalOverlapDegreeFiveExponent8 7 65 89 108 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row290 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 103 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 111 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 290. -/
theorem tropicalOverlapSourceIExponent8_replay_row290 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row290.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row290.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row290 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 290. -/
theorem tropicalOverlapSourceJExponent8_replay_row290 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row290.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row290.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row290 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row290 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row290.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row290 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row290 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row290 :
    tropicalOverlapRelation8Row290 =
      tropicalOverlapSourceCombination8Row290 := by
  simp [tropicalOverlapRelation8Row290,
    tropicalOverlapSourceCombination8Row290,
    tropicalOverlapProvenance8Row290,
    tropicalOverlapSourceIExponent8Row290,
    tropicalOverlapSourceJExponent8Row290, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 290. -/
theorem tropicalOverlapRelation8_provenance_row290 :
    tropicalOverlapRelation8Row290 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row290 := by
  rw [tropicalOverlapRelation8_sourceCombination_row290]
  unfold tropicalOverlapSourceCombination8Row290
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row290,
    tropicalOverlapSourceJExponent8_replay_row290]

end

end MonochromaticQuantumGraphs.N8D3

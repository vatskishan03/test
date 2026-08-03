import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 287. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 287. -/
def tropicalOverlapProvenance8Row287 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 142, coordinateB := 7, sourceJ := 143, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 287. -/
def tropicalOverlapRelation8Row287 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 43 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 77 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 40 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 77 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row287 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 100 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 133,
  tropicalOverlapDegreeFiveExponent8 6 7 77 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 40 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 48 88 133,
  tropicalOverlapDegreeFiveExponent8 7 26 48 77 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row287 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 100 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 133,
  tropicalOverlapDegreeFiveExponent8 6 7 77 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 43 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 51 88 133,
  tropicalOverlapDegreeFiveExponent8 6 26 51 77 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 287. -/
theorem tropicalOverlapSourceIExponent8_replay_row287 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row287.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row287.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row287 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 287. -/
theorem tropicalOverlapSourceJExponent8_replay_row287 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row287.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row287.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row287 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row287 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row287.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row287 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row287 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row287 :
    tropicalOverlapRelation8Row287 =
      tropicalOverlapSourceCombination8Row287 := by
  simp [tropicalOverlapRelation8Row287,
    tropicalOverlapSourceCombination8Row287,
    tropicalOverlapProvenance8Row287,
    tropicalOverlapSourceIExponent8Row287,
    tropicalOverlapSourceJExponent8Row287, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 287. -/
theorem tropicalOverlapRelation8_provenance_row287 :
    tropicalOverlapRelation8Row287 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row287 := by
  rw [tropicalOverlapRelation8_sourceCombination_row287]
  unfold tropicalOverlapSourceCombination8Row287
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row287,
    tropicalOverlapSourceJExponent8_replay_row287]

end

end MonochromaticQuantumGraphs.N8D3

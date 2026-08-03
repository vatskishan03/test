import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 299. -/
def tropicalOverlapProvenance8Row299 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 148, coordinateB := 7, sourceJ := 151, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 299. -/
def tropicalOverlapRelation8Row299 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row299 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 40 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 89 133,
  tropicalOverlapDegreeFiveExponent8 7 20 48 77 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row299 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 43 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 51 77 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 299. -/
theorem tropicalOverlapSourceIExponent8_replay_row299 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row299.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row299.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row299 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 299. -/
theorem tropicalOverlapSourceJExponent8_replay_row299 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row299.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row299.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row299 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row299 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row299.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row299 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row299 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row299 :
    tropicalOverlapRelation8Row299 =
      tropicalOverlapSourceCombination8Row299 := by
  simp [tropicalOverlapRelation8Row299,
    tropicalOverlapSourceCombination8Row299,
    tropicalOverlapProvenance8Row299,
    tropicalOverlapSourceIExponent8Row299,
    tropicalOverlapSourceJExponent8Row299, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 299. -/
theorem tropicalOverlapRelation8_provenance_row299 :
    tropicalOverlapRelation8Row299 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row299 := by
  rw [tropicalOverlapRelation8_sourceCombination_row299]
  unfold tropicalOverlapSourceCombination8Row299
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row299,
    tropicalOverlapSourceJExponent8_replay_row299]

end

end MonochromaticQuantumGraphs.N8D3

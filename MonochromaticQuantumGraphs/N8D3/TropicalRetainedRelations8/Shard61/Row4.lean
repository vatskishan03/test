import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 309. -/
def tropicalOverlapProvenance8Row309 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 160, coordinateB := 89, sourceJ := 165, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 309. -/
def tropicalOverlapRelation8Row309 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row309 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 98 142,
  tropicalOverlapDegreeFiveExponent8 6 59 89 109 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row309 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 101 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 112 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 309. -/
theorem tropicalOverlapSourceIExponent8_replay_row309 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row309.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row309.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row309 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 309. -/
theorem tropicalOverlapSourceJExponent8_replay_row309 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row309.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row309.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row309 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row309 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row309.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row309 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row309 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row309 :
    tropicalOverlapRelation8Row309 =
      tropicalOverlapSourceCombination8Row309 := by
  simp [tropicalOverlapRelation8Row309,
    tropicalOverlapSourceCombination8Row309,
    tropicalOverlapProvenance8Row309,
    tropicalOverlapSourceIExponent8Row309,
    tropicalOverlapSourceJExponent8Row309, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 309. -/
theorem tropicalOverlapRelation8_provenance_row309 :
    tropicalOverlapRelation8Row309 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row309 := by
  rw [tropicalOverlapRelation8_sourceCombination_row309]
  unfold tropicalOverlapSourceCombination8Row309
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row309,
    tropicalOverlapSourceJExponent8_replay_row309]

end

end MonochromaticQuantumGraphs.N8D3

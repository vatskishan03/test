import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 285. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 285. -/
def tropicalOverlapProvenance8Row285 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 141, coordinateB := 89, sourceJ := 147, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 285. -/
def tropicalOverlapRelation8Row285 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row285 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 89 100 139,
  tropicalOverlapDegreeFiveExponent8 7 59 89 108 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row285 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 103 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 111 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 285. -/
theorem tropicalOverlapSourceIExponent8_replay_row285 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row285.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row285.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row285 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 285. -/
theorem tropicalOverlapSourceJExponent8_replay_row285 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row285.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row285.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row285 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row285 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row285.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row285 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row285 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row285 :
    tropicalOverlapRelation8Row285 =
      tropicalOverlapSourceCombination8Row285 := by
  simp [tropicalOverlapRelation8Row285,
    tropicalOverlapSourceCombination8Row285,
    tropicalOverlapProvenance8Row285,
    tropicalOverlapSourceIExponent8Row285,
    tropicalOverlapSourceJExponent8Row285, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 285. -/
theorem tropicalOverlapRelation8_provenance_row285 :
    tropicalOverlapRelation8Row285 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row285 := by
  rw [tropicalOverlapRelation8_sourceCombination_row285]
  unfold tropicalOverlapSourceCombination8Row285
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row285,
    tropicalOverlapSourceJExponent8_replay_row285]

end

end MonochromaticQuantumGraphs.N8D3

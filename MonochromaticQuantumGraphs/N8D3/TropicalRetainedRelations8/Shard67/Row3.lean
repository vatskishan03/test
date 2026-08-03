import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 338. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 338. -/
def tropicalOverlapProvenance8Row338 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 181, coordinateB := 90, sourceJ := 195, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 338. -/
def tropicalOverlapRelation8Row338 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row338 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 99 142,
  tropicalOverlapDegreeFiveExponent8 7 59 90 109 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row338 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 105 142,
  tropicalOverlapDegreeFiveExponent8 7 59 88 115 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 338. -/
theorem tropicalOverlapSourceIExponent8_replay_row338 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row338.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row338.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row338 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 338. -/
theorem tropicalOverlapSourceJExponent8_replay_row338 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row338.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row338.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row338 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row338 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row338.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row338 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row338 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row338 :
    tropicalOverlapRelation8Row338 =
      tropicalOverlapSourceCombination8Row338 := by
  simp [tropicalOverlapRelation8Row338,
    tropicalOverlapSourceCombination8Row338,
    tropicalOverlapProvenance8Row338,
    tropicalOverlapSourceIExponent8Row338,
    tropicalOverlapSourceJExponent8Row338, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 338. -/
theorem tropicalOverlapRelation8_provenance_row338 :
    tropicalOverlapRelation8Row338 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row338 := by
  rw [tropicalOverlapRelation8_sourceCombination_row338]
  unfold tropicalOverlapSourceCombination8Row338
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row338,
    tropicalOverlapSourceJExponent8_replay_row338]

end

end MonochromaticQuantumGraphs.N8D3

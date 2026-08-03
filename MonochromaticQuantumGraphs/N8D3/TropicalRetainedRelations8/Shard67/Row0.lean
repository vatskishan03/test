import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 335. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 335. -/
def tropicalOverlapProvenance8Row335 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 180, coordinateB := 89, sourceJ := 185, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 335. -/
def tropicalOverlapRelation8Row335 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row335 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 99 142,
  tropicalOverlapDegreeFiveExponent8 6 59 89 109 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row335 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 102 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 112 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 335. -/
theorem tropicalOverlapSourceIExponent8_replay_row335 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row335.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row335.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row335 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 335. -/
theorem tropicalOverlapSourceJExponent8_replay_row335 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row335.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row335.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row335 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row335 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row335.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row335 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row335 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row335 :
    tropicalOverlapRelation8Row335 =
      tropicalOverlapSourceCombination8Row335 := by
  simp [tropicalOverlapRelation8Row335,
    tropicalOverlapSourceCombination8Row335,
    tropicalOverlapProvenance8Row335,
    tropicalOverlapSourceIExponent8Row335,
    tropicalOverlapSourceJExponent8Row335, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 335. -/
theorem tropicalOverlapRelation8_provenance_row335 :
    tropicalOverlapRelation8Row335 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row335 := by
  rw [tropicalOverlapRelation8_sourceCombination_row335]
  unfold tropicalOverlapSourceCombination8Row335
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row335,
    tropicalOverlapSourceJExponent8_replay_row335]

end

end MonochromaticQuantumGraphs.N8D3

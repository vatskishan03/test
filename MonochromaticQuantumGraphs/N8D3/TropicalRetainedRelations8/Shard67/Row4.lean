import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 339. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 339. -/
def tropicalOverlapProvenance8Row339 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 182, coordinateB := 7, sourceJ := 183, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 339. -/
def tropicalOverlapRelation8Row339 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 76 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 76 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row339 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 99 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 130,
  tropicalOverlapDegreeFiveExponent8 6 7 76 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 39 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 49 88 130,
  tropicalOverlapDegreeFiveExponent8 7 26 49 76 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row339 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 99 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 130,
  tropicalOverlapDegreeFiveExponent8 6 7 76 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 42 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 52 88 130,
  tropicalOverlapDegreeFiveExponent8 6 26 52 76 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 339. -/
theorem tropicalOverlapSourceIExponent8_replay_row339 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row339.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row339.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row339 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 339. -/
theorem tropicalOverlapSourceJExponent8_replay_row339 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row339.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row339.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row339 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row339 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row339.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row339 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row339 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row339 :
    tropicalOverlapRelation8Row339 =
      tropicalOverlapSourceCombination8Row339 := by
  simp [tropicalOverlapRelation8Row339,
    tropicalOverlapSourceCombination8Row339,
    tropicalOverlapProvenance8Row339,
    tropicalOverlapSourceIExponent8Row339,
    tropicalOverlapSourceJExponent8Row339, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 339. -/
theorem tropicalOverlapRelation8_provenance_row339 :
    tropicalOverlapRelation8Row339 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row339 := by
  rw [tropicalOverlapRelation8_sourceCombination_row339]
  unfold tropicalOverlapSourceCombination8Row339
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row339,
    tropicalOverlapSourceJExponent8_replay_row339]

end

end MonochromaticQuantumGraphs.N8D3

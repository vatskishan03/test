import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 355. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 355. -/
def tropicalOverlapProvenance8Row355 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 192, coordinateB := 1, sourceJ := 194, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 355. -/
def tropicalOverlapRelation8Row355 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row355 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 39 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 49 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 49 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row355 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 42 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 52 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 52 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 355. -/
theorem tropicalOverlapSourceIExponent8_replay_row355 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row355.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row355.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row355 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 355. -/
theorem tropicalOverlapSourceJExponent8_replay_row355 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row355.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row355.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row355 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row355 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row355.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row355 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row355 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row355 :
    tropicalOverlapRelation8Row355 =
      tropicalOverlapSourceCombination8Row355 := by
  simp [tropicalOverlapRelation8Row355,
    tropicalOverlapSourceCombination8Row355,
    tropicalOverlapProvenance8Row355,
    tropicalOverlapSourceIExponent8Row355,
    tropicalOverlapSourceJExponent8Row355, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 355. -/
theorem tropicalOverlapRelation8_provenance_row355 :
    tropicalOverlapRelation8Row355 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row355 := by
  rw [tropicalOverlapRelation8_sourceCombination_row355]
  unfold tropicalOverlapSourceCombination8Row355
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row355,
    tropicalOverlapSourceJExponent8_replay_row355]

end

end MonochromaticQuantumGraphs.N8D3

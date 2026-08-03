import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 354. -/
def tropicalOverlapProvenance8Row354 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 192, coordinateB := 6, sourceJ := 193, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 354. -/
def tropicalOverlapRelation8Row354 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row354 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 142,
  tropicalOverlapDegreeFiveExponent8 6 9 39 90 142,
  tropicalOverlapDegreeFiveExponent8 6 9 49 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 49 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row354 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 39 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 49 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 49 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 354. -/
theorem tropicalOverlapSourceIExponent8_replay_row354 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row354.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row354.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row354 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 354. -/
theorem tropicalOverlapSourceJExponent8_replay_row354 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row354.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row354.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row354 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row354 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row354.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row354 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row354 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row354 :
    tropicalOverlapRelation8Row354 =
      tropicalOverlapSourceCombination8Row354 := by
  simp [tropicalOverlapRelation8Row354,
    tropicalOverlapSourceCombination8Row354,
    tropicalOverlapProvenance8Row354,
    tropicalOverlapSourceIExponent8Row354,
    tropicalOverlapSourceJExponent8Row354, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 354. -/
theorem tropicalOverlapRelation8_provenance_row354 :
    tropicalOverlapRelation8Row354 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row354 := by
  rw [tropicalOverlapRelation8_sourceCombination_row354]
  unfold tropicalOverlapSourceCombination8Row354
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row354,
    tropicalOverlapSourceJExponent8_replay_row354]

end

end MonochromaticQuantumGraphs.N8D3

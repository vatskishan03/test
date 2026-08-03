import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 132. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 132. -/
def tropicalOverlapProvenance8Row132 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 40, coordinateB := 90, sourceJ := 57, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 132. -/
def tropicalOverlapRelation8Row132 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row132 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 100 138,
  tropicalOverlapDegreeFiveExponent8 7 58 90 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row132 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 106 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 114 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 26 51 71 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 132. -/
theorem tropicalOverlapSourceIExponent8_replay_row132 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row132.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row132.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row132 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 132. -/
theorem tropicalOverlapSourceJExponent8_replay_row132 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row132.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row132.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row132 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row132 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row132.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row132 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row132 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row132 :
    tropicalOverlapRelation8Row132 =
      tropicalOverlapSourceCombination8Row132 := by
  simp [tropicalOverlapRelation8Row132,
    tropicalOverlapSourceCombination8Row132,
    tropicalOverlapProvenance8Row132,
    tropicalOverlapSourceIExponent8Row132,
    tropicalOverlapSourceJExponent8Row132, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 132. -/
theorem tropicalOverlapRelation8_provenance_row132 :
    tropicalOverlapRelation8Row132 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row132 := by
  rw [tropicalOverlapRelation8_sourceCombination_row132]
  unfold tropicalOverlapSourceCombination8Row132
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row132,
    tropicalOverlapSourceJExponent8_replay_row132]

end

end MonochromaticQuantumGraphs.N8D3

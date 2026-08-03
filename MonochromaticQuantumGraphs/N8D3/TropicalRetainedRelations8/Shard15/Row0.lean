import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 75. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 75. -/
def tropicalOverlapProvenance8Row75 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 21, coordinateB := 90, sourceJ := 39, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 75. -/
def tropicalOverlapRelation8Row75 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row75 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 99 138,
  tropicalOverlapDegreeFiveExponent8 7 64 90 108 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row75 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 105 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 114 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 51 76 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 75. -/
theorem tropicalOverlapSourceIExponent8_replay_row75 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row75.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row75.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row75 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 75. -/
theorem tropicalOverlapSourceJExponent8_replay_row75 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row75.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row75.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row75 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row75 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row75.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row75 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row75 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row75 :
    tropicalOverlapRelation8Row75 =
      tropicalOverlapSourceCombination8Row75 := by
  simp [tropicalOverlapRelation8Row75,
    tropicalOverlapSourceCombination8Row75,
    tropicalOverlapProvenance8Row75,
    tropicalOverlapSourceIExponent8Row75,
    tropicalOverlapSourceJExponent8Row75, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 75. -/
theorem tropicalOverlapRelation8_provenance_row75 :
    tropicalOverlapRelation8Row75 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row75 := by
  rw [tropicalOverlapRelation8_sourceCombination_row75]
  unfold tropicalOverlapSourceCombination8Row75
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row75,
    tropicalOverlapSourceJExponent8_replay_row75]

end

end MonochromaticQuantumGraphs.N8D3

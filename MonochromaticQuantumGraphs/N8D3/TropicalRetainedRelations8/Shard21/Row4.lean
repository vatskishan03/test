import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 109. -/
def tropicalOverlapProvenance8Row109 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 32, coordinateB := 141, sourceJ := 92, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 109. -/
def tropicalOverlapRelation8Row109 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row109 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 114 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 87 129 141,
  tropicalOverlapDegreeFiveExponent8 19 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row109 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 115 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 87 129 138,
  tropicalOverlapDegreeFiveExponent8 19 52 70 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 109. -/
theorem tropicalOverlapSourceIExponent8_replay_row109 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row109.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row109.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row109 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 109. -/
theorem tropicalOverlapSourceJExponent8_replay_row109 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row109.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row109.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row109 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row109 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row109.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row109 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row109 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row109 :
    tropicalOverlapRelation8Row109 =
      tropicalOverlapSourceCombination8Row109 := by
  simp [tropicalOverlapRelation8Row109,
    tropicalOverlapSourceCombination8Row109,
    tropicalOverlapProvenance8Row109,
    tropicalOverlapSourceIExponent8Row109,
    tropicalOverlapSourceJExponent8Row109, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 109. -/
theorem tropicalOverlapRelation8_provenance_row109 :
    tropicalOverlapRelation8Row109 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row109 := by
  rw [tropicalOverlapRelation8_sourceCombination_row109]
  unfold tropicalOverlapSourceCombination8Row109
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row109,
    tropicalOverlapSourceJExponent8_replay_row109]

end

end MonochromaticQuantumGraphs.N8D3

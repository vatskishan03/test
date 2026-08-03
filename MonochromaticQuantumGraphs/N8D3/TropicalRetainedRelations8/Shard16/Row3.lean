import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 83. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 83. -/
def tropicalOverlapProvenance8Row83 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 24, coordinateB := 141, sourceJ := 84, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 83. -/
def tropicalOverlapRelation8Row83 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row83 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 111 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 86 129 141,
  tropicalOverlapDegreeFiveExponent8 19 51 70 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row83 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 112 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 129 138,
  tropicalOverlapDegreeFiveExponent8 19 52 70 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 83. -/
theorem tropicalOverlapSourceIExponent8_replay_row83 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row83.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row83.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row83 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 83. -/
theorem tropicalOverlapSourceJExponent8_replay_row83 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row83.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row83.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row83 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row83 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row83.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row83 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row83 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row83 :
    tropicalOverlapRelation8Row83 =
      tropicalOverlapSourceCombination8Row83 := by
  simp [tropicalOverlapRelation8Row83,
    tropicalOverlapSourceCombination8Row83,
    tropicalOverlapProvenance8Row83,
    tropicalOverlapSourceIExponent8Row83,
    tropicalOverlapSourceJExponent8Row83, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 83. -/
theorem tropicalOverlapRelation8_provenance_row83 :
    tropicalOverlapRelation8Row83 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row83 := by
  rw [tropicalOverlapRelation8_sourceCombination_row83]
  unfold tropicalOverlapSourceCombination8Row83
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row83,
    tropicalOverlapSourceJExponent8_replay_row83]

end

end MonochromaticQuantumGraphs.N8D3

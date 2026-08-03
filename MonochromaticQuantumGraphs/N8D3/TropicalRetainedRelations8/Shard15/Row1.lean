import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 76. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 76. -/
def tropicalOverlapProvenance8Row76 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 22, coordinateB := 141, sourceJ := 82, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 76. -/
def tropicalOverlapRelation8Row76 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row76 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 108 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 88 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 70 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row76 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 109 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 88 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 116 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 76. -/
theorem tropicalOverlapSourceIExponent8_replay_row76 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row76.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row76.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row76 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 76. -/
theorem tropicalOverlapSourceJExponent8_replay_row76 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row76.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row76.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row76 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row76 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row76.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row76 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row76 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row76 :
    tropicalOverlapRelation8Row76 =
      tropicalOverlapSourceCombination8Row76 := by
  simp [tropicalOverlapRelation8Row76,
    tropicalOverlapSourceCombination8Row76,
    tropicalOverlapProvenance8Row76,
    tropicalOverlapSourceIExponent8Row76,
    tropicalOverlapSourceJExponent8Row76, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 76. -/
theorem tropicalOverlapRelation8_provenance_row76 :
    tropicalOverlapRelation8Row76 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row76 := by
  rw [tropicalOverlapRelation8_sourceCombination_row76]
  unfold tropicalOverlapSourceCombination8Row76
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row76,
    tropicalOverlapSourceJExponent8_replay_row76]

end

end MonochromaticQuantumGraphs.N8D3

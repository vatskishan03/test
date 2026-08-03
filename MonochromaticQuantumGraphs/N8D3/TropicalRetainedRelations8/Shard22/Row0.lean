import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 110. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 110. -/
def tropicalOverlapProvenance8Row110 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 33, coordinateB := 141, sourceJ := 93, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 110. -/
def tropicalOverlapRelation8Row110 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row110 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 87 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row110 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 87 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 70 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 110. -/
theorem tropicalOverlapSourceIExponent8_replay_row110 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row110.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row110.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row110 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 110. -/
theorem tropicalOverlapSourceJExponent8_replay_row110 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row110.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row110.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row110 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row110 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row110.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row110 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row110 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row110 :
    tropicalOverlapRelation8Row110 =
      tropicalOverlapSourceCombination8Row110 := by
  simp [tropicalOverlapRelation8Row110,
    tropicalOverlapSourceCombination8Row110,
    tropicalOverlapProvenance8Row110,
    tropicalOverlapSourceIExponent8Row110,
    tropicalOverlapSourceJExponent8Row110, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 110. -/
theorem tropicalOverlapRelation8_provenance_row110 :
    tropicalOverlapRelation8Row110 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row110 := by
  rw [tropicalOverlapRelation8_sourceCombination_row110]
  unfold tropicalOverlapSourceCombination8Row110
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row110,
    tropicalOverlapSourceJExponent8_replay_row110]

end

end MonochromaticQuantumGraphs.N8D3

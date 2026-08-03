import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 107. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 107. -/
def tropicalOverlapProvenance8Row107 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 31, coordinateB := 142, sourceJ := 191, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 107. -/
def tropicalOverlapRelation8Row107 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row107 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 111 129 142,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 51 89 129 142,
  tropicalOverlapDegreeFiveExponent8 26 51 76 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row107 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 112 130 138,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 52 89 130 138,
  tropicalOverlapDegreeFiveExponent8 26 52 76 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 107. -/
theorem tropicalOverlapSourceIExponent8_replay_row107 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row107.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row107.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row107 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 107. -/
theorem tropicalOverlapSourceJExponent8_replay_row107 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row107.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row107.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row107 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row107 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row107.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row107 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row107 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row107 :
    tropicalOverlapRelation8Row107 =
      tropicalOverlapSourceCombination8Row107 := by
  simp [tropicalOverlapRelation8Row107,
    tropicalOverlapSourceCombination8Row107,
    tropicalOverlapProvenance8Row107,
    tropicalOverlapSourceIExponent8Row107,
    tropicalOverlapSourceJExponent8Row107, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 107. -/
theorem tropicalOverlapRelation8_provenance_row107 :
    tropicalOverlapRelation8Row107 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row107 := by
  rw [tropicalOverlapRelation8_sourceCombination_row107]
  unfold tropicalOverlapSourceCombination8Row107
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row107,
    tropicalOverlapSourceJExponent8_replay_row107]

end

end MonochromaticQuantumGraphs.N8D3

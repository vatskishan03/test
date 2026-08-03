import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 129. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 129. -/
def tropicalOverlapProvenance8Row129 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 40, coordinateB := 86, sourceJ := 45, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 129. -/
def tropicalOverlapRelation8Row129 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row129 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 86 100 138,
  tropicalOverlapDegreeFiveExponent8 7 58 86 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 86 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row129 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 103 138,
  tropicalOverlapDegreeFiveExponent8 7 58 85 111 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 86 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 129. -/
theorem tropicalOverlapSourceIExponent8_replay_row129 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row129.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row129.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row129 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 129. -/
theorem tropicalOverlapSourceJExponent8_replay_row129 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row129.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row129.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row129 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row129 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row129.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row129 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row129 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row129 :
    tropicalOverlapRelation8Row129 =
      tropicalOverlapSourceCombination8Row129 := by
  simp [tropicalOverlapRelation8Row129,
    tropicalOverlapSourceCombination8Row129,
    tropicalOverlapProvenance8Row129,
    tropicalOverlapSourceIExponent8Row129,
    tropicalOverlapSourceJExponent8Row129, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 129. -/
theorem tropicalOverlapRelation8_provenance_row129 :
    tropicalOverlapRelation8Row129 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row129 := by
  rw [tropicalOverlapRelation8_sourceCombination_row129]
  unfold tropicalOverlapSourceCombination8Row129
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row129,
    tropicalOverlapSourceJExponent8_replay_row129]

end

end MonochromaticQuantumGraphs.N8D3

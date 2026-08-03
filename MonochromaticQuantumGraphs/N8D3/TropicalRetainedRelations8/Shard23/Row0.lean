import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 115. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 115. -/
def tropicalOverlapProvenance8Row115 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 36, coordinateB := 141, sourceJ := 96, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 115. -/
def tropicalOverlapRelation8Row115 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row115 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 114 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 90 129 141,
  tropicalOverlapDegreeFiveExponent8 20 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row115 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 115 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 90 129 138,
  tropicalOverlapDegreeFiveExponent8 20 52 70 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 115. -/
theorem tropicalOverlapSourceIExponent8_replay_row115 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row115.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row115.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row115 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 115. -/
theorem tropicalOverlapSourceJExponent8_replay_row115 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row115.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row115.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row115 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row115 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row115.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row115 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row115 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row115 :
    tropicalOverlapRelation8Row115 =
      tropicalOverlapSourceCombination8Row115 := by
  simp [tropicalOverlapRelation8Row115,
    tropicalOverlapSourceCombination8Row115,
    tropicalOverlapProvenance8Row115,
    tropicalOverlapSourceIExponent8Row115,
    tropicalOverlapSourceJExponent8Row115, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 115. -/
theorem tropicalOverlapRelation8_provenance_row115 :
    tropicalOverlapRelation8Row115 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row115 := by
  rw [tropicalOverlapRelation8_sourceCombination_row115]
  unfold tropicalOverlapSourceCombination8Row115
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row115,
    tropicalOverlapSourceJExponent8_replay_row115]

end

end MonochromaticQuantumGraphs.N8D3

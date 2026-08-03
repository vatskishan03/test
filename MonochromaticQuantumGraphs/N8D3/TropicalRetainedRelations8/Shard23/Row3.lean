import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 118. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 118. -/
def tropicalOverlapProvenance8Row118 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 37, coordinateB := 141, sourceJ := 97, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 118. -/
def tropicalOverlapRelation8Row118 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row118 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 90 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row118 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 90 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 118. -/
theorem tropicalOverlapSourceIExponent8_replay_row118 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row118.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row118.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row118 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 118. -/
theorem tropicalOverlapSourceJExponent8_replay_row118 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row118.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row118.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row118 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row118 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row118.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row118 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row118 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row118 :
    tropicalOverlapRelation8Row118 =
      tropicalOverlapSourceCombination8Row118 := by
  simp [tropicalOverlapRelation8Row118,
    tropicalOverlapSourceCombination8Row118,
    tropicalOverlapProvenance8Row118,
    tropicalOverlapSourceIExponent8Row118,
    tropicalOverlapSourceJExponent8Row118, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 118. -/
theorem tropicalOverlapRelation8_provenance_row118 :
    tropicalOverlapRelation8Row118 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row118 := by
  rw [tropicalOverlapRelation8_sourceCombination_row118]
  unfold tropicalOverlapSourceCombination8Row118
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row118,
    tropicalOverlapSourceJExponent8_replay_row118]

end

end MonochromaticQuantumGraphs.N8D3

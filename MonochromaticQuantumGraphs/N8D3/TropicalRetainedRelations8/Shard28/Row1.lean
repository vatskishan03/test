import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 141. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 141. -/
def tropicalOverlapProvenance8Row141 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 44, coordinateB := 89, sourceJ := 48, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 141. -/
def tropicalOverlapRelation8Row141 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row141 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 89 103 138,
  tropicalOverlapDegreeFiveExponent8 1 58 89 111 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 19 51 71 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row141 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 103 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 111 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 20 51 71 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 141. -/
theorem tropicalOverlapSourceIExponent8_replay_row141 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row141.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row141.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row141 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 141. -/
theorem tropicalOverlapSourceJExponent8_replay_row141 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row141.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row141.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row141 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row141 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row141.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row141 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row141 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row141 :
    tropicalOverlapRelation8Row141 =
      tropicalOverlapSourceCombination8Row141 := by
  simp [tropicalOverlapRelation8Row141,
    tropicalOverlapSourceCombination8Row141,
    tropicalOverlapProvenance8Row141,
    tropicalOverlapSourceIExponent8Row141,
    tropicalOverlapSourceJExponent8Row141, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 141. -/
theorem tropicalOverlapRelation8_provenance_row141 :
    tropicalOverlapRelation8Row141 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row141 := by
  rw [tropicalOverlapRelation8_sourceCombination_row141]
  unfold tropicalOverlapSourceCombination8Row141
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row141,
    tropicalOverlapSourceJExponent8_replay_row141]

end

end MonochromaticQuantumGraphs.N8D3

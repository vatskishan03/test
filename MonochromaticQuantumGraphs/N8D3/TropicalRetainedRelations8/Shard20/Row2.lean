import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 102. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 102. -/
def tropicalOverlapProvenance8Row102 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 30, coordinateB := 141, sourceJ := 90, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 102. -/
def tropicalOverlapRelation8Row102 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row102 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 111 129 141,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 89 129 141,
  tropicalOverlapDegreeFiveExponent8 20 51 76 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row102 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 112 129 138,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 89 129 138,
  tropicalOverlapDegreeFiveExponent8 20 52 76 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 102. -/
theorem tropicalOverlapSourceIExponent8_replay_row102 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row102.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row102.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row102 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 102. -/
theorem tropicalOverlapSourceJExponent8_replay_row102 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row102.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row102.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row102 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row102 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row102.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row102 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row102 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row102 :
    tropicalOverlapRelation8Row102 =
      tropicalOverlapSourceCombination8Row102 := by
  simp [tropicalOverlapRelation8Row102,
    tropicalOverlapSourceCombination8Row102,
    tropicalOverlapProvenance8Row102,
    tropicalOverlapSourceIExponent8Row102,
    tropicalOverlapSourceJExponent8Row102, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 102. -/
theorem tropicalOverlapRelation8_provenance_row102 :
    tropicalOverlapRelation8Row102 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row102 := by
  rw [tropicalOverlapRelation8_sourceCombination_row102]
  unfold tropicalOverlapSourceCombination8Row102
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row102,
    tropicalOverlapSourceJExponent8_replay_row102]

end

end MonochromaticQuantumGraphs.N8D3

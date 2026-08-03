import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 94. -/
def tropicalOverlapProvenance8Row94 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 28, coordinateB := 7, sourceJ := 29, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 94. -/
def tropicalOverlapRelation8Row94 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row94 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 42 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 51 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row94 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 42 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 51 70 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 94. -/
theorem tropicalOverlapSourceIExponent8_replay_row94 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row94.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row94.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row94 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 94. -/
theorem tropicalOverlapSourceJExponent8_replay_row94 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row94.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row94.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row94 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row94 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row94.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row94 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row94 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row94 :
    tropicalOverlapRelation8Row94 =
      tropicalOverlapSourceCombination8Row94 := by
  simp [tropicalOverlapRelation8Row94,
    tropicalOverlapSourceCombination8Row94,
    tropicalOverlapProvenance8Row94,
    tropicalOverlapSourceIExponent8Row94,
    tropicalOverlapSourceJExponent8Row94, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 94. -/
theorem tropicalOverlapRelation8_provenance_row94 :
    tropicalOverlapRelation8Row94 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row94 := by
  rw [tropicalOverlapRelation8_sourceCombination_row94]
  unfold tropicalOverlapSourceCombination8Row94
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row94,
    tropicalOverlapSourceJExponent8_replay_row94]

end

end MonochromaticQuantumGraphs.N8D3

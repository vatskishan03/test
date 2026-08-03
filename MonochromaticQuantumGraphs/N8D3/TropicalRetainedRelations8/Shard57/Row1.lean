import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 286. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 286. -/
def tropicalOverlapProvenance8Row286 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 141, coordinateB := 90, sourceJ := 155, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 286. -/
def tropicalOverlapRelation8Row286 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row286 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 100 139,
  tropicalOverlapDegreeFiveExponent8 7 59 90 108 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row286 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 106 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 114 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 286. -/
theorem tropicalOverlapSourceIExponent8_replay_row286 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row286.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row286.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row286 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 286. -/
theorem tropicalOverlapSourceJExponent8_replay_row286 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row286.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row286.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row286 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row286 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row286.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row286 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row286 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row286 :
    tropicalOverlapRelation8Row286 =
      tropicalOverlapSourceCombination8Row286 := by
  simp [tropicalOverlapRelation8Row286,
    tropicalOverlapSourceCombination8Row286,
    tropicalOverlapProvenance8Row286,
    tropicalOverlapSourceIExponent8Row286,
    tropicalOverlapSourceJExponent8Row286, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 286. -/
theorem tropicalOverlapRelation8_provenance_row286 :
    tropicalOverlapRelation8Row286 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row286 := by
  rw [tropicalOverlapRelation8_sourceCombination_row286]
  unfold tropicalOverlapSourceCombination8Row286
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row286,
    tropicalOverlapSourceJExponent8_replay_row286]

end

end MonochromaticQuantumGraphs.N8D3

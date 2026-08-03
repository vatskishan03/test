import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 295. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 295. -/
def tropicalOverlapProvenance8Row295 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 144, coordinateB := 90, sourceJ := 152, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 295. -/
def tropicalOverlapRelation8Row295 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row295 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 90 103 139,
  tropicalOverlapDegreeFiveExponent8 0 59 90 111 133,
  tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 48 71 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row295 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 89 106 139,
  tropicalOverlapDegreeFiveExponent8 0 59 89 114 133,
  tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 48 71 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 295. -/
theorem tropicalOverlapSourceIExponent8_replay_row295 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row295.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row295.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row295 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 295. -/
theorem tropicalOverlapSourceJExponent8_replay_row295 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row295.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row295.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row295 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row295 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row295.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row295 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row295 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row295 :
    tropicalOverlapRelation8Row295 =
      tropicalOverlapSourceCombination8Row295 := by
  simp [tropicalOverlapRelation8Row295,
    tropicalOverlapSourceCombination8Row295,
    tropicalOverlapProvenance8Row295,
    tropicalOverlapSourceIExponent8Row295,
    tropicalOverlapSourceJExponent8Row295, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 295. -/
theorem tropicalOverlapRelation8_provenance_row295 :
    tropicalOverlapRelation8Row295 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row295 := by
  rw [tropicalOverlapRelation8_sourceCombination_row295]
  unfold tropicalOverlapSourceCombination8Row295
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row295,
    tropicalOverlapSourceJExponent8_replay_row295]

end

end MonochromaticQuantumGraphs.N8D3

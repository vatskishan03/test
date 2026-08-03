import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 284. -/
def tropicalOverlapProvenance8Row284 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 140, coordinateB := 90, sourceJ := 153, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 284. -/
def tropicalOverlapRelation8Row284 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row284 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 100 139,
  tropicalOverlapDegreeFiveExponent8 6 59 90 108 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row284 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 106 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 114 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 284. -/
theorem tropicalOverlapSourceIExponent8_replay_row284 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row284.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row284.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row284 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 284. -/
theorem tropicalOverlapSourceJExponent8_replay_row284 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row284.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row284.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row284 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row284 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row284.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row284 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row284 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row284 :
    tropicalOverlapRelation8Row284 =
      tropicalOverlapSourceCombination8Row284 := by
  simp [tropicalOverlapRelation8Row284,
    tropicalOverlapSourceCombination8Row284,
    tropicalOverlapProvenance8Row284,
    tropicalOverlapSourceIExponent8Row284,
    tropicalOverlapSourceJExponent8Row284, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 284. -/
theorem tropicalOverlapRelation8_provenance_row284 :
    tropicalOverlapRelation8Row284 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row284 := by
  rw [tropicalOverlapRelation8_sourceCombination_row284]
  unfold tropicalOverlapSourceCombination8Row284
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row284,
    tropicalOverlapSourceJExponent8_replay_row284]

end

end MonochromaticQuantumGraphs.N8D3

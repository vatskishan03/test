import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 252. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 252. -/
def tropicalOverlapProvenance8Row252 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 122, coordinateB := 7, sourceJ := 123, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 252. -/
def tropicalOverlapRelation8Row252 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 76 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 76 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row252 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 99 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 130,
  tropicalOverlapDegreeFiveExponent8 6 7 76 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 39 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 48 88 130,
  tropicalOverlapDegreeFiveExponent8 7 26 48 76 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row252 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 99 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 130,
  tropicalOverlapDegreeFiveExponent8 6 7 76 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 42 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 51 88 130,
  tropicalOverlapDegreeFiveExponent8 6 26 51 76 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 252. -/
theorem tropicalOverlapSourceIExponent8_replay_row252 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row252.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row252.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row252 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 252. -/
theorem tropicalOverlapSourceJExponent8_replay_row252 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row252.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row252.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row252 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row252 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row252.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row252 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row252 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row252 :
    tropicalOverlapRelation8Row252 =
      tropicalOverlapSourceCombination8Row252 := by
  simp [tropicalOverlapRelation8Row252,
    tropicalOverlapSourceCombination8Row252,
    tropicalOverlapProvenance8Row252,
    tropicalOverlapSourceIExponent8Row252,
    tropicalOverlapSourceJExponent8Row252, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 252. -/
theorem tropicalOverlapRelation8_provenance_row252 :
    tropicalOverlapRelation8Row252 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row252 := by
  rw [tropicalOverlapRelation8_sourceCombination_row252]
  unfold tropicalOverlapSourceCombination8Row252
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row252,
    tropicalOverlapSourceJExponent8_replay_row252]

end

end MonochromaticQuantumGraphs.N8D3

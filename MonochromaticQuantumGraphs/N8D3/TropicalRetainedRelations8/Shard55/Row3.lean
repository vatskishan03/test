import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 278. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 278. -/
def tropicalOverlapProvenance8Row278 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 136, coordinateB := 1, sourceJ := 138, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 278. -/
def tropicalOverlapRelation8Row278 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row278 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 90 139,
  tropicalOverlapDegreeFiveExponent8 1 11 39 90 139,
  tropicalOverlapDegreeFiveExponent8 1 11 48 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row278 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 90 139,
  tropicalOverlapDegreeFiveExponent8 0 11 42 90 139,
  tropicalOverlapDegreeFiveExponent8 0 11 51 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 278. -/
theorem tropicalOverlapSourceIExponent8_replay_row278 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row278.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row278.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row278 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 278. -/
theorem tropicalOverlapSourceJExponent8_replay_row278 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row278.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row278.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row278 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row278 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row278.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row278 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row278 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row278 :
    tropicalOverlapRelation8Row278 =
      tropicalOverlapSourceCombination8Row278 := by
  simp [tropicalOverlapRelation8Row278,
    tropicalOverlapSourceCombination8Row278,
    tropicalOverlapProvenance8Row278,
    tropicalOverlapSourceIExponent8Row278,
    tropicalOverlapSourceJExponent8Row278, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 278. -/
theorem tropicalOverlapRelation8_provenance_row278 :
    tropicalOverlapRelation8Row278 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row278 := by
  rw [tropicalOverlapRelation8_sourceCombination_row278]
  unfold tropicalOverlapSourceCombination8Row278
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row278,
    tropicalOverlapSourceJExponent8_replay_row278]

end

end MonochromaticQuantumGraphs.N8D3

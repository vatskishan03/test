import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 272. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 272. -/
def tropicalOverlapProvenance8Row272 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 132, coordinateB := 6, sourceJ := 133, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 272. -/
def tropicalOverlapRelation8Row272 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row272 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 39 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row272 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 39 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 272. -/
theorem tropicalOverlapSourceIExponent8_replay_row272 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row272.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row272.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row272 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 272. -/
theorem tropicalOverlapSourceJExponent8_replay_row272 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row272.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row272.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row272 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row272 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row272.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row272 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row272 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row272 :
    tropicalOverlapRelation8Row272 =
      tropicalOverlapSourceCombination8Row272 := by
  simp [tropicalOverlapRelation8Row272,
    tropicalOverlapSourceCombination8Row272,
    tropicalOverlapProvenance8Row272,
    tropicalOverlapSourceIExponent8Row272,
    tropicalOverlapSourceJExponent8Row272, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 272. -/
theorem tropicalOverlapRelation8_provenance_row272 :
    tropicalOverlapRelation8Row272 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row272 := by
  rw [tropicalOverlapRelation8_sourceCombination_row272]
  unfold tropicalOverlapSourceCombination8Row272
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row272,
    tropicalOverlapSourceJExponent8_replay_row272]

end

end MonochromaticQuantumGraphs.N8D3

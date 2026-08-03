import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 351. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 351. -/
def tropicalOverlapProvenance8Row351 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 188, coordinateB := 7, sourceJ := 191, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 351. -/
def tropicalOverlapRelation8Row351 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row351 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 89 142,
  tropicalOverlapDegreeFiveExponent8 7 11 39 89 142,
  tropicalOverlapDegreeFiveExponent8 7 11 49 89 130,
  tropicalOverlapDegreeFiveExponent8 7 20 49 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row351 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 42 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 52 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 52 76 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 351. -/
theorem tropicalOverlapSourceIExponent8_replay_row351 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row351.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row351.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row351 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 351. -/
theorem tropicalOverlapSourceJExponent8_replay_row351 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row351.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row351.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row351 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row351 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row351.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row351 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row351 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row351 :
    tropicalOverlapRelation8Row351 =
      tropicalOverlapSourceCombination8Row351 := by
  simp [tropicalOverlapRelation8Row351,
    tropicalOverlapSourceCombination8Row351,
    tropicalOverlapProvenance8Row351,
    tropicalOverlapSourceIExponent8Row351,
    tropicalOverlapSourceJExponent8Row351, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 351. -/
theorem tropicalOverlapRelation8_provenance_row351 :
    tropicalOverlapRelation8Row351 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row351 := by
  rw [tropicalOverlapRelation8_sourceCombination_row351]
  unfold tropicalOverlapSourceCombination8Row351
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row351,
    tropicalOverlapSourceJExponent8_replay_row351]

end

end MonochromaticQuantumGraphs.N8D3

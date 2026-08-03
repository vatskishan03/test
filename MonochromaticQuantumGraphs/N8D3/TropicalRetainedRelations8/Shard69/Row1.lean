import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 346. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 346. -/
def tropicalOverlapProvenance8Row346 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 184, coordinateB := 7, sourceJ := 187, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 346. -/
def tropicalOverlapRelation8Row346 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row346 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 102 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 39 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 89 130,
  tropicalOverlapDegreeFiveExponent8 7 20 49 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row346 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 102 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 42 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 52 70 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 346. -/
theorem tropicalOverlapSourceIExponent8_replay_row346 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row346.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row346.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row346 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 346. -/
theorem tropicalOverlapSourceJExponent8_replay_row346 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row346.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row346.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row346 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row346 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row346.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row346 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row346 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row346 :
    tropicalOverlapRelation8Row346 =
      tropicalOverlapSourceCombination8Row346 := by
  simp [tropicalOverlapRelation8Row346,
    tropicalOverlapSourceCombination8Row346,
    tropicalOverlapProvenance8Row346,
    tropicalOverlapSourceIExponent8Row346,
    tropicalOverlapSourceJExponent8Row346, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 346. -/
theorem tropicalOverlapRelation8_provenance_row346 :
    tropicalOverlapRelation8Row346 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row346 := by
  rw [tropicalOverlapRelation8_sourceCombination_row346]
  unfold tropicalOverlapSourceCombination8Row346
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row346,
    tropicalOverlapSourceJExponent8_replay_row346]

end

end MonochromaticQuantumGraphs.N8D3

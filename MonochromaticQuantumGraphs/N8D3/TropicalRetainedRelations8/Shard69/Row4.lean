import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 349. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 349. -/
def tropicalOverlapProvenance8Row349 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 188, coordinateB := 6, sourceJ := 189, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 349. -/
def tropicalOverlapRelation8Row349 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row349 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 142,
  tropicalOverlapDegreeFiveExponent8 6 11 39 89 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 89 130,
  tropicalOverlapDegreeFiveExponent8 6 20 49 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row349 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 39 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 49 76 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 349. -/
theorem tropicalOverlapSourceIExponent8_replay_row349 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row349.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row349.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row349 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 349. -/
theorem tropicalOverlapSourceJExponent8_replay_row349 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row349.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row349.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row349 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row349 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row349.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row349 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row349 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row349 :
    tropicalOverlapRelation8Row349 =
      tropicalOverlapSourceCombination8Row349 := by
  simp [tropicalOverlapRelation8Row349,
    tropicalOverlapSourceCombination8Row349,
    tropicalOverlapProvenance8Row349,
    tropicalOverlapSourceIExponent8Row349,
    tropicalOverlapSourceJExponent8Row349, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 349. -/
theorem tropicalOverlapRelation8_provenance_row349 :
    tropicalOverlapRelation8Row349 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row349 := by
  rw [tropicalOverlapRelation8_sourceCombination_row349]
  unfold tropicalOverlapSourceCombination8Row349
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row349,
    tropicalOverlapSourceJExponent8_replay_row349]

end

end MonochromaticQuantumGraphs.N8D3

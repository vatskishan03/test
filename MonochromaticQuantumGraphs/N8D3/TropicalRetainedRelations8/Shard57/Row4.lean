import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 289. -/
def tropicalOverlapProvenance8Row289 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 142, coordinateB := 90, sourceJ := 157, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 289. -/
def tropicalOverlapRelation8Row289 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row289 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 100 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row289 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 106 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 289. -/
theorem tropicalOverlapSourceIExponent8_replay_row289 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row289.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row289.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row289 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 289. -/
theorem tropicalOverlapSourceJExponent8_replay_row289 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row289.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row289.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row289 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row289 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row289.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row289 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row289 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row289 :
    tropicalOverlapRelation8Row289 =
      tropicalOverlapSourceCombination8Row289 := by
  simp [tropicalOverlapRelation8Row289,
    tropicalOverlapSourceCombination8Row289,
    tropicalOverlapProvenance8Row289,
    tropicalOverlapSourceIExponent8Row289,
    tropicalOverlapSourceJExponent8Row289, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 289. -/
theorem tropicalOverlapRelation8_provenance_row289 :
    tropicalOverlapRelation8Row289 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row289 := by
  rw [tropicalOverlapRelation8_sourceCombination_row289]
  unfold tropicalOverlapSourceCombination8Row289
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row289,
    tropicalOverlapSourceJExponent8_replay_row289]

end

end MonochromaticQuantumGraphs.N8D3

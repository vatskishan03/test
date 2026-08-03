import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 249. -/
def tropicalOverlapProvenance8Row249 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 120, coordinateB := 90, sourceJ := 133, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 249. -/
def tropicalOverlapRelation8Row249 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row249 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 99 139,
  tropicalOverlapDegreeFiveExponent8 6 59 90 108 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row249 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 105 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 114 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 70 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 249. -/
theorem tropicalOverlapSourceIExponent8_replay_row249 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row249.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row249.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row249 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 249. -/
theorem tropicalOverlapSourceJExponent8_replay_row249 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row249.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row249.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row249 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row249 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row249.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row249 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row249 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row249 :
    tropicalOverlapRelation8Row249 =
      tropicalOverlapSourceCombination8Row249 := by
  simp [tropicalOverlapRelation8Row249,
    tropicalOverlapSourceCombination8Row249,
    tropicalOverlapProvenance8Row249,
    tropicalOverlapSourceIExponent8Row249,
    tropicalOverlapSourceJExponent8Row249, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 249. -/
theorem tropicalOverlapRelation8_provenance_row249 :
    tropicalOverlapRelation8Row249 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row249 := by
  rw [tropicalOverlapRelation8_sourceCombination_row249]
  unfold tropicalOverlapSourceCombination8Row249
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row249,
    tropicalOverlapSourceJExponent8_replay_row249]

end

end MonochromaticQuantumGraphs.N8D3

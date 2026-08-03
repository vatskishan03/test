import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 262. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 262. -/
def tropicalOverlapProvenance8Row262 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 90, sourceJ := 132, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 262. -/
def tropicalOverlapRelation8Row262 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row262 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 90 102 139,
  tropicalOverlapDegreeFiveExponent8 0 59 90 111 130,
  tropicalOverlapDegreeFiveExponent8 0 70 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 39 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 48 70 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row262 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 89 105 139,
  tropicalOverlapDegreeFiveExponent8 0 59 89 114 130,
  tropicalOverlapDegreeFiveExponent8 0 70 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 39 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 48 70 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 262. -/
theorem tropicalOverlapSourceIExponent8_replay_row262 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row262.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row262.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row262 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 262. -/
theorem tropicalOverlapSourceJExponent8_replay_row262 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row262.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row262.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row262 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row262 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row262.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row262 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row262 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row262 :
    tropicalOverlapRelation8Row262 =
      tropicalOverlapSourceCombination8Row262 := by
  simp [tropicalOverlapRelation8Row262,
    tropicalOverlapSourceCombination8Row262,
    tropicalOverlapProvenance8Row262,
    tropicalOverlapSourceIExponent8Row262,
    tropicalOverlapSourceJExponent8Row262, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 262. -/
theorem tropicalOverlapRelation8_provenance_row262 :
    tropicalOverlapRelation8Row262 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row262 := by
  rw [tropicalOverlapRelation8_sourceCombination_row262]
  unfold tropicalOverlapSourceCombination8Row262
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row262,
    tropicalOverlapSourceJExponent8_replay_row262]

end

end MonochromaticQuantumGraphs.N8D3

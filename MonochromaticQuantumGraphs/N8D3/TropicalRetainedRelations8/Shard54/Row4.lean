import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 274. -/
def tropicalOverlapProvenance8Row274 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 132, coordinateB := 7, sourceJ := 135, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 274. -/
def tropicalOverlapRelation8Row274 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row274 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 39 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 48 90 130,
  tropicalOverlapDegreeFiveExponent8 7 20 48 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row274 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 42 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 51 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 51 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 274. -/
theorem tropicalOverlapSourceIExponent8_replay_row274 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row274.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row274.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row274 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 274. -/
theorem tropicalOverlapSourceJExponent8_replay_row274 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row274.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row274.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row274 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row274 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row274.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row274 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row274 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row274 :
    tropicalOverlapRelation8Row274 =
      tropicalOverlapSourceCombination8Row274 := by
  simp [tropicalOverlapRelation8Row274,
    tropicalOverlapSourceCombination8Row274,
    tropicalOverlapProvenance8Row274,
    tropicalOverlapSourceIExponent8Row274,
    tropicalOverlapSourceJExponent8Row274, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 274. -/
theorem tropicalOverlapRelation8_provenance_row274 :
    tropicalOverlapRelation8Row274 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row274 := by
  rw [tropicalOverlapRelation8_sourceCombination_row274]
  unfold tropicalOverlapSourceCombination8Row274
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row274,
    tropicalOverlapSourceJExponent8_replay_row274]

end

end MonochromaticQuantumGraphs.N8D3

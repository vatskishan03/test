import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 257. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 257. -/
def tropicalOverlapProvenance8Row257 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 123, coordinateB := 90, sourceJ := 139, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 257. -/
def tropicalOverlapRelation8Row257 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row257 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 99 139,
  tropicalOverlapDegreeFiveExponent8 7 65 90 108 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 51 76 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row257 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 105 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 114 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 51 76 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 257. -/
theorem tropicalOverlapSourceIExponent8_replay_row257 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row257.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row257.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row257 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 257. -/
theorem tropicalOverlapSourceJExponent8_replay_row257 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row257.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row257.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row257 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row257 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row257.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row257 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row257 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row257 :
    tropicalOverlapRelation8Row257 =
      tropicalOverlapSourceCombination8Row257 := by
  simp [tropicalOverlapRelation8Row257,
    tropicalOverlapSourceCombination8Row257,
    tropicalOverlapProvenance8Row257,
    tropicalOverlapSourceIExponent8Row257,
    tropicalOverlapSourceJExponent8Row257, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 257. -/
theorem tropicalOverlapRelation8_provenance_row257 :
    tropicalOverlapRelation8Row257 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row257 := by
  rw [tropicalOverlapRelation8_sourceCombination_row257]
  unfold tropicalOverlapSourceCombination8Row257
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row257,
    tropicalOverlapSourceJExponent8_replay_row257]

end

end MonochromaticQuantumGraphs.N8D3

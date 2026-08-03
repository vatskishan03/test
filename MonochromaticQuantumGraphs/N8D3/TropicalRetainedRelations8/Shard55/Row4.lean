import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 279. -/
def tropicalOverlapProvenance8Row279 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 136, coordinateB := 7, sourceJ := 139, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 279. -/
def tropicalOverlapRelation8Row279 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row279 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 39 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 90 130,
  tropicalOverlapDegreeFiveExponent8 7 20 48 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row279 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 42 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 51 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 279. -/
theorem tropicalOverlapSourceIExponent8_replay_row279 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row279.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row279.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row279 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 279. -/
theorem tropicalOverlapSourceJExponent8_replay_row279 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row279.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row279.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row279 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row279 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row279.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row279 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row279 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row279 :
    tropicalOverlapRelation8Row279 =
      tropicalOverlapSourceCombination8Row279 := by
  simp [tropicalOverlapRelation8Row279,
    tropicalOverlapSourceCombination8Row279,
    tropicalOverlapProvenance8Row279,
    tropicalOverlapSourceIExponent8Row279,
    tropicalOverlapSourceJExponent8Row279, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 279. -/
theorem tropicalOverlapRelation8_provenance_row279 :
    tropicalOverlapRelation8Row279 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row279 := by
  rw [tropicalOverlapRelation8_sourceCombination_row279]
  unfold tropicalOverlapSourceCombination8Row279
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row279,
    tropicalOverlapSourceJExponent8_replay_row279]

end

end MonochromaticQuantumGraphs.N8D3

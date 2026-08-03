import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 277. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 277. -/
def tropicalOverlapProvenance8Row277 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 136, coordinateB := 6, sourceJ := 137, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 277. -/
def tropicalOverlapRelation8Row277 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row277 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 139,
  tropicalOverlapDegreeFiveExponent8 6 11 39 90 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row277 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 114 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 39 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 76 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 277. -/
theorem tropicalOverlapSourceIExponent8_replay_row277 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row277.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row277.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row277 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 277. -/
theorem tropicalOverlapSourceJExponent8_replay_row277 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row277.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row277.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row277 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row277 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row277.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row277 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row277 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row277 :
    tropicalOverlapRelation8Row277 =
      tropicalOverlapSourceCombination8Row277 := by
  simp [tropicalOverlapRelation8Row277,
    tropicalOverlapSourceCombination8Row277,
    tropicalOverlapProvenance8Row277,
    tropicalOverlapSourceIExponent8Row277,
    tropicalOverlapSourceJExponent8Row277, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 277. -/
theorem tropicalOverlapRelation8_provenance_row277 :
    tropicalOverlapRelation8Row277 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row277 := by
  rw [tropicalOverlapRelation8_sourceCombination_row277]
  unfold tropicalOverlapSourceCombination8Row277
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row277,
    tropicalOverlapSourceJExponent8_replay_row277]

end

end MonochromaticQuantumGraphs.N8D3

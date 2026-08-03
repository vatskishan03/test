import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 273. -/
def tropicalOverlapProvenance8Row273 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 132, coordinateB := 1, sourceJ := 134, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 273. -/
def tropicalOverlapRelation8Row273 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row273 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 39 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row273 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 42 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 273. -/
theorem tropicalOverlapSourceIExponent8_replay_row273 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row273.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row273.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row273 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 273. -/
theorem tropicalOverlapSourceJExponent8_replay_row273 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row273.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row273.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row273 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row273 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row273.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row273 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row273 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row273 :
    tropicalOverlapRelation8Row273 =
      tropicalOverlapSourceCombination8Row273 := by
  simp [tropicalOverlapRelation8Row273,
    tropicalOverlapSourceCombination8Row273,
    tropicalOverlapProvenance8Row273,
    tropicalOverlapSourceIExponent8Row273,
    tropicalOverlapSourceJExponent8Row273, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 273. -/
theorem tropicalOverlapRelation8_provenance_row273 :
    tropicalOverlapRelation8Row273 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row273 := by
  rw [tropicalOverlapRelation8_sourceCombination_row273]
  unfold tropicalOverlapSourceCombination8Row273
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row273,
    tropicalOverlapSourceJExponent8_replay_row273]

end

end MonochromaticQuantumGraphs.N8D3

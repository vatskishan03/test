import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 336. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 336. -/
def tropicalOverlapProvenance8Row336 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 180, coordinateB := 90, sourceJ := 193, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 336. -/
def tropicalOverlapRelation8Row336 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row336 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 99 142,
  tropicalOverlapDegreeFiveExponent8 6 59 90 109 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row336 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 105 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 115 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 336. -/
theorem tropicalOverlapSourceIExponent8_replay_row336 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row336.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row336.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row336 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 336. -/
theorem tropicalOverlapSourceJExponent8_replay_row336 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row336.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row336.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row336 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row336 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row336.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row336 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row336 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row336 :
    tropicalOverlapRelation8Row336 =
      tropicalOverlapSourceCombination8Row336 := by
  simp [tropicalOverlapRelation8Row336,
    tropicalOverlapSourceCombination8Row336,
    tropicalOverlapProvenance8Row336,
    tropicalOverlapSourceIExponent8Row336,
    tropicalOverlapSourceJExponent8Row336, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 336. -/
theorem tropicalOverlapRelation8_provenance_row336 :
    tropicalOverlapRelation8Row336 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row336 := by
  rw [tropicalOverlapRelation8_sourceCombination_row336]
  unfold tropicalOverlapSourceCombination8Row336
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row336,
    tropicalOverlapSourceJExponent8_replay_row336]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 356. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 356. -/
def tropicalOverlapProvenance8Row356 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 192, coordinateB := 7, sourceJ := 195, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 356. -/
def tropicalOverlapRelation8Row356 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row356 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 39 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 90 130,
  tropicalOverlapDegreeFiveExponent8 7 20 49 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row356 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 42 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 52 70 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 356. -/
theorem tropicalOverlapSourceIExponent8_replay_row356 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row356.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row356.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row356 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 356. -/
theorem tropicalOverlapSourceJExponent8_replay_row356 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row356.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row356.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row356 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row356 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row356.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row356 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row356 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row356 :
    tropicalOverlapRelation8Row356 =
      tropicalOverlapSourceCombination8Row356 := by
  simp [tropicalOverlapRelation8Row356,
    tropicalOverlapSourceCombination8Row356,
    tropicalOverlapProvenance8Row356,
    tropicalOverlapSourceIExponent8Row356,
    tropicalOverlapSourceJExponent8Row356, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 356. -/
theorem tropicalOverlapRelation8_provenance_row356 :
    tropicalOverlapRelation8Row356 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row356 := by
  rw [tropicalOverlapRelation8_sourceCombination_row356]
  unfold tropicalOverlapSourceCombination8Row356
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row356,
    tropicalOverlapSourceJExponent8_replay_row356]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 66. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 66. -/
def tropicalOverlapProvenance8Row66 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 20, coordinateB := 86, sourceJ := 25, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 66. -/
def tropicalOverlapRelation8Row66 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row66 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 86 99 138,
  tropicalOverlapDegreeFiveExponent8 7 58 86 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row66 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 102 138,
  tropicalOverlapDegreeFiveExponent8 7 58 85 111 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 86 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 66. -/
theorem tropicalOverlapSourceIExponent8_replay_row66 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row66.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row66.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row66 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 66. -/
theorem tropicalOverlapSourceJExponent8_replay_row66 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row66.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row66.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row66 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row66 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row66.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row66 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row66 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row66 :
    tropicalOverlapRelation8Row66 =
      tropicalOverlapSourceCombination8Row66 := by
  simp [tropicalOverlapRelation8Row66,
    tropicalOverlapSourceCombination8Row66,
    tropicalOverlapProvenance8Row66,
    tropicalOverlapSourceIExponent8Row66,
    tropicalOverlapSourceJExponent8Row66, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 66. -/
theorem tropicalOverlapRelation8_provenance_row66 :
    tropicalOverlapRelation8Row66 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row66 := by
  rw [tropicalOverlapRelation8_sourceCombination_row66]
  unfold tropicalOverlapSourceCombination8Row66
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row66,
    tropicalOverlapSourceJExponent8_replay_row66]

end

end MonochromaticQuantumGraphs.N8D3

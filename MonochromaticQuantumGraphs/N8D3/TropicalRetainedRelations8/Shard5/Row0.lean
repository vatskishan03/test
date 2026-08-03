import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 25. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 25. -/
def tropicalOverlapProvenance8Row25 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 6, coordinateB := 141, sourceJ := 66, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 25. -/
def tropicalOverlapRelation8Row25 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row25 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 111 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 86 126 141,
  tropicalOverlapDegreeFiveExponent8 19 51 75 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row25 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 112 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 126 138,
  tropicalOverlapDegreeFiveExponent8 19 52 75 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 25. -/
theorem tropicalOverlapSourceIExponent8_replay_row25 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row25.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row25.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row25 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 25. -/
theorem tropicalOverlapSourceJExponent8_replay_row25 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row25.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row25.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row25 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row25 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row25.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row25 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row25 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row25 :
    tropicalOverlapRelation8Row25 =
      tropicalOverlapSourceCombination8Row25 := by
  simp [tropicalOverlapRelation8Row25,
    tropicalOverlapSourceCombination8Row25,
    tropicalOverlapProvenance8Row25,
    tropicalOverlapSourceIExponent8Row25,
    tropicalOverlapSourceJExponent8Row25, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 25. -/
theorem tropicalOverlapRelation8_provenance_row25 :
    tropicalOverlapRelation8Row25 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row25 := by
  rw [tropicalOverlapRelation8_sourceCombination_row25]
  unfold tropicalOverlapSourceCombination8Row25
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row25,
    tropicalOverlapSourceJExponent8_replay_row25]

end

end MonochromaticQuantumGraphs.N8D3

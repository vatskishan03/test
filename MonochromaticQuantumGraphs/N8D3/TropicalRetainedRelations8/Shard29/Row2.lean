import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 147. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 147. -/
def tropicalOverlapProvenance8Row147 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 46, coordinateB := 90, sourceJ := 58, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 147. -/
def tropicalOverlapRelation8Row147 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row147 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 90 103 138,
  tropicalOverlapDegreeFiveExponent8 1 64 90 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row147 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 106 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 114 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 132,
  tropicalOverlapDegreeFiveExponent8 20 51 77 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 147. -/
theorem tropicalOverlapSourceIExponent8_replay_row147 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row147.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row147.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row147 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 147. -/
theorem tropicalOverlapSourceJExponent8_replay_row147 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row147.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row147.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row147 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row147 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row147.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row147 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row147 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row147 :
    tropicalOverlapRelation8Row147 =
      tropicalOverlapSourceCombination8Row147 := by
  simp [tropicalOverlapRelation8Row147,
    tropicalOverlapSourceCombination8Row147,
    tropicalOverlapProvenance8Row147,
    tropicalOverlapSourceIExponent8Row147,
    tropicalOverlapSourceJExponent8Row147, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 147. -/
theorem tropicalOverlapRelation8_provenance_row147 :
    tropicalOverlapRelation8Row147 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row147 := by
  rw [tropicalOverlapRelation8_sourceCombination_row147]
  unfold tropicalOverlapSourceCombination8Row147
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row147,
    tropicalOverlapSourceJExponent8_replay_row147]

end

end MonochromaticQuantumGraphs.N8D3

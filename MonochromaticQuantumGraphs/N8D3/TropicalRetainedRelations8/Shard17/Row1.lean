import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 86. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 86. -/
def tropicalOverlapProvenance8Row86 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 24, coordinateB := 90, sourceJ := 36, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 86. -/
def tropicalOverlapRelation8Row86 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row86 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 102 138,
  tropicalOverlapDegreeFiveExponent8 1 58 90 111 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 19 51 70 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row86 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 105 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 114 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 20 51 70 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 86. -/
theorem tropicalOverlapSourceIExponent8_replay_row86 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row86.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row86.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row86 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 86. -/
theorem tropicalOverlapSourceJExponent8_replay_row86 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row86.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row86.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row86 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row86 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row86.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row86 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row86 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row86 :
    tropicalOverlapRelation8Row86 =
      tropicalOverlapSourceCombination8Row86 := by
  simp [tropicalOverlapRelation8Row86,
    tropicalOverlapSourceCombination8Row86,
    tropicalOverlapProvenance8Row86,
    tropicalOverlapSourceIExponent8Row86,
    tropicalOverlapSourceJExponent8Row86, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 86. -/
theorem tropicalOverlapRelation8_provenance_row86 :
    tropicalOverlapRelation8Row86 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row86 := by
  rw [tropicalOverlapRelation8_sourceCombination_row86]
  unfold tropicalOverlapSourceCombination8Row86
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row86,
    tropicalOverlapSourceJExponent8_replay_row86]

end

end MonochromaticQuantumGraphs.N8D3

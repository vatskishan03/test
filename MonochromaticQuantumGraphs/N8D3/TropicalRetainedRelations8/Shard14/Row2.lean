import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 72. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 72. -/
def tropicalOverlapProvenance8Row72 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 21, coordinateB := 86, sourceJ := 27, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 72. -/
def tropicalOverlapRelation8Row72 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row72 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 99 138,
  tropicalOverlapDegreeFiveExponent8 7 64 86 108 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row72 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 102 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 111 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 72. -/
theorem tropicalOverlapSourceIExponent8_replay_row72 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row72.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row72.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row72 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 72. -/
theorem tropicalOverlapSourceJExponent8_replay_row72 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row72.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row72.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row72 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row72 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row72.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row72 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row72 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row72 :
    tropicalOverlapRelation8Row72 =
      tropicalOverlapSourceCombination8Row72 := by
  simp [tropicalOverlapRelation8Row72,
    tropicalOverlapSourceCombination8Row72,
    tropicalOverlapProvenance8Row72,
    tropicalOverlapSourceIExponent8Row72,
    tropicalOverlapSourceJExponent8Row72, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 72. -/
theorem tropicalOverlapRelation8_provenance_row72 :
    tropicalOverlapRelation8Row72 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row72 := by
  rw [tropicalOverlapRelation8_sourceCombination_row72]
  unfold tropicalOverlapSourceCombination8Row72
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row72,
    tropicalOverlapSourceJExponent8_replay_row72]

end

end MonochromaticQuantumGraphs.N8D3

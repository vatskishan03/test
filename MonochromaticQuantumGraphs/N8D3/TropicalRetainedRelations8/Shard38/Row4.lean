import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 194. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 194. -/
def tropicalOverlapProvenance8Row194 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 81, coordinateB := 87, sourceJ := 95, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 194. -/
def tropicalOverlapRelation8Row194 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row194 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 87 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 87 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row194 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 105 141,
  tropicalOverlapDegreeFiveExponent8 7 64 85 115 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 194. -/
theorem tropicalOverlapSourceIExponent8_replay_row194 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row194.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row194.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row194 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 194. -/
theorem tropicalOverlapSourceJExponent8_replay_row194 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row194.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row194.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row194 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row194 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row194.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row194 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row194 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row194 :
    tropicalOverlapRelation8Row194 =
      tropicalOverlapSourceCombination8Row194 := by
  simp [tropicalOverlapRelation8Row194,
    tropicalOverlapSourceCombination8Row194,
    tropicalOverlapProvenance8Row194,
    tropicalOverlapSourceIExponent8Row194,
    tropicalOverlapSourceJExponent8Row194, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 194. -/
theorem tropicalOverlapRelation8_provenance_row194 :
    tropicalOverlapRelation8Row194 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row194 := by
  rw [tropicalOverlapRelation8_sourceCombination_row194]
  unfold tropicalOverlapSourceCombination8Row194
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row194,
    tropicalOverlapSourceJExponent8_replay_row194]

end

end MonochromaticQuantumGraphs.N8D3

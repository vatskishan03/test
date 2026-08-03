import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 157. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 157. -/
def tropicalOverlapProvenance8Row157 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 56, coordinateB := 139, sourceJ := 154, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 157. -/
def tropicalOverlapRelation8Row157 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row157 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 106 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 114 132 139,
  tropicalOverlapDegreeFiveExponent8 1 71 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 90 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 71 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row157 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 106 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 114 133 138,
  tropicalOverlapDegreeFiveExponent8 1 71 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 90 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 90 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 71 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 157. -/
theorem tropicalOverlapSourceIExponent8_replay_row157 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row157.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row157.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row157 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 157. -/
theorem tropicalOverlapSourceJExponent8_replay_row157 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row157.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row157.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row157 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row157 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row157.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row157 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row157 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row157 :
    tropicalOverlapRelation8Row157 =
      tropicalOverlapSourceCombination8Row157 := by
  simp [tropicalOverlapRelation8Row157,
    tropicalOverlapSourceCombination8Row157,
    tropicalOverlapProvenance8Row157,
    tropicalOverlapSourceIExponent8Row157,
    tropicalOverlapSourceJExponent8Row157, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 157. -/
theorem tropicalOverlapRelation8_provenance_row157 :
    tropicalOverlapRelation8Row157 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row157 := by
  rw [tropicalOverlapRelation8_sourceCombination_row157]
  unfold tropicalOverlapSourceCombination8Row157
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row157,
    tropicalOverlapSourceJExponent8_replay_row157]

end

end MonochromaticQuantumGraphs.N8D3

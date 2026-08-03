import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 139. -/
def tropicalOverlapProvenance8Row139 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 43, coordinateB := 139, sourceJ := 143, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 139. -/
def tropicalOverlapRelation8Row139 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row139 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 132 139,
  tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 132 139,
  tropicalOverlapDegreeFiveExponent8 26 51 77 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row139 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 133 138,
  tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 133 138,
  tropicalOverlapDegreeFiveExponent8 26 51 77 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 139. -/
theorem tropicalOverlapSourceIExponent8_replay_row139 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row139.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row139.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row139 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 139. -/
theorem tropicalOverlapSourceJExponent8_replay_row139 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row139.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row139.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row139 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row139 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row139.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row139 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row139 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row139 :
    tropicalOverlapRelation8Row139 =
      tropicalOverlapSourceCombination8Row139 := by
  simp [tropicalOverlapRelation8Row139,
    tropicalOverlapSourceCombination8Row139,
    tropicalOverlapProvenance8Row139,
    tropicalOverlapSourceIExponent8Row139,
    tropicalOverlapSourceJExponent8Row139, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 139. -/
theorem tropicalOverlapRelation8_provenance_row139 :
    tropicalOverlapRelation8Row139 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row139 := by
  rw [tropicalOverlapRelation8_sourceCombination_row139]
  unfold tropicalOverlapSourceCombination8Row139
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row139,
    tropicalOverlapSourceJExponent8_replay_row139]

end

end MonochromaticQuantumGraphs.N8D3

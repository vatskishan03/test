import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 276. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 276. -/
def tropicalOverlapProvenance8Row276 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 133, coordinateB := 142, sourceJ := 193, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 276. -/
def tropicalOverlapRelation8Row276 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row276 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 114 130 142,
  tropicalOverlapDegreeFiveExponent8 6 70 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 90 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 70 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row276 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 115 130 139,
  tropicalOverlapDegreeFiveExponent8 6 70 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 90 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 70 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 276. -/
theorem tropicalOverlapSourceIExponent8_replay_row276 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row276.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row276.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row276 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 276. -/
theorem tropicalOverlapSourceJExponent8_replay_row276 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row276.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row276.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row276 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row276 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row276.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row276 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row276 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row276 :
    tropicalOverlapRelation8Row276 =
      tropicalOverlapSourceCombination8Row276 := by
  simp [tropicalOverlapRelation8Row276,
    tropicalOverlapSourceCombination8Row276,
    tropicalOverlapProvenance8Row276,
    tropicalOverlapSourceIExponent8Row276,
    tropicalOverlapSourceJExponent8Row276, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 276. -/
theorem tropicalOverlapRelation8_provenance_row276 :
    tropicalOverlapRelation8Row276 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row276 := by
  rw [tropicalOverlapRelation8_sourceCombination_row276]
  unfold tropicalOverlapSourceCombination8Row276
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row276,
    tropicalOverlapSourceJExponent8_replay_row276]

end

end MonochromaticQuantumGraphs.N8D3

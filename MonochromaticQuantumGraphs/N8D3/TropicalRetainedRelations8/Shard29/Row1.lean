import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 146. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 146. -/
def tropicalOverlapProvenance8Row146 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 46, coordinateB := 87, sourceJ := 54, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 146. -/
def tropicalOverlapRelation8Row146 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row146 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 103 138,
  tropicalOverlapDegreeFiveExponent8 1 64 87 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row146 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 106 138,
  tropicalOverlapDegreeFiveExponent8 1 64 86 114 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 146. -/
theorem tropicalOverlapSourceIExponent8_replay_row146 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row146.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row146.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row146 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 146. -/
theorem tropicalOverlapSourceJExponent8_replay_row146 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row146.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row146.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row146 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row146 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row146.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row146 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row146 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row146 :
    tropicalOverlapRelation8Row146 =
      tropicalOverlapSourceCombination8Row146 := by
  simp [tropicalOverlapRelation8Row146,
    tropicalOverlapSourceCombination8Row146,
    tropicalOverlapProvenance8Row146,
    tropicalOverlapSourceIExponent8Row146,
    tropicalOverlapSourceJExponent8Row146, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 146. -/
theorem tropicalOverlapRelation8_provenance_row146 :
    tropicalOverlapRelation8Row146 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row146 := by
  rw [tropicalOverlapRelation8_sourceCombination_row146]
  unfold tropicalOverlapSourceCombination8Row146
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row146,
    tropicalOverlapSourceJExponent8_replay_row146]

end

end MonochromaticQuantumGraphs.N8D3

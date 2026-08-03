import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 17. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 17. -/
def tropicalOverlapProvenance8Row17 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 3, coordinateB := 142, sourceJ := 163, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 17. -/
def tropicalOverlapRelation8Row17 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row17 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 108 126 142,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 51 88 126 142,
  tropicalOverlapDegreeFiveExponent8 26 51 75 116 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row17 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 109 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 127 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 17. -/
theorem tropicalOverlapSourceIExponent8_replay_row17 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row17.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row17.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row17 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 17. -/
theorem tropicalOverlapSourceJExponent8_replay_row17 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row17.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row17.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row17 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row17 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row17.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row17 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row17 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row17 :
    tropicalOverlapRelation8Row17 =
      tropicalOverlapSourceCombination8Row17 := by
  simp [tropicalOverlapRelation8Row17,
    tropicalOverlapSourceCombination8Row17,
    tropicalOverlapProvenance8Row17,
    tropicalOverlapSourceIExponent8Row17,
    tropicalOverlapSourceJExponent8Row17, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 17. -/
theorem tropicalOverlapRelation8_provenance_row17 :
    tropicalOverlapRelation8Row17 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row17 := by
  rw [tropicalOverlapRelation8_sourceCombination_row17]
  unfold tropicalOverlapSourceCombination8Row17
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row17,
    tropicalOverlapSourceJExponent8_replay_row17]

end

end MonochromaticQuantumGraphs.N8D3

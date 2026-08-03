import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 136. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 136. -/
def tropicalOverlapProvenance8Row136 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 41, coordinateB := 87, sourceJ := 55, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 136. -/
def tropicalOverlapRelation8Row136 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row136 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 87 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 87 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row136 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 106 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 114 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 136. -/
theorem tropicalOverlapSourceIExponent8_replay_row136 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row136.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row136.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row136 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 136. -/
theorem tropicalOverlapSourceJExponent8_replay_row136 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row136.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row136.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row136 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row136 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row136.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row136 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row136 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row136 :
    tropicalOverlapRelation8Row136 =
      tropicalOverlapSourceCombination8Row136 := by
  simp [tropicalOverlapRelation8Row136,
    tropicalOverlapSourceCombination8Row136,
    tropicalOverlapProvenance8Row136,
    tropicalOverlapSourceIExponent8Row136,
    tropicalOverlapSourceJExponent8Row136, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 136. -/
theorem tropicalOverlapRelation8_provenance_row136 :
    tropicalOverlapRelation8Row136 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row136 := by
  rw [tropicalOverlapRelation8_sourceCombination_row136]
  unfold tropicalOverlapSourceCombination8Row136
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row136,
    tropicalOverlapSourceJExponent8_replay_row136]

end

end MonochromaticQuantumGraphs.N8D3

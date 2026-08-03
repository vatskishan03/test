import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 113. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 113. -/
def tropicalOverlapProvenance8Row113 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 35, coordinateB := 141, sourceJ := 95, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 113. -/
def tropicalOverlapRelation8Row113 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row113 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 87 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 76 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row113 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 87 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 76 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 113. -/
theorem tropicalOverlapSourceIExponent8_replay_row113 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row113.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row113.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row113 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 113. -/
theorem tropicalOverlapSourceJExponent8_replay_row113 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row113.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row113.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row113 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row113 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row113.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row113 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row113 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row113 :
    tropicalOverlapRelation8Row113 =
      tropicalOverlapSourceCombination8Row113 := by
  simp [tropicalOverlapRelation8Row113,
    tropicalOverlapSourceCombination8Row113,
    tropicalOverlapProvenance8Row113,
    tropicalOverlapSourceIExponent8Row113,
    tropicalOverlapSourceJExponent8Row113, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 113. -/
theorem tropicalOverlapRelation8_provenance_row113 :
    tropicalOverlapRelation8Row113 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row113 := by
  rw [tropicalOverlapRelation8_sourceCombination_row113]
  unfold tropicalOverlapSourceCombination8Row113
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row113,
    tropicalOverlapSourceJExponent8_replay_row113]

end

end MonochromaticQuantumGraphs.N8D3

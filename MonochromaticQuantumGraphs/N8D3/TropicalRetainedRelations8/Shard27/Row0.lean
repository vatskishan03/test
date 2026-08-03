import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 135. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 135. -/
def tropicalOverlapProvenance8Row135 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 41, coordinateB := 89, sourceJ := 51, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 135. -/
def tropicalOverlapRelation8Row135 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row135 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 89 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 89 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row135 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 103 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 111 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 89 132,
  tropicalOverlapDegreeFiveExponent8 26 51 77 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 135. -/
theorem tropicalOverlapSourceIExponent8_replay_row135 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row135.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row135.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row135 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 135. -/
theorem tropicalOverlapSourceJExponent8_replay_row135 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row135.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row135.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row135 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row135 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row135.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row135 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row135 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row135 :
    tropicalOverlapRelation8Row135 =
      tropicalOverlapSourceCombination8Row135 := by
  simp [tropicalOverlapRelation8Row135,
    tropicalOverlapSourceCombination8Row135,
    tropicalOverlapProvenance8Row135,
    tropicalOverlapSourceIExponent8Row135,
    tropicalOverlapSourceJExponent8Row135, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 135. -/
theorem tropicalOverlapRelation8_provenance_row135 :
    tropicalOverlapRelation8Row135 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row135 := by
  rw [tropicalOverlapRelation8_sourceCombination_row135]
  unfold tropicalOverlapSourceCombination8Row135
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row135,
    tropicalOverlapSourceJExponent8_replay_row135]

end

end MonochromaticQuantumGraphs.N8D3

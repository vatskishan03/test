import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 133. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 133. -/
def tropicalOverlapProvenance8Row133 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 41, coordinateB := 88, sourceJ := 43, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 133. -/
def tropicalOverlapRelation8Row133 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row133 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 88 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row133 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 100 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 132,
  tropicalOverlapDegreeFiveExponent8 26 51 77 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 133. -/
theorem tropicalOverlapSourceIExponent8_replay_row133 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row133.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row133.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row133 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 133. -/
theorem tropicalOverlapSourceJExponent8_replay_row133 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row133.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row133.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row133 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row133 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row133.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row133 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row133 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row133 :
    tropicalOverlapRelation8Row133 =
      tropicalOverlapSourceCombination8Row133 := by
  simp [tropicalOverlapRelation8Row133,
    tropicalOverlapSourceCombination8Row133,
    tropicalOverlapProvenance8Row133,
    tropicalOverlapSourceIExponent8Row133,
    tropicalOverlapSourceJExponent8Row133, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 133. -/
theorem tropicalOverlapRelation8_provenance_row133 :
    tropicalOverlapRelation8Row133 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row133 := by
  rw [tropicalOverlapRelation8_sourceCombination_row133]
  unfold tropicalOverlapSourceCombination8Row133
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row133,
    tropicalOverlapSourceJExponent8_replay_row133]

end

end MonochromaticQuantumGraphs.N8D3

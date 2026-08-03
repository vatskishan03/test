import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 11. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 11. -/
def tropicalOverlapProvenance8Row11 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 1, coordinateB := 90, sourceJ := 19, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 11. -/
def tropicalOverlapRelation8Row11 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row11 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 90 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row11 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 104 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 114 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 126,
  tropicalOverlapDegreeFiveExponent8 26 51 75 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 11. -/
theorem tropicalOverlapSourceIExponent8_replay_row11 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row11.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row11.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row11 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 11. -/
theorem tropicalOverlapSourceJExponent8_replay_row11 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row11.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row11.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row11 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row11 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row11.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row11 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row11 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row11 :
    tropicalOverlapRelation8Row11 =
      tropicalOverlapSourceCombination8Row11 := by
  simp [tropicalOverlapRelation8Row11,
    tropicalOverlapSourceCombination8Row11,
    tropicalOverlapProvenance8Row11,
    tropicalOverlapSourceIExponent8Row11,
    tropicalOverlapSourceJExponent8Row11, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 11. -/
theorem tropicalOverlapRelation8_provenance_row11 :
    tropicalOverlapRelation8Row11 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row11 := by
  rw [tropicalOverlapRelation8_sourceCombination_row11]
  unfold tropicalOverlapSourceCombination8Row11
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row11,
    tropicalOverlapSourceJExponent8_replay_row11]

end

end MonochromaticQuantumGraphs.N8D3

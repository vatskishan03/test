import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 80. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 80. -/
def tropicalOverlapProvenance8Row80 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 23, coordinateB := 139, sourceJ := 123, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 80. -/
def tropicalOverlapRelation8Row80 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row80 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 99 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 129 139,
  tropicalOverlapDegreeFiveExponent8 7 76 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 76 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row80 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 99 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 130 138,
  tropicalOverlapDegreeFiveExponent8 7 76 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 76 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 80. -/
theorem tropicalOverlapSourceIExponent8_replay_row80 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row80.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row80.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row80 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 80. -/
theorem tropicalOverlapSourceJExponent8_replay_row80 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row80.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row80.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row80 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row80 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row80.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row80 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row80 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row80 :
    tropicalOverlapRelation8Row80 =
      tropicalOverlapSourceCombination8Row80 := by
  simp [tropicalOverlapRelation8Row80,
    tropicalOverlapSourceCombination8Row80,
    tropicalOverlapProvenance8Row80,
    tropicalOverlapSourceIExponent8Row80,
    tropicalOverlapSourceJExponent8Row80, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 80. -/
theorem tropicalOverlapRelation8_provenance_row80 :
    tropicalOverlapRelation8Row80 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row80 := by
  rw [tropicalOverlapRelation8_sourceCombination_row80]
  unfold tropicalOverlapSourceCombination8Row80
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row80,
    tropicalOverlapSourceJExponent8_replay_row80]

end

end MonochromaticQuantumGraphs.N8D3

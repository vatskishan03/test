import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 119. -/
def tropicalOverlapProvenance8Row119 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 37, coordinateB := 139, sourceJ := 135, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 119. -/
def tropicalOverlapRelation8Row119 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row119 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 114 129 139,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 90 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 70 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row119 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 114 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 90 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 70 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 119. -/
theorem tropicalOverlapSourceIExponent8_replay_row119 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row119.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row119.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row119 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 119. -/
theorem tropicalOverlapSourceJExponent8_replay_row119 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row119.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row119.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row119 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row119 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row119.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row119 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row119 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row119 :
    tropicalOverlapRelation8Row119 =
      tropicalOverlapSourceCombination8Row119 := by
  simp [tropicalOverlapRelation8Row119,
    tropicalOverlapSourceCombination8Row119,
    tropicalOverlapProvenance8Row119,
    tropicalOverlapSourceIExponent8Row119,
    tropicalOverlapSourceJExponent8Row119, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 119. -/
theorem tropicalOverlapRelation8_provenance_row119 :
    tropicalOverlapRelation8Row119 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row119 := by
  rw [tropicalOverlapRelation8_sourceCombination_row119]
  unfold tropicalOverlapSourceCombination8Row119
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row119,
    tropicalOverlapSourceJExponent8_replay_row119]

end

end MonochromaticQuantumGraphs.N8D3

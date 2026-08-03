import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 106. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 106. -/
def tropicalOverlapProvenance8Row106 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 31, coordinateB := 139, sourceJ := 131, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 106. -/
def tropicalOverlapRelation8Row106 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row106 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 129 139,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 76 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row106 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 130 138,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 76 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 106. -/
theorem tropicalOverlapSourceIExponent8_replay_row106 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row106.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row106.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row106 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 106. -/
theorem tropicalOverlapSourceJExponent8_replay_row106 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row106.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row106.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row106 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row106 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row106.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row106 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row106 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row106 :
    tropicalOverlapRelation8Row106 =
      tropicalOverlapSourceCombination8Row106 := by
  simp [tropicalOverlapRelation8Row106,
    tropicalOverlapSourceCombination8Row106,
    tropicalOverlapProvenance8Row106,
    tropicalOverlapSourceIExponent8Row106,
    tropicalOverlapSourceJExponent8Row106, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 106. -/
theorem tropicalOverlapRelation8_provenance_row106 :
    tropicalOverlapRelation8Row106 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row106 := by
  rw [tropicalOverlapRelation8_sourceCombination_row106]
  unfold tropicalOverlapSourceCombination8Row106
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row106,
    tropicalOverlapSourceJExponent8_replay_row106]

end

end MonochromaticQuantumGraphs.N8D3

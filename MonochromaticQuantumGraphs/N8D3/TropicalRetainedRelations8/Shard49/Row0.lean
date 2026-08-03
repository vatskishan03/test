import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 245. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 245. -/
def tropicalOverlapProvenance8Row245 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 117, coordinateB := 142, sourceJ := 177, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 245. -/
def tropicalOverlapRelation8Row245 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row245 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 114 127 142,
  tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 75 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row245 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 115 127 139,
  tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 75 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 245. -/
theorem tropicalOverlapSourceIExponent8_replay_row245 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row245.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row245.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row245 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 245. -/
theorem tropicalOverlapSourceJExponent8_replay_row245 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row245.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row245.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row245 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row245 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row245.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row245 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row245 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row245 :
    tropicalOverlapRelation8Row245 =
      tropicalOverlapSourceCombination8Row245 := by
  simp [tropicalOverlapRelation8Row245,
    tropicalOverlapSourceCombination8Row245,
    tropicalOverlapProvenance8Row245,
    tropicalOverlapSourceIExponent8Row245,
    tropicalOverlapSourceJExponent8Row245, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 245. -/
theorem tropicalOverlapRelation8_provenance_row245 :
    tropicalOverlapRelation8Row245 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row245 := by
  rw [tropicalOverlapRelation8_sourceCombination_row245]
  unfold tropicalOverlapSourceCombination8Row245
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row245,
    tropicalOverlapSourceJExponent8_replay_row245]

end

end MonochromaticQuantumGraphs.N8D3

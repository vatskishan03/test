import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 54. -/
def tropicalOverlapProvenance8Row54 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 17, coordinateB := 141, sourceJ := 77, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 54. -/
def tropicalOverlapRelation8Row54 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row54 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 114 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 69 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row54 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 115 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 54. -/
theorem tropicalOverlapSourceIExponent8_replay_row54 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row54.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row54.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row54 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 54. -/
theorem tropicalOverlapSourceJExponent8_replay_row54 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row54.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row54.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row54 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row54 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row54.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row54 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row54 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row54 :
    tropicalOverlapRelation8Row54 =
      tropicalOverlapSourceCombination8Row54 := by
  simp [tropicalOverlapRelation8Row54,
    tropicalOverlapSourceCombination8Row54,
    tropicalOverlapProvenance8Row54,
    tropicalOverlapSourceIExponent8Row54,
    tropicalOverlapSourceJExponent8Row54, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 54. -/
theorem tropicalOverlapRelation8_provenance_row54 :
    tropicalOverlapRelation8Row54 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row54 := by
  rw [tropicalOverlapRelation8_sourceCombination_row54]
  unfold tropicalOverlapSourceCombination8Row54
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row54,
    tropicalOverlapSourceJExponent8_replay_row54]

end

end MonochromaticQuantumGraphs.N8D3

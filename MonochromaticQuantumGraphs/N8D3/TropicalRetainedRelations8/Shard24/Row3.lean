import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 123. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 123. -/
def tropicalOverlapProvenance8Row123 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 38, coordinateB := 139, sourceJ := 138, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 123. -/
def tropicalOverlapRelation8Row123 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row123 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 129 139,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 76 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row123 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 76 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 123. -/
theorem tropicalOverlapSourceIExponent8_replay_row123 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row123.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row123.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row123 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 123. -/
theorem tropicalOverlapSourceJExponent8_replay_row123 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row123.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row123.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row123 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row123 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row123.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row123 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row123 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row123 :
    tropicalOverlapRelation8Row123 =
      tropicalOverlapSourceCombination8Row123 := by
  simp [tropicalOverlapRelation8Row123,
    tropicalOverlapSourceCombination8Row123,
    tropicalOverlapProvenance8Row123,
    tropicalOverlapSourceIExponent8Row123,
    tropicalOverlapSourceJExponent8Row123, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 123. -/
theorem tropicalOverlapRelation8_provenance_row123 :
    tropicalOverlapRelation8Row123 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row123 := by
  rw [tropicalOverlapRelation8_sourceCombination_row123]
  unfold tropicalOverlapSourceCombination8Row123
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row123,
    tropicalOverlapSourceJExponent8_replay_row123]

end

end MonochromaticQuantumGraphs.N8D3

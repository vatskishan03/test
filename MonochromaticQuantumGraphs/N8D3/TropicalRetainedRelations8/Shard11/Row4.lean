import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 59. -/
def tropicalOverlapProvenance8Row59 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 139, sourceJ := 118, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 59. -/
def tropicalOverlapRelation8Row59 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row59 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 139,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 139,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row59 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 127 138,
  tropicalOverlapDegreeFiveExponent8 20 51 75 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 59. -/
theorem tropicalOverlapSourceIExponent8_replay_row59 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row59.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row59.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row59 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 59. -/
theorem tropicalOverlapSourceJExponent8_replay_row59 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row59.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row59.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row59 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row59 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row59.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row59 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row59 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row59 :
    tropicalOverlapRelation8Row59 =
      tropicalOverlapSourceCombination8Row59 := by
  simp [tropicalOverlapRelation8Row59,
    tropicalOverlapSourceCombination8Row59,
    tropicalOverlapProvenance8Row59,
    tropicalOverlapSourceIExponent8Row59,
    tropicalOverlapSourceJExponent8Row59, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 59. -/
theorem tropicalOverlapRelation8_provenance_row59 :
    tropicalOverlapRelation8Row59 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row59 := by
  rw [tropicalOverlapRelation8_sourceCombination_row59]
  unfold tropicalOverlapSourceCombination8Row59
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row59,
    tropicalOverlapSourceJExponent8_replay_row59]

end

end MonochromaticQuantumGraphs.N8D3

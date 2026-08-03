import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 55. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 55. -/
def tropicalOverlapProvenance8Row55 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 17, coordinateB := 139, sourceJ := 115, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 55. -/
def tropicalOverlapRelation8Row55 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row55 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 104 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 114 126 139,
  tropicalOverlapDegreeFiveExponent8 7 69 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 90 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 69 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row55 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 104 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 114 127 138,
  tropicalOverlapDegreeFiveExponent8 7 69 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 90 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 69 123 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 55. -/
theorem tropicalOverlapSourceIExponent8_replay_row55 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row55.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row55.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row55 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 55. -/
theorem tropicalOverlapSourceJExponent8_replay_row55 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row55.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row55.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row55 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row55 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row55.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row55 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row55 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row55 :
    tropicalOverlapRelation8Row55 =
      tropicalOverlapSourceCombination8Row55 := by
  simp [tropicalOverlapRelation8Row55,
    tropicalOverlapSourceCombination8Row55,
    tropicalOverlapProvenance8Row55,
    tropicalOverlapSourceIExponent8Row55,
    tropicalOverlapSourceJExponent8Row55, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 55. -/
theorem tropicalOverlapRelation8_provenance_row55 :
    tropicalOverlapRelation8Row55 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row55 := by
  rw [tropicalOverlapRelation8_sourceCombination_row55]
  unfold tropicalOverlapSourceCombination8Row55
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row55,
    tropicalOverlapSourceJExponent8_replay_row55]

end

end MonochromaticQuantumGraphs.N8D3

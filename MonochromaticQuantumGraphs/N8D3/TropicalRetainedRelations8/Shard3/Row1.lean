import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 16. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 16. -/
def tropicalOverlapProvenance8Row16 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 3, coordinateB := 139, sourceJ := 103, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 16. -/
def tropicalOverlapRelation8Row16 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row16 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 126 139,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 75 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row16 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 75 117 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 16. -/
theorem tropicalOverlapSourceIExponent8_replay_row16 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row16.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row16.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row16 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 16. -/
theorem tropicalOverlapSourceJExponent8_replay_row16 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row16.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row16.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row16 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row16 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row16.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row16 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row16 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row16 :
    tropicalOverlapRelation8Row16 =
      tropicalOverlapSourceCombination8Row16 := by
  simp [tropicalOverlapRelation8Row16,
    tropicalOverlapSourceCombination8Row16,
    tropicalOverlapProvenance8Row16,
    tropicalOverlapSourceIExponent8Row16,
    tropicalOverlapSourceJExponent8Row16, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 16. -/
theorem tropicalOverlapRelation8_provenance_row16 :
    tropicalOverlapRelation8Row16 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row16 := by
  rw [tropicalOverlapRelation8_sourceCombination_row16]
  unfold tropicalOverlapSourceCombination8Row16
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row16,
    tropicalOverlapSourceJExponent8_replay_row16]

end

end MonochromaticQuantumGraphs.N8D3

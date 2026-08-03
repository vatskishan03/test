import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 39. -/
def tropicalOverlapProvenance8Row39 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 10, coordinateB := 139, sourceJ := 110, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 39. -/
def tropicalOverlapRelation8Row39 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row39 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 126 139,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 126 139,
  tropicalOverlapDegreeFiveExponent8 20 51 75 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row39 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 127 138,
  tropicalOverlapDegreeFiveExponent8 20 51 75 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 39. -/
theorem tropicalOverlapSourceIExponent8_replay_row39 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row39.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row39.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row39 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 39. -/
theorem tropicalOverlapSourceJExponent8_replay_row39 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row39.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row39.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row39 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row39 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row39.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row39 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row39 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row39 :
    tropicalOverlapRelation8Row39 =
      tropicalOverlapSourceCombination8Row39 := by
  simp [tropicalOverlapRelation8Row39,
    tropicalOverlapSourceCombination8Row39,
    tropicalOverlapProvenance8Row39,
    tropicalOverlapSourceIExponent8Row39,
    tropicalOverlapSourceJExponent8Row39, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 39. -/
theorem tropicalOverlapRelation8_provenance_row39 :
    tropicalOverlapRelation8Row39 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row39 := by
  rw [tropicalOverlapRelation8_sourceCombination_row39]
  unfold tropicalOverlapSourceCombination8Row39
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row39,
    tropicalOverlapSourceJExponent8_replay_row39]

end

end MonochromaticQuantumGraphs.N8D3

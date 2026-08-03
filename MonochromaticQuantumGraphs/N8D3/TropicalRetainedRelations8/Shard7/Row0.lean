import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 35. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 35. -/
def tropicalOverlapProvenance8Row35 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 9, coordinateB := 139, sourceJ := 107, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 35. -/
def tropicalOverlapRelation8Row35 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row35 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 126 139,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 69 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row35 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 127 138,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 69 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 35. -/
theorem tropicalOverlapSourceIExponent8_replay_row35 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row35.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row35.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row35 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 35. -/
theorem tropicalOverlapSourceJExponent8_replay_row35 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row35.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row35.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row35 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row35 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row35.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row35 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row35 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row35 :
    tropicalOverlapRelation8Row35 =
      tropicalOverlapSourceCombination8Row35 := by
  simp [tropicalOverlapRelation8Row35,
    tropicalOverlapSourceCombination8Row35,
    tropicalOverlapProvenance8Row35,
    tropicalOverlapSourceIExponent8Row35,
    tropicalOverlapSourceJExponent8Row35, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 35. -/
theorem tropicalOverlapRelation8_provenance_row35 :
    tropicalOverlapRelation8Row35 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row35 := by
  rw [tropicalOverlapRelation8_sourceCombination_row35]
  unfold tropicalOverlapSourceCombination8Row35
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row35,
    tropicalOverlapSourceJExponent8_replay_row35]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 9. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 9. -/
def tropicalOverlapProvenance8Row9 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 1, coordinateB := 89, sourceJ := 11, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 9. -/
def tropicalOverlapRelation8Row9 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row9 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 89 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 89 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row9 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 101 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 111 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 89 126,
  tropicalOverlapDegreeFiveExponent8 26 51 75 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 9. -/
theorem tropicalOverlapSourceIExponent8_replay_row9 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row9.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row9.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row9 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 9. -/
theorem tropicalOverlapSourceJExponent8_replay_row9 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row9.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row9.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row9 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row9 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row9.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row9 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row9 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row9 :
    tropicalOverlapRelation8Row9 =
      tropicalOverlapSourceCombination8Row9 := by
  simp [tropicalOverlapRelation8Row9,
    tropicalOverlapSourceCombination8Row9,
    tropicalOverlapProvenance8Row9,
    tropicalOverlapSourceIExponent8Row9,
    tropicalOverlapSourceJExponent8Row9, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 9. -/
theorem tropicalOverlapRelation8_provenance_row9 :
    tropicalOverlapRelation8Row9 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row9 := by
  rw [tropicalOverlapRelation8_sourceCombination_row9]
  unfold tropicalOverlapSourceCombination8Row9
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row9,
    tropicalOverlapSourceJExponent8_replay_row9]

end

end MonochromaticQuantumGraphs.N8D3

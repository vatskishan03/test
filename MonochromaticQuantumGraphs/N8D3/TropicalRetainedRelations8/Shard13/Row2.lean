import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 67. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 67. -/
def tropicalOverlapProvenance8Row67 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 20, coordinateB := 89, sourceJ := 29, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 67. -/
def tropicalOverlapRelation8Row67 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row67 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 89 99 138,
  tropicalOverlapDegreeFiveExponent8 7 58 89 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row67 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 102 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 111 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 89 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 89 129,
  tropicalOverlapDegreeFiveExponent8 26 51 70 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 67. -/
theorem tropicalOverlapSourceIExponent8_replay_row67 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row67.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row67.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row67 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 67. -/
theorem tropicalOverlapSourceJExponent8_replay_row67 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row67.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row67.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row67 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row67 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row67.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row67 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row67 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row67 :
    tropicalOverlapRelation8Row67 =
      tropicalOverlapSourceCombination8Row67 := by
  simp [tropicalOverlapRelation8Row67,
    tropicalOverlapSourceCombination8Row67,
    tropicalOverlapProvenance8Row67,
    tropicalOverlapSourceIExponent8Row67,
    tropicalOverlapSourceJExponent8Row67, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 67. -/
theorem tropicalOverlapRelation8_provenance_row67 :
    tropicalOverlapRelation8Row67 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row67 := by
  rw [tropicalOverlapRelation8_sourceCombination_row67]
  unfold tropicalOverlapSourceCombination8Row67
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row67,
    tropicalOverlapSourceJExponent8_replay_row67]

end

end MonochromaticQuantumGraphs.N8D3

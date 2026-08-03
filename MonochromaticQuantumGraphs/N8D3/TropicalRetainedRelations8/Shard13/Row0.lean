import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 65. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 65. -/
def tropicalOverlapProvenance8Row65 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 20, coordinateB := 88, sourceJ := 22, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 65. -/
def tropicalOverlapRelation8Row65 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row65 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 88 99 138,
  tropicalOverlapDegreeFiveExponent8 7 58 88 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row65 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 99 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 129,
  tropicalOverlapDegreeFiveExponent8 26 51 70 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 65. -/
theorem tropicalOverlapSourceIExponent8_replay_row65 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row65.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row65.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row65 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 65. -/
theorem tropicalOverlapSourceJExponent8_replay_row65 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row65.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row65.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row65 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row65 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row65.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row65 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row65 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row65 :
    tropicalOverlapRelation8Row65 =
      tropicalOverlapSourceCombination8Row65 := by
  simp [tropicalOverlapRelation8Row65,
    tropicalOverlapSourceCombination8Row65,
    tropicalOverlapProvenance8Row65,
    tropicalOverlapSourceIExponent8Row65,
    tropicalOverlapSourceJExponent8Row65, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 65. -/
theorem tropicalOverlapRelation8_provenance_row65 :
    tropicalOverlapRelation8Row65 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row65 := by
  rw [tropicalOverlapRelation8_sourceCombination_row65]
  unfold tropicalOverlapSourceCombination8Row65
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row65,
    tropicalOverlapSourceJExponent8_replay_row65]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 82. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 82. -/
def tropicalOverlapProvenance8Row82 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 24, coordinateB := 7, sourceJ := 25, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 82. -/
def tropicalOverlapRelation8Row82 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row82 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 42 86 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 86 129,
  tropicalOverlapDegreeFiveExponent8 7 19 51 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row82 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 42 86 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 86 129,
  tropicalOverlapDegreeFiveExponent8 1 25 51 70 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 82. -/
theorem tropicalOverlapSourceIExponent8_replay_row82 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row82.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row82.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row82 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 82. -/
theorem tropicalOverlapSourceJExponent8_replay_row82 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row82.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row82.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row82 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row82 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row82.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row82 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row82 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row82 :
    tropicalOverlapRelation8Row82 =
      tropicalOverlapSourceCombination8Row82 := by
  simp [tropicalOverlapRelation8Row82,
    tropicalOverlapSourceCombination8Row82,
    tropicalOverlapProvenance8Row82,
    tropicalOverlapSourceIExponent8Row82,
    tropicalOverlapSourceJExponent8Row82, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 82. -/
theorem tropicalOverlapRelation8_provenance_row82 :
    tropicalOverlapRelation8Row82 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row82 := by
  rw [tropicalOverlapRelation8_sourceCombination_row82]
  unfold tropicalOverlapSourceCombination8Row82
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row82,
    tropicalOverlapSourceJExponent8_replay_row82]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 23. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 23. -/
def tropicalOverlapProvenance8Row23 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 5, coordinateB := 141, sourceJ := 65, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 23. -/
def tropicalOverlapRelation8Row23 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row23 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 86 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 69 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row23 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 86 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 69 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 23. -/
theorem tropicalOverlapSourceIExponent8_replay_row23 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row23.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row23.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row23 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 23. -/
theorem tropicalOverlapSourceJExponent8_replay_row23 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row23.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row23.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row23 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row23 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row23.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row23 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row23 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row23 :
    tropicalOverlapRelation8Row23 =
      tropicalOverlapSourceCombination8Row23 := by
  simp [tropicalOverlapRelation8Row23,
    tropicalOverlapSourceCombination8Row23,
    tropicalOverlapProvenance8Row23,
    tropicalOverlapSourceIExponent8Row23,
    tropicalOverlapSourceJExponent8Row23, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 23. -/
theorem tropicalOverlapRelation8_provenance_row23 :
    tropicalOverlapRelation8Row23 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row23 := by
  rw [tropicalOverlapRelation8_sourceCombination_row23]
  unfold tropicalOverlapSourceCombination8Row23
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row23,
    tropicalOverlapSourceJExponent8_replay_row23]

end

end MonochromaticQuantumGraphs.N8D3

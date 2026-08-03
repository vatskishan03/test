import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 87. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 87. -/
def tropicalOverlapProvenance8Row87 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 25, coordinateB := 141, sourceJ := 85, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 87. -/
def tropicalOverlapRelation8Row87 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 86 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 86 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row87 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 111 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 86 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 70 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row87 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 112 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 86 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 70 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 87. -/
theorem tropicalOverlapSourceIExponent8_replay_row87 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row87.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row87.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row87 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 87. -/
theorem tropicalOverlapSourceJExponent8_replay_row87 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row87.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row87.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row87 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row87 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row87.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row87 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row87 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row87 :
    tropicalOverlapRelation8Row87 =
      tropicalOverlapSourceCombination8Row87 := by
  simp [tropicalOverlapRelation8Row87,
    tropicalOverlapSourceCombination8Row87,
    tropicalOverlapProvenance8Row87,
    tropicalOverlapSourceIExponent8Row87,
    tropicalOverlapSourceJExponent8Row87, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 87. -/
theorem tropicalOverlapRelation8_provenance_row87 :
    tropicalOverlapRelation8Row87 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row87 := by
  rw [tropicalOverlapRelation8_sourceCombination_row87]
  unfold tropicalOverlapSourceCombination8Row87
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row87,
    tropicalOverlapSourceJExponent8_replay_row87]

end

end MonochromaticQuantumGraphs.N8D3

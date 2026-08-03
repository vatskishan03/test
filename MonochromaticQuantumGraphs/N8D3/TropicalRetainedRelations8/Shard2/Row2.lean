import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 12. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 12. -/
def tropicalOverlapProvenance8Row12 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 2, coordinateB := 141, sourceJ := 62, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 12. -/
def tropicalOverlapRelation8Row12 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row12 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 108 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 88 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 69 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row12 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 109 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 88 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 116 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 12. -/
theorem tropicalOverlapSourceIExponent8_replay_row12 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row12.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row12.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row12 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 12. -/
theorem tropicalOverlapSourceJExponent8_replay_row12 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row12.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row12.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row12 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row12 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row12.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row12 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row12 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row12 :
    tropicalOverlapRelation8Row12 =
      tropicalOverlapSourceCombination8Row12 := by
  simp [tropicalOverlapRelation8Row12,
    tropicalOverlapSourceCombination8Row12,
    tropicalOverlapProvenance8Row12,
    tropicalOverlapSourceIExponent8Row12,
    tropicalOverlapSourceJExponent8Row12, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 12. -/
theorem tropicalOverlapRelation8_provenance_row12 :
    tropicalOverlapRelation8Row12 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row12 := by
  rw [tropicalOverlapRelation8_sourceCombination_row12]
  unfold tropicalOverlapSourceCombination8Row12
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row12,
    tropicalOverlapSourceJExponent8_replay_row12]

end

end MonochromaticQuantumGraphs.N8D3

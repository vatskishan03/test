import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 79. -/
def tropicalOverlapProvenance8Row79 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 23, coordinateB := 141, sourceJ := 83, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 79. -/
def tropicalOverlapRelation8Row79 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row79 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 108 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 88 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 76 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row79 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 109 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 88 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 76 116 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 79. -/
theorem tropicalOverlapSourceIExponent8_replay_row79 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row79.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row79.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row79 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 79. -/
theorem tropicalOverlapSourceJExponent8_replay_row79 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row79.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row79.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row79 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row79 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row79.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row79 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row79 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row79 :
    tropicalOverlapRelation8Row79 =
      tropicalOverlapSourceCombination8Row79 := by
  simp [tropicalOverlapRelation8Row79,
    tropicalOverlapSourceCombination8Row79,
    tropicalOverlapProvenance8Row79,
    tropicalOverlapSourceIExponent8Row79,
    tropicalOverlapSourceJExponent8Row79, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 79. -/
theorem tropicalOverlapRelation8_provenance_row79 :
    tropicalOverlapRelation8Row79 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row79 := by
  rw [tropicalOverlapRelation8_sourceCombination_row79]
  unfold tropicalOverlapSourceCombination8Row79
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row79,
    tropicalOverlapSourceJExponent8_replay_row79]

end

end MonochromaticQuantumGraphs.N8D3

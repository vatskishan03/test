import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 34. -/
def tropicalOverlapProvenance8Row34 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 9, coordinateB := 141, sourceJ := 69, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 34. -/
def tropicalOverlapRelation8Row34 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row34 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 89 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 69 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row34 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 89 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 34. -/
theorem tropicalOverlapSourceIExponent8_replay_row34 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row34.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row34.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row34 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 34. -/
theorem tropicalOverlapSourceJExponent8_replay_row34 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row34.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row34.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row34 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row34 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row34.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row34 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row34 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row34 :
    tropicalOverlapRelation8Row34 =
      tropicalOverlapSourceCombination8Row34 := by
  simp [tropicalOverlapRelation8Row34,
    tropicalOverlapSourceCombination8Row34,
    tropicalOverlapProvenance8Row34,
    tropicalOverlapSourceIExponent8Row34,
    tropicalOverlapSourceJExponent8Row34, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 34. -/
theorem tropicalOverlapRelation8_provenance_row34 :
    tropicalOverlapRelation8Row34 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row34 := by
  rw [tropicalOverlapRelation8_sourceCombination_row34]
  unfold tropicalOverlapSourceCombination8Row34
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row34,
    tropicalOverlapSourceJExponent8_replay_row34]

end

end MonochromaticQuantumGraphs.N8D3

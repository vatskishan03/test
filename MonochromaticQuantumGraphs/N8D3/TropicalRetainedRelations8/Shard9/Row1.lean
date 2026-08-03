import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 46. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 46. -/
def tropicalOverlapProvenance8Row46 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 13, coordinateB := 141, sourceJ := 73, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 46. -/
def tropicalOverlapRelation8Row46 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row46 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 114 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 87 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 69 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row46 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 115 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 87 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 69 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 46. -/
theorem tropicalOverlapSourceIExponent8_replay_row46 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row46.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row46.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row46 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 46. -/
theorem tropicalOverlapSourceJExponent8_replay_row46 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row46.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row46.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row46 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row46 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row46.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row46 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row46 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row46 :
    tropicalOverlapRelation8Row46 =
      tropicalOverlapSourceCombination8Row46 := by
  simp [tropicalOverlapRelation8Row46,
    tropicalOverlapSourceCombination8Row46,
    tropicalOverlapProvenance8Row46,
    tropicalOverlapSourceIExponent8Row46,
    tropicalOverlapSourceJExponent8Row46, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 46. -/
theorem tropicalOverlapRelation8_provenance_row46 :
    tropicalOverlapRelation8Row46 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row46 := by
  rw [tropicalOverlapRelation8_sourceCombination_row46]
  unfold tropicalOverlapSourceCombination8Row46
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row46,
    tropicalOverlapSourceJExponent8_replay_row46]

end

end MonochromaticQuantumGraphs.N8D3

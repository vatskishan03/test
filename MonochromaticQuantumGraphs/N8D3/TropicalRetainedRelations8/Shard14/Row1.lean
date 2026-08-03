import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 71. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 71. -/
def tropicalOverlapProvenance8Row71 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 21, coordinateB := 88, sourceJ := 23, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 71. -/
def tropicalOverlapRelation8Row71 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row71 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 99 138,
  tropicalOverlapDegreeFiveExponent8 7 64 88 108 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row71 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 99 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 108 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 129,
  tropicalOverlapDegreeFiveExponent8 26 51 76 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 71. -/
theorem tropicalOverlapSourceIExponent8_replay_row71 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row71.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row71.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row71 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 71. -/
theorem tropicalOverlapSourceJExponent8_replay_row71 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row71.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row71.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row71 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row71 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row71.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row71 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row71 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row71 :
    tropicalOverlapRelation8Row71 =
      tropicalOverlapSourceCombination8Row71 := by
  simp [tropicalOverlapRelation8Row71,
    tropicalOverlapSourceCombination8Row71,
    tropicalOverlapProvenance8Row71,
    tropicalOverlapSourceIExponent8Row71,
    tropicalOverlapSourceJExponent8Row71, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 71. -/
theorem tropicalOverlapRelation8_provenance_row71 :
    tropicalOverlapRelation8Row71 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row71 := by
  rw [tropicalOverlapRelation8_sourceCombination_row71]
  unfold tropicalOverlapSourceCombination8Row71
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row71,
    tropicalOverlapSourceJExponent8_replay_row71]

end

end MonochromaticQuantumGraphs.N8D3

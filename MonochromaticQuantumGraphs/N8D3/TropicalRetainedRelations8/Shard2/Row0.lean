import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 10. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 10. -/
def tropicalOverlapProvenance8Row10 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 1, coordinateB := 87, sourceJ := 15, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 10. -/
def tropicalOverlapRelation8Row10 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row10 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 87 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 87 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row10 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 104 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 114 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 10. -/
theorem tropicalOverlapSourceIExponent8_replay_row10 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row10.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row10.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row10 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 10. -/
theorem tropicalOverlapSourceJExponent8_replay_row10 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row10.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row10.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row10 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row10 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row10.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row10 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row10 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row10 :
    tropicalOverlapRelation8Row10 =
      tropicalOverlapSourceCombination8Row10 := by
  simp [tropicalOverlapRelation8Row10,
    tropicalOverlapSourceCombination8Row10,
    tropicalOverlapProvenance8Row10,
    tropicalOverlapSourceIExponent8Row10,
    tropicalOverlapSourceJExponent8Row10, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 10. -/
theorem tropicalOverlapRelation8_provenance_row10 :
    tropicalOverlapRelation8Row10 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row10 := by
  rw [tropicalOverlapRelation8_sourceCombination_row10]
  unfold tropicalOverlapSourceCombination8Row10
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row10,
    tropicalOverlapSourceJExponent8_replay_row10]

end

end MonochromaticQuantumGraphs.N8D3

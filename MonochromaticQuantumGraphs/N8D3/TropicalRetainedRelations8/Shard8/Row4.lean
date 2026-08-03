import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 44. -/
def tropicalOverlapProvenance8Row44 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 12, coordinateB := 7, sourceJ := 13, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 44. -/
def tropicalOverlapRelation8Row44 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row44 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 41 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 87 126,
  tropicalOverlapDegreeFiveExponent8 7 19 51 69 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row44 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 41 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 87 126,
  tropicalOverlapDegreeFiveExponent8 1 25 51 69 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 44. -/
theorem tropicalOverlapSourceIExponent8_replay_row44 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row44.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row44.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row44 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 44. -/
theorem tropicalOverlapSourceJExponent8_replay_row44 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row44.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row44.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row44 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row44 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row44.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row44 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row44 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row44 :
    tropicalOverlapRelation8Row44 =
      tropicalOverlapSourceCombination8Row44 := by
  simp [tropicalOverlapRelation8Row44,
    tropicalOverlapSourceCombination8Row44,
    tropicalOverlapProvenance8Row44,
    tropicalOverlapSourceIExponent8Row44,
    tropicalOverlapSourceJExponent8Row44, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 44. -/
theorem tropicalOverlapRelation8_provenance_row44 :
    tropicalOverlapRelation8Row44 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row44 := by
  rw [tropicalOverlapRelation8_sourceCombination_row44]
  unfold tropicalOverlapSourceCombination8Row44
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row44,
    tropicalOverlapSourceJExponent8_replay_row44]

end

end MonochromaticQuantumGraphs.N8D3

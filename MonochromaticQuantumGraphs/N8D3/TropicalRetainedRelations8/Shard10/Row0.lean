import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 50. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 50. -/
def tropicalOverlapProvenance8Row50 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 16, coordinateB := 7, sourceJ := 17, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 50. -/
def tropicalOverlapRelation8Row50 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row50 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 90 138,
  tropicalOverlapDegreeFiveExponent8 7 9 41 90 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 90 126,
  tropicalOverlapDegreeFiveExponent8 7 20 51 69 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row50 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 90 138,
  tropicalOverlapDegreeFiveExponent8 1 15 41 90 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 90 126,
  tropicalOverlapDegreeFiveExponent8 1 26 51 69 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 50. -/
theorem tropicalOverlapSourceIExponent8_replay_row50 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row50.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row50.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row50 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 50. -/
theorem tropicalOverlapSourceJExponent8_replay_row50 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row50.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row50.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row50 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row50 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row50.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row50 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row50 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row50 :
    tropicalOverlapRelation8Row50 =
      tropicalOverlapSourceCombination8Row50 := by
  simp [tropicalOverlapRelation8Row50,
    tropicalOverlapSourceCombination8Row50,
    tropicalOverlapProvenance8Row50,
    tropicalOverlapSourceIExponent8Row50,
    tropicalOverlapSourceJExponent8Row50, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 50. -/
theorem tropicalOverlapRelation8_provenance_row50 :
    tropicalOverlapRelation8Row50 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row50 := by
  rw [tropicalOverlapRelation8_sourceCombination_row50]
  unfold tropicalOverlapSourceCombination8Row50
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row50,
    tropicalOverlapSourceJExponent8_replay_row50]

end

end MonochromaticQuantumGraphs.N8D3

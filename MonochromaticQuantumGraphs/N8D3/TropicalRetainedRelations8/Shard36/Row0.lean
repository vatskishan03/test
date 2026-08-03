import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 180. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 180. -/
def tropicalOverlapProvenance8Row180 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 68, coordinateB := 7, sourceJ := 69, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 180. -/
def tropicalOverlapRelation8Row180 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row180 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 41 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 89 126,
  tropicalOverlapDegreeFiveExponent8 7 20 52 69 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row180 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 41 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 89 126,
  tropicalOverlapDegreeFiveExponent8 1 26 52 69 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 180. -/
theorem tropicalOverlapSourceIExponent8_replay_row180 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row180.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row180.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row180 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 180. -/
theorem tropicalOverlapSourceJExponent8_replay_row180 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row180.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row180.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row180 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row180 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row180.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row180 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row180 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row180 :
    tropicalOverlapRelation8Row180 =
      tropicalOverlapSourceCombination8Row180 := by
  simp [tropicalOverlapRelation8Row180,
    tropicalOverlapSourceCombination8Row180,
    tropicalOverlapProvenance8Row180,
    tropicalOverlapSourceIExponent8Row180,
    tropicalOverlapSourceJExponent8Row180, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 180. -/
theorem tropicalOverlapRelation8_provenance_row180 :
    tropicalOverlapRelation8Row180 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row180 := by
  rw [tropicalOverlapRelation8_sourceCombination_row180]
  unfold tropicalOverlapSourceCombination8Row180
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row180,
    tropicalOverlapSourceJExponent8_replay_row180]

end

end MonochromaticQuantumGraphs.N8D3

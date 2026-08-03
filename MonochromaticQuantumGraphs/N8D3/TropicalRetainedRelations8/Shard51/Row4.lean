import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 259. -/
def tropicalOverlapProvenance8Row259 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 1, sourceJ := 126, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 259. -/
def tropicalOverlapRelation8Row259 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row259 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 39 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 89 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row259 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 42 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 89 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 70 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 259. -/
theorem tropicalOverlapSourceIExponent8_replay_row259 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row259.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row259.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row259 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 259. -/
theorem tropicalOverlapSourceJExponent8_replay_row259 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row259.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row259.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row259 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row259 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row259.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row259 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row259 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row259 :
    tropicalOverlapRelation8Row259 =
      tropicalOverlapSourceCombination8Row259 := by
  simp [tropicalOverlapRelation8Row259,
    tropicalOverlapSourceCombination8Row259,
    tropicalOverlapProvenance8Row259,
    tropicalOverlapSourceIExponent8Row259,
    tropicalOverlapSourceJExponent8Row259, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 259. -/
theorem tropicalOverlapRelation8_provenance_row259 :
    tropicalOverlapRelation8Row259 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row259 := by
  rw [tropicalOverlapRelation8_sourceCombination_row259]
  unfold tropicalOverlapSourceCombination8Row259
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row259,
    tropicalOverlapSourceJExponent8_replay_row259]

end

end MonochromaticQuantumGraphs.N8D3

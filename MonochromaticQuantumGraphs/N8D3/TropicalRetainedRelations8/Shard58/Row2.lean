import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 292. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 292. -/
def tropicalOverlapProvenance8Row292 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 144, coordinateB := 6, sourceJ := 145, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 292. -/
def tropicalOverlapRelation8Row292 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row292 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 40 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 71 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row292 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 40 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 71 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 292. -/
theorem tropicalOverlapSourceIExponent8_replay_row292 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row292.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row292.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row292 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 292. -/
theorem tropicalOverlapSourceJExponent8_replay_row292 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row292.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row292.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row292 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row292 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row292.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row292 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row292 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row292 :
    tropicalOverlapRelation8Row292 =
      tropicalOverlapSourceCombination8Row292 := by
  simp [tropicalOverlapRelation8Row292,
    tropicalOverlapSourceCombination8Row292,
    tropicalOverlapProvenance8Row292,
    tropicalOverlapSourceIExponent8Row292,
    tropicalOverlapSourceJExponent8Row292, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 292. -/
theorem tropicalOverlapRelation8_provenance_row292 :
    tropicalOverlapRelation8Row292 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row292 := by
  rw [tropicalOverlapRelation8_sourceCombination_row292]
  unfold tropicalOverlapSourceCombination8Row292
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row292,
    tropicalOverlapSourceJExponent8_replay_row292]

end

end MonochromaticQuantumGraphs.N8D3

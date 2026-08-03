import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 243. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 243. -/
def tropicalOverlapProvenance8Row243 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 116, coordinateB := 7, sourceJ := 119, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 243. -/
def tropicalOverlapRelation8Row243 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 75 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row243 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 104 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 127,
  tropicalOverlapDegreeFiveExponent8 0 7 75 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 38 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 90 127,
  tropicalOverlapDegreeFiveExponent8 7 20 48 75 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row243 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 104 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 127,
  tropicalOverlapDegreeFiveExponent8 0 7 75 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 41 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 51 75 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 243. -/
theorem tropicalOverlapSourceIExponent8_replay_row243 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row243.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row243.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row243 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 243. -/
theorem tropicalOverlapSourceJExponent8_replay_row243 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row243.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row243.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row243 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row243 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row243.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row243 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row243 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row243 :
    tropicalOverlapRelation8Row243 =
      tropicalOverlapSourceCombination8Row243 := by
  simp [tropicalOverlapRelation8Row243,
    tropicalOverlapSourceCombination8Row243,
    tropicalOverlapProvenance8Row243,
    tropicalOverlapSourceIExponent8Row243,
    tropicalOverlapSourceJExponent8Row243, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 243. -/
theorem tropicalOverlapRelation8_provenance_row243 :
    tropicalOverlapRelation8Row243 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row243 := by
  rw [tropicalOverlapRelation8_sourceCombination_row243]
  unfold tropicalOverlapSourceCombination8Row243
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row243,
    tropicalOverlapSourceJExponent8_replay_row243]

end

end MonochromaticQuantumGraphs.N8D3

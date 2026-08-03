import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 326. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 326. -/
def tropicalOverlapProvenance8Row326 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 168, coordinateB := 90, sourceJ := 176, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 326. -/
def tropicalOverlapRelation8Row326 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row326 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 90 101 142,
  tropicalOverlapDegreeFiveExponent8 0 65 90 112 127,
  tropicalOverlapDegreeFiveExponent8 0 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 49 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 49 75 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row326 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 89 104 142,
  tropicalOverlapDegreeFiveExponent8 0 65 89 115 127,
  tropicalOverlapDegreeFiveExponent8 0 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 49 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 49 75 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 326. -/
theorem tropicalOverlapSourceIExponent8_replay_row326 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row326.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row326.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row326 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 326. -/
theorem tropicalOverlapSourceJExponent8_replay_row326 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row326.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row326.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row326 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row326 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row326.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row326 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row326 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row326 :
    tropicalOverlapRelation8Row326 =
      tropicalOverlapSourceCombination8Row326 := by
  simp [tropicalOverlapRelation8Row326,
    tropicalOverlapSourceCombination8Row326,
    tropicalOverlapProvenance8Row326,
    tropicalOverlapSourceIExponent8Row326,
    tropicalOverlapSourceJExponent8Row326, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 326. -/
theorem tropicalOverlapRelation8_provenance_row326 :
    tropicalOverlapRelation8Row326 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row326 := by
  rw [tropicalOverlapRelation8_sourceCombination_row326]
  unfold tropicalOverlapSourceCombination8Row326
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row326,
    tropicalOverlapSourceJExponent8_replay_row326]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 325. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 325. -/
def tropicalOverlapProvenance8Row325 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 168, coordinateB := 7, sourceJ := 171, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 325. -/
def tropicalOverlapRelation8Row325 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 75 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row325 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 75 89 142,
  tropicalOverlapDegreeFiveExponent8 7 11 38 89 142,
  tropicalOverlapDegreeFiveExponent8 7 11 49 89 127,
  tropicalOverlapDegreeFiveExponent8 7 20 49 75 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row325 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 75 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 41 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 52 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 52 75 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 325. -/
theorem tropicalOverlapSourceIExponent8_replay_row325 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row325.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row325.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row325 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 325. -/
theorem tropicalOverlapSourceJExponent8_replay_row325 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row325.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row325.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row325 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row325 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row325.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row325 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row325 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row325 :
    tropicalOverlapRelation8Row325 =
      tropicalOverlapSourceCombination8Row325 := by
  simp [tropicalOverlapRelation8Row325,
    tropicalOverlapSourceCombination8Row325,
    tropicalOverlapProvenance8Row325,
    tropicalOverlapSourceIExponent8Row325,
    tropicalOverlapSourceJExponent8Row325, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 325. -/
theorem tropicalOverlapRelation8_provenance_row325 :
    tropicalOverlapRelation8Row325 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row325 := by
  rw [tropicalOverlapRelation8_sourceCombination_row325]
  unfold tropicalOverlapSourceCombination8Row325
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row325,
    tropicalOverlapSourceJExponent8_replay_row325]

end

end MonochromaticQuantumGraphs.N8D3

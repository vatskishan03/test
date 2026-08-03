import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 322. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 322. -/
def tropicalOverlapProvenance8Row322 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 166, coordinateB := 90, sourceJ := 174, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 322. -/
def tropicalOverlapRelation8Row322 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row322 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 101 142,
  tropicalOverlapDegreeFiveExponent8 1 59 90 112 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 69 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row322 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 104 142,
  tropicalOverlapDegreeFiveExponent8 1 59 89 115 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 69 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 322. -/
theorem tropicalOverlapSourceIExponent8_replay_row322 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row322.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row322.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row322 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 322. -/
theorem tropicalOverlapSourceJExponent8_replay_row322 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row322.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row322.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row322 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row322 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row322.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row322 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row322 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row322 :
    tropicalOverlapRelation8Row322 =
      tropicalOverlapSourceCombination8Row322 := by
  simp [tropicalOverlapRelation8Row322,
    tropicalOverlapSourceCombination8Row322,
    tropicalOverlapProvenance8Row322,
    tropicalOverlapSourceIExponent8Row322,
    tropicalOverlapSourceJExponent8Row322, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 322. -/
theorem tropicalOverlapRelation8_provenance_row322 :
    tropicalOverlapRelation8Row322 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row322 := by
  rw [tropicalOverlapRelation8_sourceCombination_row322]
  unfold tropicalOverlapSourceCombination8Row322
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row322,
    tropicalOverlapSourceJExponent8_replay_row322]

end

end MonochromaticQuantumGraphs.N8D3

import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 329. -/
def tropicalOverlapProvenance8Row329 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 172, coordinateB := 1, sourceJ := 174, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 329. -/
def tropicalOverlapRelation8Row329 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row329 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 38 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 49 90 127,
  tropicalOverlapDegreeFiveExponent8 1 20 49 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row329 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 41 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 52 90 127,
  tropicalOverlapDegreeFiveExponent8 0 20 52 69 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 329. -/
theorem tropicalOverlapSourceIExponent8_replay_row329 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row329.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row329.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row329 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 329. -/
theorem tropicalOverlapSourceJExponent8_replay_row329 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row329.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row329.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row329 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row329 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row329.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row329 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row329 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row329 :
    tropicalOverlapRelation8Row329 =
      tropicalOverlapSourceCombination8Row329 := by
  simp [tropicalOverlapRelation8Row329,
    tropicalOverlapSourceCombination8Row329,
    tropicalOverlapProvenance8Row329,
    tropicalOverlapSourceIExponent8Row329,
    tropicalOverlapSourceJExponent8Row329, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 329. -/
theorem tropicalOverlapRelation8_provenance_row329 :
    tropicalOverlapRelation8Row329 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row329 := by
  rw [tropicalOverlapRelation8_sourceCombination_row329]
  unfold tropicalOverlapSourceCombination8Row329
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row329,
    tropicalOverlapSourceJExponent8_replay_row329]

end

end MonochromaticQuantumGraphs.N8D3
